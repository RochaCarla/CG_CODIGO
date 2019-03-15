#version 330 core

in vec3 v_color;
in vec2 tex_coord;

out vec4 FragColor;

uniform float sin_time;
uniform sampler2D tex1;
uniform sampler2D tex2;

void main()
{
    FragColor = vec4(v_color.xyz, 1.0) + mix(texture(tex1, tex_coord), texture(tex2, tex_coord), sin_time);
}
