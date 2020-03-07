tool
extends State

signal Start_Build_Timer

func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	pass

func enter(msg: Dictionary = {}) -> void:
	emit_signal("Start_Build_Timer")
	print_debug("building")

func exit() -> void:
	pass
	
func _on_Area2D_body_exited(body):
	if body == owner.P1 and owner.Player == 1:
		_state_machine.transition_to("Idle")
	if body == owner.P2 and owner.Player == 2:
		_state_machine.transition_to("Idle")
	print_debug("failed")


func _on_Build_timer_timeout():
	_state_machine.transition_to("Built")
	print_debug("built")


func _on_Area2D_body_entered(body):
	if body == owner.P1 and owner.Player == 2:
		_state_machine.transition_to("Idle")
	if body == owner.P2 and owner.Player == 1:
		_state_machine.transition_to("Idle")
