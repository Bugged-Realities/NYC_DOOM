class_name Player
extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
## The base movement speed of the player character
@export var speed: float = 100.0

## As soon as we let go of movement keys, our character stops moving
func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("left","right","up","down")
	
	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2(
			move_toward(velocity.x, 0, speed),
			move_toward(velocity.y, 0, speed)
		)
	# ---- Animation Handling ----
	if direction == Vector2.ZERO:
		anim.play("idle_down")
	else:
		if abs(direction.x) > abs(direction.y):
			#horizontal
			if direction.x > 0:
				anim.play("run_right")
			else:
				anim.play("run_left")
		else:
			if direction.y > 0:
				anim.play("run_down")
			else:
				anim.play("run_up")
	
	move_and_slide()
