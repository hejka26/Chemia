extends Timer
var Score_Timer = 1


func timeout():
	set_wait_time(Score_Timer)
	start()



func _on_Built_Stop_Score_Timer():
	set_wait_time(Score_Timer)
	stop()



func _on_Built_Start_Score_Timer():
	start()
