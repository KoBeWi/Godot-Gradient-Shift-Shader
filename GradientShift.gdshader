shader_type canvas_item;

uniform sampler2D gradient: repeat_enable, filter_nearest;
uniform float speed_scale = 1;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	float x = color.r - TIME * speed_scale;
	COLOR = vec4(texture(gradient, vec2(x, 0)).rgb, color.a);
}