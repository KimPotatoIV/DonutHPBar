extends Area2D

##################################################
const MOVING_SPEED: float = 50.0

##################################################
func _ready() -> void:
	connect("body_entered", Callable(self, "_on_body_entered"))

##################################################
func _physics_process(delta: float) -> void:
	var direction = (GM.get_player_position() - global_position).normalized()
	global_position += direction * MOVING_SPEED * delta

##################################################
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.set_current_hp(body.get_current_hp() - 1)
		queue_free()
