tool
extends State


func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	
	if owner.player == 1:
		if Input.is_action_just_pressed("Build1_P1"):
			owner.Building = 1
			print_debug("Building 1")
			_state_machine.transition_to("Build")
			
		if Input.is_action_just_pressed("Build2_P1"):
			owner.Building = 2
			_state_machine.transition_to("Build")
			
	if owner.player == 2:
		if Input.is_action_just_pressed("Build_P2"):
			owner.Building = 4
			_state_machine.transition_to("Build")

func enter(msg: Dictionary = {}) -> void:
	pass

func exit() -> void:
	pass


func _on_Area2D_body_exited(body):
	_state_machine.transition_to("Idle")
