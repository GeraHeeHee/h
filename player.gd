extends RigidBody3D
@export var camera_y_offset: float = 0.5

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var target_position = self.global_position
	target_position.y += camera_y_offset
	
	
func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	var inputDirection = Vector3(
		Input.get_axis("left","right"),
		0,
		Input.get_axis("up","down")
	)
	apply_central_impulse(Vector3(inputDirection.x, 0, inputDirection.z))
