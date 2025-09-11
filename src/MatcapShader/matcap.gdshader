shader_type spatial;
render_mode unshaded;

//Made by Yni Viar
//Licensed under CC0.

uniform sampler2D depth_texture: hint_depth_texture;

void fragment(){
	float depth = textureLod(depth_texture, SCREEN_UV, 0.0).r;
	vec4 upos = INV_PROJECTION_MATRIX * vec4(SCREEN_UV * 2.0 - 1.0, depth, 1.0);
	vec3 pixel_position = upos.xyz / upos.w;
	float distance_between_objects = distance(CAMERA_POSITION_WORLD, pixel_position);
	ALBEDO = vec3(1.0 - (distance_between_objects / 7.68));
}