extends PanelContainer

@onready var score_label = $HBoxContainer/ScoreLabel

func _process(_delta):
	score_label.text = "💀 Slimes Defeated: " + str(GameManager.score)
