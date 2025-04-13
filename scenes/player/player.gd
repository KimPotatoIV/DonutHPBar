extends CharacterBody2D

##################################################
const SPEED = 100.0

var max_hp: int = 100
var current_hp: int = 100

##################################################
func _ready() -> void:
	add_to_group("Player")

##################################################
func _physics_process(delta: float) -> void:
	var direction_x := Input.get_axis("ui_left", "ui_right")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var direction_y := Input.get_axis("ui_up", "ui_down")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

##################################################
func _process(delta: float) -> void:
	GM.set_player_hp(current_hp)
	GM.set_player_position(global_position)

##################################################
func get_current_hp() -> int:
	return current_hp

##################################################
func set_current_hp(hp_value: int) -> void:
	current_hp = hp_value
