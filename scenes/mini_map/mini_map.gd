extends Node2D

##################################################
var player_scene: Node2D
var sub_viewport_node: SubViewport
var camera_node: Camera2D

##################################################
func _ready() -> void:
	sub_viewport_node = $TextureRect/SubViewportContainer/SubViewport
	camera_node = $TextureRect/SubViewportContainer/SubViewport/Camera2D
	
	sub_viewport_node.world_2d = get_tree().root.world_2d
	
	player_scene = get_tree().get_nodes_in_group("Player").front()

##################################################
func _process(delta: float) -> void:
	camera_node.position = player_scene.position
