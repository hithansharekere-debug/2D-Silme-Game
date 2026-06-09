extends Node2D

func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()

	%PathFollow2D.progress_ratio = randf()
	var spawn_position = %PathFollow2D.global_position

	var player = $Player

	if spawn_position.distance_to(player.global_position) < 300:
		return

	new_mob.global_position = spawn_position
	add_child(new_mob)

func _on_timer_timeout() -> void:
	spawn_mob()

func _on_restart_button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_player_health_depleted():
	$GameOver.visible = true
	$GameOver/VBoxContainer/FinalScore.text = "Slimes Defeated: " + str(GameManager.score)
	get_tree().paused = true
