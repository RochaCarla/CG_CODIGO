#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec3 v_color;
out vec2 tex_coord;

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    v_color = aColor;
    tex_coord = aTexCoord;
}
