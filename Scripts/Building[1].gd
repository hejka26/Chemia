extends StaticBody2D


onready var P1 = get_node("/root/root/Player_P1")
onready var P2 = get_node("/root/root/Player_P2")

var player = 0

var Building = 0

signal scored_P1
signal scored_P2


func _on_Score_Timer_timeout():
	if player == 1:
		emit_signal("scored_P1")
	if player == 2:
		emit_signal("scored_P1")
