shader_type canvas_item;

uniform bool flip ;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform sampler2D gradient : source_color; // It can be whatever palette you want
uniform float strength: hint_range(0.0,1.0,0.0) = 0.0;


void fragment(){
	vec4 col = texture(SCREEN_TEXTURE,SCREEN_UV);

	float lum = dot(col.rgb,vec3(0.2126,0.7152,0.0722)); // luminance


	col = mix(col,texture(gradient,vec2(abs(float(flip) - lum),0)),strength);


	COLOR = col;
}