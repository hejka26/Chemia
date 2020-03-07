tool
extends State


func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	if owner.move:
		_state_machine.transition_to("Move")
		
func enter(msg: Dictionary = {}) -> void:
	pass

func exit() -> void:
	pass
