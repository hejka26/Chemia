extends Timer


var Build_Timer = 5


func timeout():
	set_wait_time(Build_Timer)
	stop()



func _on_Build_Start_Build_Timer():
	set_wait_time(Build_Timer)
	start()
	print_debug("I hate myself if this dosn't work")


func _on_Build_Stop_Build_Timer():
	set_wait_time(Build_Timer)
	stop()
