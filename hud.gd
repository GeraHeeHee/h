extends Node
@onready var label: Label = $Control/MarginContainer/label

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	label.text = "Score: " + str(GameManager.getPoint())
