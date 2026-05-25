extends Node
@onready var score: Label = $Control/MarginContainer/score

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	score.text = "Score: " + str(GameManager.getPoint())
