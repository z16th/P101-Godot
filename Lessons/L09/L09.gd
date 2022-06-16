extends Lesson

# Lesson 09: Classes

# Using a new instance via nodes
onready var crv = $CRV

# Creating a new instance via code
var gti = Car.new()

func _ready():
	gti.refuel()
	crv.refuel()

func _process(delta):
	update_ui()
#	gti.unfair_deaccel()
	gti.deaccel(delta)
	if Input.is_action_pressed("accel"):
#		gti.unfair_accel()
		gti.accel(delta)
	
	crv.unfair_deaccel()
#	crv.deaccel(delta)
	if Input.is_action_pressed("accel"):
		gti.unfair_accel()
#		crv.accel(delta)

func update_ui():
	$GTI/Fuel.text = "Fuel: {fuel}".format({"fuel": "%0.2f" % gti.fuel})
	$GTI/Speed.text = "Speed: {speed}".format({"speed": "%0.2f" % gti.speed})

	$CRV/Fuel.text = "Fuel: {fuel}".format({"fuel": "%0.2f" % crv.fuel})
	$CRV/Speed.text = "Speed: {speed}".format({"speed": "%0.2f" % crv.speed})
