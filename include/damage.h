#pragma once
#include "object.h"

extern void dealDamage(OBJECT *attacker, OBJECT *weapon, OBJECT *victim);
extern OBJECT *getOptimalWeapon(OBJECT *attacker);
