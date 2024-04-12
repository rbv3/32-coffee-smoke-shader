varying vec2 vUv;

uniform sampler2D uPerlinTexture;

void main() {
    vec2 smokeUv = vUv;

    float smoke = texture(uPerlinTexture, smokeUv).r;

    gl_FragColor = vec4(vec3(1.0), smoke);
    
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}