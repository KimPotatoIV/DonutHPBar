extends Node2D

##################################################
const ENEMY_SCENE: PackedScene = preload("res://scenes/enemy/enemy.tscn")
const SPAWN_TIME: float = 0.1

var timer_node: Timer

##################################################
func _ready() -> void:
	timer_node = $Timer
	timer_node.wait_time = SPAWN_TIME
	timer_node.one_shot = true
	timer_node.connect("timeout", Callable(self, "_on_timer_timeout"))
	timer_node.start()

##################################################
func _on_timer_timeout() -> void:
	var enemy_instance: Node2D = ENEMY_SCENE.instantiate()
	
	var t_position: Vector2 = Vector2(randf_range(0.0, 640.0), -20.0)
	var b_position: Vector2 = Vector2(randf_range(0.0, 640.0), 380.0)
	var l_position: Vector2 = Vector2(-20.0, randf_range(0.0, 360.0))
	var r_position: Vector2 = Vector2(660.0, randf_range(0.0, 360.0))
	var rand_position: Array = \
		[t_position, b_position, l_position, r_position]
	
	rand_position.shuffle()
	enemy_instance.position = rand_position.front()

	add_child(enemy_instance)
	timer_node.start()
