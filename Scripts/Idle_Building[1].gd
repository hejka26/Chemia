tool
extends State


func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	pass
		
func enter(msg: Dictionary = {}) -> void:
	pass

func exit() -> void:
	pass


func _on_Area2D_body_entered(body):
	
	if body == owner.P1:
		owner.player = 1
	if body == owner.P2:
		owner.player = 2

	_state_machine.transition_to("Select")



func _on_Area2D_body_exited(body):
	if body == owner.P1 and owner.player == 1:
		owner.player = 0
	if body == owner.P2 and owner.player == 2:
		owner.player = 0
