extends MeshInstance3D
# Made by Yni Viar
# Licensed under CC0, EVEN for SCP projects

var near_939: bool = false
var intensity: float = 0.0:
	set(val):
		intensity += val
		if intensity > 0.875:
			_shader.set_shader_parameter("second_phase", intensity - 0.875)
		else:
			_shader.set_shader_parameter("noise_intensity", intensity / 0.875)

var _shader: ShaderMaterial

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_shader = mesh.surface_get_material(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if near_939 && intensity <= 1.0:
		intensity = lerp(0.0, 1.0, 0.015625 * delta)
	elif !near_939 && intensity >= 0.0:
		intensity = inverse_lerp(0.0, 1.0, 0.015625 * delta)
