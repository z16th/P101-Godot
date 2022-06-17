extends KinematicBody

onready var model = $chr_knight

var speed := 4.0
var jump_strength := 10
var gravity := 50

var velocity := Vector3.ZERO
var snap_vector := Vector3.DOWN

func _physics_process(delta):
#	grounded_movement(delta)
	movement_with_jump(delta)

func grounded_movement(delta):
	var move_direction := Vector3.ZERO
	move_direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	move_direction.z = Input.get_action_strength("backward") - Input.get_action_strength("forward")
	move_direction = move_direction.rotated(Vector3.UP,self.rotation.y).normalized()
	
	velocity.x = move_direction.x * speed
	velocity.z = move_direction.z * speed
	velocity.y -= gravity * delta
	
	velocity = move_and_slide(velocity,Vector3.UP,true)
	model.look_at(translation - move_direction,Vector3.UP)

func movement_with_jump(delta):
	var move_direction := Vector3.ZERO
	move_direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	move_direction.z = Input.get_action_strength("backward") - Input.get_action_strength("forward")
	move_direction = move_direction.rotated(Vector3.UP,self.rotation.y).normalized()
	
	velocity.x = move_direction.x * speed
	velocity.z = move_direction.z * speed
	velocity.y -= gravity * delta
	
	var just_landed := is_on_floor() and snap_vector == Vector3.ZERO
	var is_jumping := is_on_floor() and Input.is_action_just_pressed("jump")
	if is_jumping:
		velocity.y = jump_strength
		snap_vector = Vector3.ZERO
	elif just_landed:
		snap_vector = Vector3.DOWN
	
	velocity = move_and_slide_with_snap(velocity,snap_vector,Vector3.UP,true)
	model.look_at(translation - move_direction,Vector3.UP)
