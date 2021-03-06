/******************** (C) COPYRIGHT 2017 Pavel Ruban ********************
 * File Name          : c_entry.c
 * Author             : Pavel Ruban
 * Version            : V1.0
 * Date               : 24/07/2017
 * Description        : Main program body
 ******************************************************************************/

#pragma pack(1)

/* Includes ------------------------------------------------------------------*/

#include <stdint.h>
#include <stdlib.h>

extern "C" {
	#include <stm32f10x_conf.h>
	#include <binds.h>
	#include <string.h>
}

#include <scheduler/include/scheduler.h>
#include <config.h>
#include "uart/uart.h"
#include "lib/cache_handler/cache_handler.h"
#include <stdio.h>
#include <servo.h>

#include "include/queue.h"
#include "lib/array/array.h"

SPI_InitTypeDef SPI_InitStructure;
GPIO_InitTypeDef GPIO_InitStructure;
ErrorStatus HSEStartUpStatus;

volatile uint32_t ticks;

Uart uart(UART1, 115200);
Uart *puart = &uart;

// DC brushed motor controller.
Servo::Servo servo(2000, 40);

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);
void NVIC_Configuration(void);
extern "C" void custom_asm();
void RTC_Configuration();

extern "C" void reset_asm();

void Delay(uint32_t nCount)
{
	for(; nCount != 0; nCount--);
}

char * strstr(char *haystack, const char *needle) {
	if (haystack == NULL || needle == NULL) {
		return NULL;
	}

	for ( ; *haystack; haystack++) {
		const char *h, *n;
		for (h = haystack, n = needle; *h && *n && (*h == *n); ++h, ++n) {
		}
		if (*n == '\0') {
			return haystack;
		}
	}

	return NULL;
}

extern "C" void __initialize_hardware_early()
{
	/* Configure the system clocks */
	RCC_Configuration();

	/* NVIC Configuration */
	NVIC_Configuration();

	/* Set up real time clock */
	RTC_Configuration();
}

void RTC_Configuration()
{
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR, ENABLE);

	PWR_BackupAccessCmd(ENABLE);

	RCC_BackupResetCmd(ENABLE);
	RCC_BackupResetCmd(DISABLE);

	RCC_LSICmd(ENABLE);
	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
	RCC_RTCCLKCmd(ENABLE);

	RCC_LSEConfig(RCC_LSE_ON);
}

void access_denied_signal()
{
	for(;;) {}
}

extern "C" void WRONG_IRQ_EXCEPTION()
{
	while (1) {}
}

extern "C" void EXTI4_IRQHandler()
{
	EXTI_ClearITPendingBit(EXTI_Line4);
}

extern "C" void TIM2_IRQHandler()
{
	TIM_ClearITPendingBit(TIM2, TIM_IT_Update);
}

extern "C" void TIM3_IRQHandler()
{
	if (TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET) {
		TIM_ClearITPendingBit(TIM3, TIM_IT_Update);

		servo.encoder.overflow(TIM_GetCounter(TIM3) > 0xFF);
	}
}

#define COMMAND_SIZE 300
char command[COMMAND_SIZE];

char * strstr_b(char *haystack, const char *needle, uint16_t size)
{
    if (haystack == NULL || needle == NULL) {
        return NULL;
    }

    for (uint16_t passed = 0 ; passed < size; passed++, haystack++) {
        const char *h, *n;
        for (h = haystack, n = needle; *h && *n && (*h == *n); ++h, ++n);

        if (*n == '\0') {
            return haystack;
        }
    }

    return NULL;
}

