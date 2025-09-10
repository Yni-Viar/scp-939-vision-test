shader_type spatial;

// Made by AivanWorld
// Licensed under CC0
// Modified by Yni.

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture;
uniform float noise_intensity : hint_range(0.0, 1.0, 0.1) = 0.1;
uniform float contrast: hint_range(1.0, 1.125, 0.0625) = 1.0;

float random(vec2 uv) {
	return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453);
}

void fragment() {
	vec2 uv = SCREEN_UV;
	vec3 color = texture(SCREEN_TEXTURE, uv).rgb;
	float noise = random(uv + TIME) * 2.0 - 1.0;
	color += noise * noise_intensity * 0.015625;
	//Apply contrast (taken from Godot engine code)
	color = mix(vec3(0.5), color, contrast);
	ALBEDO = color;
}
