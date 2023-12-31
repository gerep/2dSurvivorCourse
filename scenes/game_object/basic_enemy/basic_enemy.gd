extends CharacterBody2D

@onready var health_component: HealthComponent = $HealthComponent

const MAX_SPEED = 40


func _process(delta):
	var direction = get_direction()
	velocity = direction * MAX_SPEED
	move_and_slide()


func get_direction():
	var player_node = get_tree().get_first_node_in_group("player") as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized()

	return Vector2.ZERO
