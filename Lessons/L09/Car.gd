extends Node
class_name Car

# Properties
export var accel:float = 2.0
export var friction:float = 0.1
export var fuel_consumption:float = 1

var fuel:float = 0
var speed:float = 0

# Methods
func accel(delta):
	if fuel > 0:
		fuel -= fuel_consumption * delta
		speed += accel * delta

func deaccel(delta):
	if speed > 0:
		speed -= friction * delta
	if speed <= 0:
		speed = 0

func unfair_accel():
	if fuel > 0:
		fuel -= fuel_consumption
		speed += accel

func unfair_deaccel():
	if speed > 0:
		speed -= friction
	if speed <= 0:
		speed = 0

func refuel():
	fuel += 10000
