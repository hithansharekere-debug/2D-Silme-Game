extends CharacterBody2D

signal health_depleted

var health = 100.0
var damage_timer = 0.0

const SPEED = 550
const DAMAGE_RATE = 10.0
const DAMAGE_INTERVAL = 0.5   # Damage every 0.5 seconds

func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * SPEED
	move_and_slide()

	if velocity.length() > 0.0:
		$HappyBoo.play_walk_animation()
	else: 
		$HappyBoo.play_idle_animation()

	# --- DAMAGE SYSTEM ---
	damage_timer -= delta
	
	var overlapping_bodies = %HurtBox.get_overlapping_bodies()
	print(overlapping_bodies)
	var mob_count = 0
	
	for body in overlapping_bodies:
		if body.is_in_group("mobs"):
			mob_count += 1
	
	if mob_count > 0 and damage_timer <= 0:
		health -= DAMAGE_RATE * mob_count
		%ProgressBar.value = health
		damage_timer = DAMAGE_INTERVAL
		$HappyBoo.play_hurt()

	if health <= 0.0:
		health_depleted.emit()
		
		

func _on_player_health_depleted():
	$GameOver.visible = true
	$GameOver/VBoxContainer/FinalScore.text = "Slimes Defeated: " + str(GameManager.score)
	get_tree().paused = true


func _on_health_depleted() -> void:
	pass # Replace with function body.