void parse_command() {
	char buf[30];

	if (strstr_b(command, "motor off", COMMAND_SIZE)) {
		servo.off();
		uart.send("motor was disabled\n\r");
	}
	else if (strstr_b(command, "motor on", COMMAND_SIZE)) {
		servo.on();
		uart.send("motor was enabled\n\r");
	}
	else if (strstr_b(command, "motor cw", COMMAND_SIZE)) {
		servo.dir_cw();
		uart.send("motor direction is clockwise\n\r");
	}
	else if (strstr_b(command, "motor ccw", COMMAND_SIZE)) {
		servo.dir_ccw();
		uart.send("motor direction is counter clockwise\n\r");
	}
	else if (strstr_b(command, "motor resi", COMMAND_SIZE)) {
		servo.position_pid.reset_integral();
		uart.send("motor pid integral was reset\n\r");
	}
	else if (strstr_b(command, "motor geti", COMMAND_SIZE)) {
		sprintf(buf, "motor pid integral is %f\n\r", servo.position_pid.get_integral());
		uart.send(buf);
	}
	else if (strstr_b(command, "motor pwm", COMMAND_SIZE))
	{
	    char int_str[4];

	    // Get number's characters & store it into int_str array.
	    for (int i = 10, p = 0; i < 14; ++i, ++p)
	    {
		    // Stop string gather if \0 or s\ found.
			if (!command[i] || command[i] == ' ' || command[i] == '\n' || command[i] == '\r')
			{
				int_str[p] = 0;
				break;
			}

		    // If non digit given return false.
		    if (command[i] < 0x30 || command[i] > 0x39) {
			    uart.send("Error, non int value given as argument\n\r");
			    return;
		    }

		    int_str[p] = command[i];
	    }

	    char *end;

	    long pwm = strtol(int_str, &end, 10);
        servo.pwm((uint8_t) (pwm & 0xFF));

	    char buf[100] = "motor pwm was set to ";
	    strcat(buf, int_str);

        uart.send(strcat(buf, "\n\r"));
    }
	else if (strstr_b(command, "motor pos", COMMAND_SIZE))
	{
	    char int_str[4];
		int p = 0;

	    // Get number's characters & store it into int_str array.
	    for (int i = 10; i < 17; ++i, ++p)
	    {
		    // Stop string gather if \0 or s\ found.
			if (!command[i] || command[i] == ' ' || command[i] == '\n' || command[i] == '\r')
			{
				int_str[p] = 0;
				break;
			}

		    // If non float given return false.
		    if ((command[i] < 0x30 || command[i] > 0x39) && command[i] != 0x2E) {
			    uart.send("Error, non float value given as argument\n\r");
			    return;
		    }

		    int_str[p] = command[i];
	    }

		int_str[++p] = 0;

	    char *end;

        servo.position_pid.set_setpoint(strtod(int_str, &end));

		sprintf(buf, "setpos: %f\n", servo.position_pid.get_setpoint());
		uart.send(buf);
    }
	else if (strstr_b(command, "pid kp", COMMAND_SIZE))
	{
	    char int_str[4];
		int p = 0;

	    // Get number's characters & store it into int_str array.
	    for (int i = 7; i < 14; ++i, ++p)
	    {
		    // Stop string gather if \0 or s\ found.
			if (!command[i] || command[i] == ' ' || command[i] == '\n' || command[i] == '\r')
			{
				int_str[p] = 0;
				break;
			}

		    // If non float given return false.
		    if ((command[i] < 0x30 || command[i] > 0x39) && command[i] != 0x2E) {
			    uart.send("Error, non float value given as argument\n\r");
			    return;
		    }

		    int_str[p] = command[i];
	    }

		int_str[++p] = 0;

	    char *end;

	    float term = strtof(int_str, &end);
        servo.position_pid.set_kp_term(term);

	    char buf[100] = "PID Kp was set to ";
	    strcat(buf, int_str);

        uart.send(strcat(buf, "\n\r"));
    }
	else if (strstr_b(command, "pid kd", COMMAND_SIZE))
	{
	    char int_str[4];
		int p = 0;

	    // Get number's characters & store it into int_str array.
	    for (int i = 7; i < 14; ++i, ++p)
	    {
		    // Stop string gather if \0 or s\ found.
			if (!command[i] || command[i] == ' ' || command[i] == '\n' || command[i] == '\r')
			{
				int_str[p] = 0;
				break;
			}

		    // If non float given return false.
		    if ((command[i] < 0x30 || command[i] > 0x39) && command[i] != 0x2E) {
			    uart.send("Error, non float value given as argument\n\r");
			    return;
		    }

		    int_str[p] = command[i];
	    }

		int_str[++p] = 0;

	    char *end;

	    float term = strtof(int_str, &end);
        servo.position_pid.set_kd_term(term);

	    char buf[100] = "PID Kd was set to ";
	    strcat(buf, int_str);

        uart.send(strcat(buf, "\n\r"));
    }
	else if (strstr_b(command, "pid ki", COMMAND_SIZE))
	{
	    char int_str[4];
		int p = 0;

	    // Get number's characters & store it into int_str array.
	    for (int i = 7; i < 14; ++i, ++p)
	    {
		    // Stop string gather if \0 or s\ found.
			if (!command[i] || command[i] == ' ' || command[i] == '\n' || command[i] == '\r')
			{
				int_str[p] = 0;
				break;
			}

		    // If non float given return false.
		    if ((command[i] < 0x30 || command[i] > 0x39) && command[i] != 0x2E) {
			    uart.send("Error, non float value given as argument\n\r");
			    return;
		    }

		    int_str[p] = command[i];
	    }

		int_str[++p] = 0;

	    char *end;

	    float term = strtof(int_str, &end);
        servo.position_pid.set_ki_term(term);

	    char buf[100] = "PID Ki was set to ";
	    strcat(buf, int_str);

        uart.send(strcat(buf, "\n\r"));
    }
}

