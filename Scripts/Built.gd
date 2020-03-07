tool
extends State

signal Start_Score_Timer
signal Stop_Score_Timer

func unhandled_input(event: InputEvent) -> void:
	pass

func physics_process(delta: float) -> void:
	pass

func enter(msg: Dictionary = {}) -> void:
	emit_signal("Start_Score_Timer")
	if owner.Building == 1:
		owner.P1.Speed = owner.P1.Speed + 100
		print_debug("pupa")
	if owner.Building == 2:
		owner.P1.Build_speed = owner.P1.Build_speed - 0.25
func exit() -> void:
	emit_signal("Stop_Score_Timer")
	if owner.Building == 1:
		owner.P1.Speed = owner.P1.Speed - 100
	if owner.Building == 2:
		owner.P1.Build_speed = owner.P1.Build_speed + 0.25
	owner.Building == 0



func _on_Area2D_body_entered(body):
	if body == owner.P1 and owner.Player == 2:
		_state_machine.transition_to("Idle")
	if body == owner.P2 and owner.Player == 1:
		_state_machine.transition_to("Idle")
