//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-GUITextureBlit" {
Properties {
_MainTex ("Texture", any) = "white" { }
}
SubShader {
 Tags { "ForceSupported" = "true" }
 Pass {
  Tags { "ForceSupported" = "true" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 13913
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 2d4cbc46e045139b
cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0,
  out float2 p2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  r0.xy = cb1[5].xy * v0.yy;
  r0.xy = cb1[4].xy * v0.xx + r0.xy;
  r0.xy = cb1[6].xy * v0.zz + r0.xy;
  r0.xy = cb1[7].xy + r0.xy;
  r0.yz = cb0[5].xy * r0.yy;
  r0.xy = cb0[4].xy * r0.xx + r0.yz;
  p2.xy = cb0[7].xy + r0.xy;
  o2.xy = v2.xy * cb0[2].xy + cb0[2].zw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 77e5e1a63c6997f0
cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0,
  out float2 p2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  r0.xy = cb1[5].xy * v0.yy;
  r0.xy = cb1[4].xy * v0.xx + r0.xy;
  r0.xy = cb1[6].xy * v0.zz + r0.xy;
  r0.xy = cb1[7].xy + r0.xy;
  r0.yz = cb0[5].xy * r0.yy;
  r0.xy = cb0[4].xy * r0.xx + r0.yz;
  p2.xy = cb0[7].xy + r0.xy;
  o2.xy = v2.xy * cb0[2].xy + cb0[2].zw;
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
"// hash: d5844fdc71eab2af
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  o0.xyz = v1.xyz * r0.xyz;
  r0.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  o0.w = v1.w * r0.w;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 3cc6ec213a782f94
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  o0.xyz = v1.xyz * r0.xyz;
  r0.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  o0.w = v1.w * r0.w;
  return;
}"
}
}
}
}
}