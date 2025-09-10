extends Camera3D
# Made by Yni Viar
# Licensed under CC0, EVEN for SCP projects

var time: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	time += delta
	global_position += Vector3(0, 0, 0.03125 * cos(time))
