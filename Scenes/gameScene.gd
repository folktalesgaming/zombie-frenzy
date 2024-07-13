extends Node2D


func spawn_zombie():
	var new_zombie = preload("res://Prefabs/Zombies/Zombie.tscn").instantiate()
	%ZombiePathFollow.progress_ratio = randf()
	new_zombie.global_position = %ZombiePathFollow.global_position
	add_child(new_zombie)
	

func _on_timer_timeout():
	spawn_zombie()


func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().paused = true
