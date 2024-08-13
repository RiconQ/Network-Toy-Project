//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CubeCopy" {
Properties {
_MainTex ("Main", Cube) = "" { }
_Level ("Level", Float) = 0
}
SubShader {
 LOD 200
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 200
  Tags { "RenderType" = "Opaque" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 64560
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: dfc14db65a3f7486
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
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
"// hash: e7ec0322be395449
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = t0.SampleLevel(s0_s, v1.xyz, cb0[2].x).xyzw;
  return;
}"
}
}
}
}
SubShader {
 LOD 200
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 200
  Tags { "RenderType" = "Opaque" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 123954
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: dfc14db65a3f7486
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 5f3e2ba9b14f9f1
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
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
"// hash: e7ec0322be395449
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = t0.SampleLevel(s0_s, v1.xyz, cb0[2].x).xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6af302428fe5bff4
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = t0.SampleBias(s0_s, v1.xyz, cb0[2].x).xyzw;
  return;
}"
}
}
}
}
}