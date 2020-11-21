shader_type canvas_item;

uniform sampler2D gradient;
uniform float speed_scale = 1;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	float x = mod(color.r - TIME * speed_scale, 1.0);
	COLOR = vec4(texture(gradient, vec2(x, 0)).rgb, color.a);
}