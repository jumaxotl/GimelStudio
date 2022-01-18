// ----------------------------------------------------------------------------
// Gimel Studio Copyright 2019-2022 by Noah Rahm and contributors
// Licensed under the Apache License 2.0
// ----------------------------------------------------------------------------

#version 330

uniform sampler2D input_img;
uniform float opacity_value;
out vec4 output_img;

void main() {
    vec4 color = texelFetch(input_img, ivec2(gl_FragCoord.xy), 0);
    if (color.a > 0) output_img = vec4(color.r, color.g, color.b, opacity_value);
    else output_img = color;
}
