extends Node2D

var P1_Score = 0
var P2_Score = 0


func _on_Building_scored_P1():
	P1_Score =+ 1


func _on_Building_scored_P2():
	P2_Score =+ 1