void uart_cmd_handler()
{
    // Avoid queue handler invoke if internal classes weren't set.
    if (!uart.initialized) return;

    uint8_t buf = 0;
    uint8_t buf_start = 0;
    uint16_t iter = 0;

    memset(command, '\0', COMMAND_SIZE);

    typename Queue<uint8_t, USART_RING_BUFFER_SIZE>::iterator it = uart.cyclo_buffer.begin();

    while (it.index != uart.cyclo_buffer.end_index)
    {
        buf = it.index;
        command[iter] = *it;

        ++it;

        if (buf <= it.index) iter++;
    }

    command[iter] = '\0';

    uart.cyclo_buffer.start_index = it.index;
    uart.last_string_ready = 0;
    uart.crlf_count = 0;

    if (command[0]) {
        parse_command();
    }
}

extern "C" void TIM4_IRQHandler()
{
	TIM_ClearITPendingBit(TIM4, TIM_IT_Update);

	if (uart.last_char_timing != 0 && (ticks - uart.last_char_timing) >= 4
		&& uart.cyclo_buffer.end_index != uart.cyclo_buffer.start_index) {

        uart_cmd_handler();
	}
}

extern "C" void EXTI2_IRQHandler()
{
	EXTI_ClearITPendingBit(EXTI_Line2);
}

extern "C" void USART3_IRQHandler()
{
	if (USART_GetITStatus(USART3, USART_IT_TC) != RESET)
	{
		USART_ClearITPendingBit(USART3, USART_IT_TC);
	}
}

extern "C" void USART1_IRQHandler()
{
	// Receive Data register not empty interrupt.
	if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET) {
		uart.prev_byte = uart.last_byte;
		uart.last_byte = USART_ReceiveData(USART1);

		uart.last_char_timing = ticks;
		uart.cyclo_buffer.push_back(uart.last_byte);
		if (uart.last_byte == '\n') {
			uart.last_string_ready = 1;
		}
	}

	if (USART_GetITStatus(USART1, USART_IT_TC) != RESET)
	{
		USART_ClearITPendingBit(USART1, USART_IT_TC);
	}
}

extern "C" void SysTick_Handler(void)
{
	ticks++;
}

extern "C" void EXTI0_IRQHandler()
{
	EXTI_ClearITPendingBit(EXTI_Line0);
}

extern "C" void EXTI1_IRQHandler()
{
	EXTI_ClearITPendingBit(EXTI_Line1);
}

extern "C" void EXTI15_10_IRQHandler() {}

extern "C" void EXTI9_5_IRQHandler()
{
	EXTI_ClearITPendingBit(EXTI_Line8);
	EXTI_ClearITPendingBit(EXTI_Line9);
}

extern "C" void interrupt_initialize();
extern "C" void initialize_systick();

extern "C" void __initialize_hardware()
{
	// Bind GPIOA, GPIOB to APB2 bus.
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);

	initialize_systick();
}

extern "C" void __reset_hardware()
{
	reset_asm();
}

void InitializeTimer()
{
	RCC_ClocksTypeDef RCC_Clocks;
	RCC_GetClocksFreq(&RCC_Clocks);

	TIM_TimeBaseInitTypeDef timerInitStructure;

	// 20 msec?
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);

	timerInitStructure.TIM_Prescaler = 720000-1;
	timerInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
	timerInitStructure.TIM_Period = 10;
	timerInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	timerInitStructure.TIM_RepetitionCounter = 0;

	TIM_TimeBaseInit(TIM4, &timerInitStructure);
	TIM_Cmd(TIM4, ENABLE);
	TIM_ITConfig(TIM4, TIM_IT_Update, ENABLE);
}

