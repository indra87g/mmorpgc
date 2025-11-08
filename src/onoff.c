#include "match.h"
#include "object.h"
#include "reach.h"
#include "toggle.h"
#include <stdbool.h>
#include <stdio.h>

int executeTurnOn(void) {
  OBJECT *obj = reachableObject("what you want to turn on", params[0]);
  if (obj != NULL) {
    if (obj == lampOff) {
      toggleLamp();
    } else {
      printf(obj == lampOn ? "The lamp is already on.\n"
                           : "You cannot turn that on.\n");
    }
    return 1;
  }
  return 0;
}

int executeTurnOff(void) {
  OBJECT *obj = reachableObject("what you want to turn off", params[0]);
  if (obj != NULL) {
    if (obj == lampOn) {
      toggleLamp();
    } else {
      printf(obj == lampOff ? "The lamp is already off.\n"
                            : "You cannot turn that off.\n");
    }
    return 1;
  }
  return 0;
}
