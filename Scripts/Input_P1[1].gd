extends Node2D

signal Move_Left
signal Move_Right
signal Move_Up
signal Move_Down
signal Stop_x
signal Stop_y
signal Move


var walk_down = Input.is_action_pressed("Move_Down_P1")
var walk_down_start = Input.is_action_just_pressed("Move_Down_P1")
var walk_left_start = Input.is_action_just_pressed("Move_Left_P1")
var walk_left = Input.is_action_pressed("Move_Left_P1")
var walk_right_start = Input.is_action_just_pressed("Move_Right_P1")
var walk_right = Input.is_action_pressed("Move_Right_P1")
var walk_up = Input.is_action_pressed("Move_Up_P1")
var walk_up_start = Input.is_action_just_pressed("Move_Up_P1")


# warning-ignore:unused_argument
func _physics_process(delta):
	if not walk_right and not walk_left:
		emit_signal("Stop_x")
	if walk_right_start:
		emit_signal("Move_Right")
	if walk_left_start:
		emit_signal("Move_Left")
	if walk_up_start:
		emit_signal("Move_Up")
	if walk_down:
		print_debug("suck my cockass")
	if not walk_up and not walk_down:
		emit_signal("Stop_y")
	if walk_up or walk_down or walk_left or walk_right:
		emit_signal("Move")
