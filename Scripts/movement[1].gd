tool
extends State

var velocity = Vector2()

func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	if owner.Direction_y == "down":
		velocity.y = owner.Speed

	if owner.Direction_x == "left":
		velocity.x = -owner.Speed


	if owner.Direction_x == "right":
		velocity.x = owner.Speed


	if owner.Direction_y == "up":
		velocity.y = -owner.Speed


	if owner.stop_x:
		velocity.x = 0

	if owner.stop_y:
		velocity.y = 0

	
	velocity = owner.move_and_slide_with_snap(velocity, Vector2(0, 1), Vector2(0, -1))
	if not owner.move:
		_state_machine.transition_to("Idle")


func enter(msg: Dictionary = {}) -> void:
	pass


func exit() -> void:
	pass

