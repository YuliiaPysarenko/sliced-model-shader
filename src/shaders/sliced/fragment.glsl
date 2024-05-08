uniform float uSliceStart;
uniform float uSliceArc;

varying vec3 vPosition;

void main() {

    float angle = atan(vPosition.y, vPosition.x);
    angle -= uSliceStart;
    angle = mod(angle, PI2);

    // if(angle > uSliceStart && angle < uSliceStart + uSliceArc) {
        
    if(angle > 0.0 && angle < uSliceArc) {
        discard;
    }

    float csm_Slice;

    // if (!gl_FrontFacing)
        // csm_FragColor = vec4(0.75, 0.15, 0.3, 1.0);

    // csm_FragColor = vec4(vec3(angle), 1.0);
}