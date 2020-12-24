struct PSInput {
    float4 position: SV_POSITION;
    float2 uv: TEXCOORD;
    float4 color: COLOR;
};

struct PSOutput {
    float4 color: SV_TARGET;
};

PSOutput main(PSInput input) {
    PSOutput output;
    
    output.color = input.color * gm_BaseTextureObject.Sample(gm_BaseTexture, input.uv);
    
    return output;
}