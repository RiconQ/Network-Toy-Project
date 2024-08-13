//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-CombineDepthNormals" {
Properties {
}
SubShader {
 Pass {
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 30285
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: cc1e510cde083359
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v1.xy * cb0[2].xy + cb0[2].zw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: fe1e8ccb77c88206
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v1.xy * cb0[2].xy + cb0[2].zw;
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
"// hash: bae2b5372cc96f9a
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[17];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyz = cb1[15].xyz * r0.yyy;
  r0.xyw = cb1[14].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[16].xyz * r0.zzz + r0.xyw;
  r0.z = 1 + -r0.z;
  r0.xy = r0.xy / r0.zz;
  r0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.x = cb0[7].x * r1.x + cb0[7].y;
  r1.x = 1 / r1.x;
  r1.y = cmp(r1.x < 0.999984622);
  r1.xz = float2(1,255) * r1.xx;
  r1.xz = frac(r1.xz);
  r0.z = -r1.z * 0.00392156886 + r1.x;
  r0.w = r1.z;
  o0.xyzw = r1.yyyy ? r0.xyzw : float4(0.5,0.5,1,1);
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 12c25995719c68ee
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[17];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyz = cb1[15].xyz * r0.yyy;
  r0.xyw = cb1[14].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[16].xyz * r0.zzz + r0.xyw;
  r0.z = 1 + -r0.z;
  r0.xy = r0.xy / r0.zz;
  r0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.x = cb0[7].x * r1.x + cb0[7].y;
  r1.x = 1 / r1.x;
  r1.y = cmp(r1.x < 0.999984622);
  r1.xz = float2(1,255) * r1.xx;
  r1.xz = frac(r1.xz);
  r0.z = -r1.z * 0.00392156886 + r1.x;
  r0.w = r1.z;
  o0.xyzw = r1.yyyy ? r0.xyzw : float4(0.5,0.5,1,1);
  return;
}"
}
}
}
}
}