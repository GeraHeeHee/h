extends Node
@onready var audio_stream_player_3d: AudioStreamPlayer3D = $AudioStreamPlayer3D


func _ready() -> void:
	var coins = get_tree().get_nodes_in_group("Coleccionables")
	for coin in coins :
		coin.coinCollected.connect(_on_coinCollected)
		
func _on_coinCollected():
	audio_stream_player_3d.play();

func _process(delta: float) -> void:
	pass
	
