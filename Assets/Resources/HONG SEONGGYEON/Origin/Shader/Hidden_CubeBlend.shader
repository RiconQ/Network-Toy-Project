//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CubeBlend" {
Properties {
[NoScaleOffset] _TexA ("Cubemap", Cube) = "grey" { }
[NoScaleOffset] _TexB ("Cubemap", Cube) = "grey" { }
_value ("Value", Range(0, 1)) = 0.5
}
SubShader {
 Tags { "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Tags { "QUEUE" = "Background" "RenderType" = "Background" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Fog {
   Mode Off
  }
  GpuProgramID 60343
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: d9c598c4c0e1ed06
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 1dc00d885b77a2af
TextureCube<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.SampleLevel(s0_s, v1.xyz, cb0[4].x).xyzw;
  r0.w = log2(r0.w);
  r0.w = cb0[2].y * r0.w;
  r0.w = exp2(r0.w);
  r1.x = cmp(cb0[2].w == 1.000000);
  r0.w = r1.x ? r0.w : 1;
  r0.w = cb0[2].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r1.xyzw = t1.SampleLevel(s1_s, v1.xyz, cb0[4].x).xyzw;
  r0.w = log2(r1.w);
  r0.w = cb0[3].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(cb0[3].w == 1.000000);
  r0.w = r1.w ? r0.w : 1;
  r0.w = cb0[3].x * r0.w;
  r1.xyz = r0.www * r1.xyz + -r0.xyz;
  o0.xyz = cb0[4].yyy * r1.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Tags { "QUEUE" = "Background" "RenderType" = "Background" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Fog {
   Mode Off
  }
  GpuProgramID 95386
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: d9c598c4c0e1ed06
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 4b2ffc7e48f01fb6
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 1dc00d885b77a2af
TextureCube<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.SampleLevel(s0_s, v1.xyz, cb0[4].x).xyzw;
  r0.w = log2(r0.w);
  r0.w = cb0[2].y * r0.w;
  r0.w = exp2(r0.w);
  r1.x = cmp(cb0[2].w == 1.000000);
  r0.w = r1.x ? r0.w : 1;
  r0.w = cb0[2].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r1.xyzw = t1.SampleLevel(s1_s, v1.xyz, cb0[4].x).xyzw;
  r0.w = log2(r1.w);
  r0.w = cb0[3].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(cb0[3].w == 1.000000);
  r0.w = r1.w ? r0.w : 1;
  r0.w = cb0[3].x * r0.w;
  r1.xyz = r0.www * r1.xyz + -r0.xyz;
  o0.xyz = cb0[4].yyy * r1.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: f3e624bb5b7bf86d
TextureCube<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[2].w == 1.000000);
  r1.xyzw = t0.SampleBias(s0_s, v1.xyz, cb0[4].x).xyzw;
  r0.x = r0.x ? r1.w : 1;
  r0.x = cb0[2].x * r0.x;
  r0.xyz = r0.xxx * r1.xyz;
  r0.w = cmp(cb0[3].w == 1.000000);
  r1.xyzw = t1.SampleBias(s1_s, v1.xyz, cb0[4].x).xyzw;
  r0.w = r0.w ? r1.w : 1;
  r0.w = cb0[3].x * r0.w;
  r1.xyz = r0.www * r1.xyz + -r0.xyz;
  o0.xyz = cb0[4].yyy * r1.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
}
}