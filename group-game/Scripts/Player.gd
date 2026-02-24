extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const accel = 100


func _physics_process(delta: float) -> void:
	var move_vector: Vector2 = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = velocity.move_toward(move_vector * SPEED, accel)
	move_and_slide()
