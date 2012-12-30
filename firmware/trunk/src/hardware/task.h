/*
 * Simple periodic task scheduler for XMega.
 *
 * author: Pras Velagapudi
 */

#ifndef TASK_H
#define TASK_H

#include <avr/io.h>
#include <avr/interrupt.h> 

struct TaskConfig
{
  TC0_t timer;
};

// TODO: NO GLOBAL STUFF!
// Store the current task (only handles one right now)
void (*TASK_Function)(void *);
void *TASK_Args;

// TODO: handle more than one task!
ISR (TCC0_OVF_vect) // TODO: Make me parameterizable!
{ 
  TASK_Function(TASK_Args);
}

template <TaskConfig &_config>
class Task
{
 public:
  Task(const void (*task)(void*), const void* args, uint16_t interval_ms) {

    // Store the reference to the callback function
    TASK_Function = task;
    TASK_Args = args;

    // Set up the timer to fire periodically
    _config.timer.PER = interval_ms;
    _config.timer.CTRLA = 0; // TODO: fix me: Get this close to milliseconds
    _config.timer.CTRLB = 0; // TODO: fix me: See above

    // TODO: Connect up the callback to the ISR for the timer

    // Start the timer
    _config.timer.CTRLA |= 0x04;
    sei();
  }

  ~Task() {
    // TODO: remove callback function from the timer handler

    // Disable the timer
    _config.timer = 0;
  }
};

#endif