extern "C" int
main(void)
{
	InitializeTimer();
	interrupt_initialize();
	__enable_irq();

	uint32_t last_processed_ticks;

	while (1)
	{
		uint16_t encoder = TIM_GetCounter(TIM3);

//		uart.send("idle\n");

		char buf[30];

		// Process PID every 10 ticks (1 tick is 1 millisecond).
		if (ticks >= last_processed_ticks + 10) {
			char buf[30];

//			sprintf(buf, "encoder: %u\n", encoder);
//			uart.send(buf);

			last_processed_ticks = ticks;

			int16_t pwm = servo.position_pid.get_ctrl_var();

//			sprintf(buf, "Servi dir: %i\n", servo.get_dir());
//			uart.send(buf);

			// If motors turns opposite direction toggle it.
			if ((pwm < 0 && servo.get_dir()) || (pwm > 0 && !servo.get_dir())) {
				servo.off();

//				uart.send("toggling dir\n");
//				if (pwm > 0) {
//					uart.send("positive dir\n");
//				} else {
//					uart.send("negative dir\n");
//				}
				// Do some delay to decrease a bit motor inertia.
				// @todo implement acceleration control.
				Delay(100);

				if (servo.get_pwm() > 20) {
					servo.pwm(20);
				}

				servo.dir_toggle();

				servo.on();

				if (abs(pwm) > 20) {
					Delay(1000000);
				}
			}

			servo.pwm((uint8_t) abs(pwm));

			sprintf(buf, "pid i: %f\n", servo.position_pid.get_integral());
			uart.send(buf);

			sprintf(buf, "PID CV: %i\n", pwm);
			uart.send(buf);
		}

		sprintf(buf, "pos: %f\n", servo.position());
		uart.send(buf);

		Delay(100000);
	}
}

void interrupt_initialize()
{
	__disable_irq();

	// NVIC structure to set up NVIC controller
	NVIC_InitTypeDef NVIC_InitStructure;

	// USART handler timer.
	NVIC_InitStructure.NVIC_IRQChannel = TIM4_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x05;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x05;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0f;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0f;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn; // канал
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x01; // приоритет
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x01;// приоритет субгруппы
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE; // включаем канал
	NVIC_Init(&NVIC_InitStructure); // инициализируем

	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);

	// Systick timer, used for milliseconds granularity
	// and milliseconds set timeouts.
	NVIC_InitStructure.NVIC_IRQChannel = SysTick_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x00;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x00;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}

extern "C" void initialize_systick()
{
	RCC_ClocksTypeDef RCC_Clocks;
	RCC_GetClocksFreq(&RCC_Clocks);

	// 1 millisecond tick.
	SysTick_Config(RCC_Clocks.HCLK_Frequency / (1000));
}

/*******************************************************************************
 * Function Name  : RCC_Configuration
 * Description    : Configures the different system clocks.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void RCC_Configuration(void)
{
	/* RCC system reset(for debug purpose) */
	RCC_DeInit();

	/* Enable HSE */
	RCC_HSEConfig(RCC_HSE_ON);

	/* Wait till HSE is ready */
	HSEStartUpStatus = RCC_WaitForHSEStartUp();

	if (HSEStartUpStatus == SUCCESS)
	{
		/* Enable Prefetch Buffer */
		FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);

		/* Flash 2 wait state */
		FLASH_SetLatency(FLASH_Latency_2);

		/* HCLK = SYSCLK */
		RCC_HCLKConfig(RCC_SYSCLK_Div1);

		/* PCLK2 = HCLK */
		RCC_PCLK2Config(RCC_HCLK_Div1);

		/* PCLK1 = HCLK/2 */
		RCC_PCLK1Config(RCC_HCLK_Div2);

		/* PLLCLK = 8MHz * 9 = 72 MHz */
		RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);

		/* Enable PLL */
		RCC_PLLCmd(ENABLE);

		/* Wait till PLL is ready */
		while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET) {}

		/* Select PLL as system clock source */
		RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);

		/* Wait till PLL is used as system clock source */
		while(RCC_GetSYSCLKSource() != 0x08) {}
	}

	/* PCLK2 = HCLK/2 */
	RCC_PCLK2Config(RCC_HCLK_Div2);

	//enable AFIO clock
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	/* Enable GPIO clock for SPIz */
	RCC_APB2PeriphClockCmd(SPIz_GPIO_CLK | RCC_APB2Periph_AFIO, ENABLE);

	/* Enable SPIz Periph clock */
	RCC_APB1PeriphClockCmd(SPIz_CLK, ENABLE);
}

/*******************************************************************************
 * Function Name  : NVIC_Configuration
 * Description    : Configures Vector Table base location.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void NVIC_Configuration(void)
{
#ifdef  VECT_TAB_RAM
	/* Set the Vector Table base location at 0x20000000 */
	NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0);
#else  /* VECT_TAB_FLASH  */
	/* Set the Vector Table base location at 0x08000000 */
	NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);
#endif
}

#ifdef  DEBUG
/*******************************************************************************
 * Function Name  : assert_failed
 * Description    : Reports the name of the source file and the source line number
 *                  where the assert_param error has occurred.
 * Input          : - file: pointer to the source file name
 *                  - line: assert_param error line source number
 * Output         : None
 * Return         : None
 *******************************************************************************/
void assert_failed(uint8_t *file, uint32_t line)
{
	/* User can add his own implementation to report the file name and line number,
ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

	/* Infinite loop */
	while (1) {}
}
#endif
