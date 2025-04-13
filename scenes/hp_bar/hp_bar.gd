extends Node2D

##################################################
var texture_progress_bar_node: TextureProgressBar

##################################################
func _ready() -> void:
	texture_progress_bar_node = $TextureProgressBar

##################################################
func _process(delta: float) -> void:
	texture_progress_bar_node.value = GM.get_player_hp()
