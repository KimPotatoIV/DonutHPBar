extends Node

##################################################
var player_hp: int
var player_position: Vector2

##################################################
func get_player_hp() -> int:
	return player_hp

##################################################
func set_player_hp(hp_value: int) -> void:
	player_hp = hp_value

##################################################
func get_player_position() -> Vector2:
	return player_position

##################################################
func set_player_position(position_value: Vector2) -> void:
	player_position = position_value
