shader_type spatial;
render_mode unshaded;

void vertex() {
    // Called for every vertex the material is visible on.
}

void fragment() {
    ALBEDO = vec3(0.9,0.3,0.05);
}

//void light() {
    // Called for every pixel for every light affecting the material.
    // Uncomment to replace the default light processing function with this one.
//}
