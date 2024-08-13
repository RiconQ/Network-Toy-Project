//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Particles/Alpha Blended" {
Properties {
_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
_MainTex ("Particle Texture", 2D) = "white" { }
_InvFade ("Soft Particles Factor", Range(0.01, 3)) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 48110
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 7bccc7fdffc24b0d
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 2898384cf14fa88e
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SOFTPARTICLES_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// hash: 32a79a003aef41a8
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.w = r0.w;
  o3.xy = r1.xw + r1.zz;
  r0.x = cb2[5].z * v0.y;
  r0.x = cb2[4].z * v0.x + r0.x;
  r0.x = cb2[6].z * v0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  o3.z = -r0.x;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SOFTPARTICLES_ON" }
"// hash: 2de31eedf2383874
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.w = r0.w;
  o3.xy = r1.xw + r1.zz;
  r0.x = cb2[5].z * v0.y;
  r0.x = cb2[4].z * v0.x + r0.x;
  r0.x = cb2[6].z * v0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  o3.z = -r0.x;
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
"// hash: 5c83a5ede01d38c4
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v1.xyzw + v1.xyzw;
  r1.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 31bb762dd2bb10aa
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v1.xyzw + v1.xyzw;
  r1.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SOFTPARTICLES_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// hash: 40dbf50bde4ad6d8
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t0.Sample(s1_s, r0.xy).xyzw;
  r0.x = cb1[7].z * r0.x + cb1[7].w;
  r0.x = 1 / r0.x;
  r0.x = -v3.z + r0.x;
  r0.x = saturate(cb0[4].x * r0.x);
  r0.w = v1.w * r0.x;
  r0.xyz = v1.xyz;
  r0.xyzw = r0.xyzw + r0.xyzw;
  r1.xyzw = t1.Sample(s0_s, v2.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SOFTPARTICLES_ON" }
"// hash: 89f3204b120dfd3d
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t0.Sample(s1_s, r0.xy).xyzw;
  r0.x = cb1[7].z * r0.x + cb1[7].w;
  r0.x = 1 / r0.x;
  r0.x = -v3.z + r0.x;
  r0.x = saturate(cb0[4].x * r0.x);
  r0.w = v1.w * r0.x;
  r0.xyz = v1.xyz;
  r0.xyzw = r0.xyzw + r0.xyzw;
  r1.xyzw = t1.Sample(s0_s, v2.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}"
}
}
}
}
}