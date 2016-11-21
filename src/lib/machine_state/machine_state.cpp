//
// Created by root on 23/09/16.
//
#pragma once

#include "machine_state.h"
extern Scheduler<Event<led>, 100> led_scheduler;
extern Scheduler<Event<Machine_state>, 100> state_scheduler;

Machine_state::Machine_state() {

}

Machine_state::Machine_state(led **leds) {
    Machine_state::leds = leds;
}

Machine_state::~Machine_state() {

}

void Machine_state::set_state(uint8_t state, uint32_t delay) {
    current_state = state;
    Machine_state::delay = delay;
    switch(state) {
        case MACHINE_STATE_IDLE:
            set_state_idle();
            break;
        case MACHINE_STATE_LOCK_OPEN:
            set_state_lock_open(delay);
            break;
        case MACHINE_STATE_GUEST_CALL:
            set_state_guest_call(delay);
            break;
    }
}

uint8_t Machine_state::get_state() {
    return current_state;
}

void Machine_state::set_state_idle() {
    current_state = MACHINE_STATE_IDLE;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_WHITE);
    leds[LED_STATE_INDICATOR]->set_blink(0,1000,1000);
    leds[LED_STATE_INDICATOR]->on();
    state_scheduler.invalidate(this);
    GPIO_SetBits(EM_LOCK_PORT,EM_LOCK_PIN);
}

void Machine_state::set_state_lock_open(uint32_t delay) {
    current_state = MACHINE_STATE_LOCK_OPEN;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_GREEN);
    leds[LED_STATE_INDICATOR]->set_blink(0,1000,1000);
    leds[LED_STATE_INDICATOR]->on();
    Event<Machine_state> idle_event(state_scheduler.get_current_time() + delay,this,&Machine_state::set_state_idle);
    state_scheduler.invalidate(this);
    state_scheduler.push(idle_event);
    GPIO_ResetBits(EM_LOCK_PORT,EM_LOCK_PIN);
}

void Machine_state::set_state_guest_call(uint32_t delay) {
    current_state = MACHINE_STATE_GUEST_CALL;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_BLUE);
    leds[LED_STATE_INDICATOR]->set_blink(1,200,200);
    leds[LED_STATE_INDICATOR]->on();
    Event<Machine_state> idle_event(state_scheduler.get_current_time() + delay,this,&Machine_state::set_state_idle);
    state_scheduler.invalidate(this);
    state_scheduler.push(idle_event);
}

void Machine_state::set_state_network_problem() {
    current_state = MACHINE_STATE_NETWORK_PROBLEM;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_RED);
    leds[LED_STATE_INDICATOR]->set_blink(1,700,700);
    leds[LED_STATE_INDICATOR]->on();
    state_scheduler.invalidate(this);
}

void Machine_state::set_state_ap_connecting(uint32_t delay) {
    current_state = MACHINE_STATE_AP_CONNECTING;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_PURPLE);
    leds[LED_STATE_INDICATOR]->set_blink(1,700,700);
    leds[LED_STATE_INDICATOR]->on();
    Event<Machine_state> network_problem(state_scheduler.get_current_time() + delay,this,&Machine_state::set_state_network_problem);
    state_scheduler.invalidate(this);
    state_scheduler.push(network_problem);
}

void Machine_state::set_state_server_problem() {
    current_state = MACHINE_STATE_SERVER_PROBLEM;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_RED);
    leds[LED_STATE_INDICATOR]->set_blink(1,200,200);
    leds[LED_STATE_INDICATOR]->on();
    state_scheduler.invalidate(this);
}

void Machine_state::set_state_server_connecting(uint32_t delay) {
    current_state = MACHINE_STATE_SERVER_CONNECTING;
    led_scheduler.invalidate(leds[LED_STATE_INDICATOR]);
    leds[LED_STATE_INDICATOR]->set_color(LED_COLOR_PURPLE);
    leds[LED_STATE_INDICATOR]->set_blink(1,200,200);
    leds[LED_STATE_INDICATOR]->on();
    Event<Machine_state> server_problem(state_scheduler.get_current_time() + delay,this,&Machine_state::set_state_server_problem);
    state_scheduler.invalidate(this);
    state_scheduler.push(server_problem);
}
