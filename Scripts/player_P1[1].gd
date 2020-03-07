extends KinematicBody2D

onready var state_machine: StateMachine = $StateMachine

var Player_tex1 = preload("res://Graphics/Player/hipis przód.png")
var Player_tex2 = preload("res://Graphics/Player/hipis tył.png")
var Player_tex3 = preload("res://Graphics/Player/Hipis bok.png")

onready var Player_sprite = get_node("Sprite")

var Direction_x = "none"
var Direction_y = "none"
var stop_x = true
var stop_y = true
var move = false

var	Speed := 600
var	Build_speed := 1
var Stagger_Time := 5

# warning-ignore:unused_argument
func _physics_process(delta):
	var walk_down = Input.is_action_pressed("Move_Down_P1")
	var walk_down_start = Input.is_action_just_pressed("Move_Down_P1")
	var walk_left_start = Input.is_action_just_pressed("Move_Left_P1")
	var walk_left = Input.is_action_pressed("Move_Left_P1")
	var walk_right_start = Input.is_action_just_pressed("Move_Right_P1")
	var walk_right = Input.is_action_pressed("Move_Right_P1")
	var walk_up = Input.is_action_pressed("Move_Up_P1")
	var walk_up_start = Input.is_action_just_pressed("Move_Up_P1")

	if not walk_right and not walk_left:
		stop_x = true
	if walk_right_start:
		Direction_x = "right"
		Player_sprite.set_texture(Player_tex3)
		Player_sprite.set_scale(Vector2(-0.1, 0.1))
		stop_x = false
	if walk_left_start:
		Direction_x = "left"
		Player_sprite.set_texture(Player_tex3)
		Player_sprite.set_scale(Vector2(0.1, 0.1))
		stop_x = false
	if walk_up_start:
		Direction_y = "up"
		Player_sprite.set_texture(Player_tex2)
		stop_y = false
	if walk_down_start:
		Direction_y = "down"
		Player_sprite.set_texture(Player_tex1)
		stop_y = false
	if not walk_up and not walk_down:
		stop_y = true
	if walk_up or walk_down or walk_left or walk_right:
		move = true
	if not walk_up and not walk_down and not walk_left and not walk_right:
		move = false
	if walk_up_start:
		print_debug(Speed)

