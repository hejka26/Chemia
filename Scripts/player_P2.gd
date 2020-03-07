extends KinematicBody2D

onready var state_machine: StateMachine = $StateMachine

var Direction_x = "none"
var Direction_y = "none"
var stop_x = true
var stop_y = true
var move = false

var Speed = 500

# warning-ignore:unused_argument
func _physics_process(delta):
	var walk_down = Input.is_action_pressed("Move_Down_P2")
	var walk_down_start = Input.is_action_just_pressed("Move_Down_P2")
	var walk_left_start = Input.is_action_just_pressed("Move_Left_P2")
	var walk_left = Input.is_action_pressed("Move_Left_P2")
	var walk_right_start = Input.is_action_just_pressed("Move_Right_P2")
	var walk_right = Input.is_action_pressed("Move_Right_P2")
	var walk_up = Input.is_action_pressed("Move_Up_P2")
	var walk_up_start = Input.is_action_just_pressed("Move_Up_P2")

	if not walk_right and not walk_left:
		stop_x = true
	if walk_right_start:
		Direction_x = "right"
		stop_x = false
	if walk_left_start:
		Direction_x = "left"
		stop_x = false
	if walk_up_start:
		Direction_y = "up"
		stop_y = false
	if walk_down_start:
		Direction_y = "down"
		stop_y = false
	if not walk_up and not walk_down:
		stop_y = true
	if walk_up or walk_down or walk_left or walk_right:
		move = true
	if not walk_up and not walk_down and not walk_left and not walk_right:
		move = false

