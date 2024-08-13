//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-MotionVectors" {
Properties {
}
SubShader {
 Pass {
  Tags { "LIGHTMODE" = "MotionVectors" }
  ZClip Off
  ZWrite Off
  GpuProgramID 45796
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: e7c6389f2680c475
cbuffer cb1 : register(b1)
{
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r0.xyz = v1.xyz;
  r0.w = 1;
  r0.xyzw = cb0[14].xxxx ? r0.xyzw : v0.xyzw;
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o2.z = -cb0[14].z * r0.w + r0.z;
  o2.xyw = r0.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 395c7daf8bb9248d
cbuffer cb1 : register(b1)
{
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r0.xyz = v1.xyz;
  r0.w = 1;
  r0.xyzw = cb0[14].xxxx ? r0.xyzw : v0.xyzw;
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o2.z = cb0[14].z * r0.w + r0.z;
  o2.xyw = r0.xyw;
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
"// hash: 2358bf99e643714c
cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy / v0.ww;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  r0.yw = v1.xy / v1.ww;
  r0.yw = float2(1,1) + r0.yw;
  r1.x = 0.5 * r0.y;
  r1.z = -r0.w * 0.5 + 1;
  r0.xy = -r1.xz + r0.xz;
  r1.x = cb0[14].y ? 1 : 0;
  r0.zw = float2(0,1);
  o0.xyzw = r1.xxxx * -r0.xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: fe54f15abddaa4ee
cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy / v0.ww;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  r0.yw = v1.xy / v1.ww;
  r0.yw = float2(1,1) + r0.yw;
  r1.x = 0.5 * r0.y;
  r1.z = -r0.w * 0.5 + 1;
  r0.xy = -r1.xz + r0.xz;
  r1.x = cb0[14].y ? 1 : 0;
  r0.zw = float2(0,1);
  o0.xyzw = r1.xxxx * -r0.xyzw + r0.xyzw;
  return;
}"
}
}
}
 Pass {
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 127170
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: a50f851f4b4eea77
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb0[5].x * r0.y;
  r0.xz = float2(0.5,0.5) * r0.xw;
  r0.w = 0.5 * r0.y;
  o1.xy = r0.xw + r0.zz;
  o2.xyz = v1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6bebbb73fdd7e1ce
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb0[5].x * r0.y;
  r0.xz = float2(0.5,0.5) * r0.xw;
  r0.w = 0.5 * r0.y;
  o1.xy = r0.xw + r0.zz;
  o2.xyz = v1.xyz;
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
"// hash: 3315a135238852b3
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = cb1[7].x * r0.x + cb1[7].y;
  r0.x = 1 / r0.x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r0.xyz = r0.yzw * r0.xxx;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = cb0[7].xyw * r0.yyy;
  r1.xyz = cb0[6].xyw * r0.xxx + r1.xyz;
  r1.xyz = cb0[8].xyw * r0.zzz + r1.xyz;
  r1.xyz = cb0[9].xyw * r0.www + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r1.xy = float2(1,1) + r1.xy;
  r1.x = 0.5 * r1.x;
  r1.z = -r1.y * 0.5 + 1;
  r2.xyz = cb0[3].xyw * r0.yyy;
  r2.xyz = cb0[2].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[4].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[5].xyw * r0.www + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  o0.xy = r0.xz + -r1.xz;
  o0.zw = float2(0,1);
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 570cb6cf59a89c09
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = cb1[7].x * r0.x + cb1[7].y;
  r0.x = 1 / r0.x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r0.xyz = r0.yzw * r0.xxx;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = cb0[7].xyw * r0.yyy;
  r1.xyz = cb0[6].xyw * r0.xxx + r1.xyz;
  r1.xyz = cb0[8].xyw * r0.zzz + r1.xyz;
  r1.xyz = cb0[9].xyw * r0.www + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r1.xy = float2(1,1) + r1.xy;
  r1.x = 0.5 * r1.x;
  r1.z = -r1.y * 0.5 + 1;
  r2.xyz = cb0[3].xyw * r0.yyy;
  r2.xyz = cb0[2].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[4].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[5].xyw * r0.www + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  o0.xy = r0.xz + -r1.xz;
  o0.zw = float2(0,1);
  return;
}"
}
}
}
 Pass {
  ZClip Off
  ZTest Always
  Cull Off
  GpuProgramID 149776
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: a50f851f4b4eea77
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb0[5].x * r0.y;
  r0.xz = float2(0.5,0.5) * r0.xw;
  r0.w = 0.5 * r0.y;
  o1.xy = r0.xw + r0.zz;
  o2.xyz = v1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6bebbb73fdd7e1ce
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb0[5].x * r0.y;
  r0.xz = float2(0.5,0.5) * r0.xw;
  r0.w = 0.5 * r0.y;
  o1.xy = r0.xw + r0.zz;
  o2.xyz = v1.xyz;
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
"// hash: a26e09b7ac1ce891
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_Depth)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.w = cb1[7].x * r1.x + cb1[7].y;
  oDepth = r1.x;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = cb0[7].xyw * r0.yyy;
  r1.xyz = cb0[6].xyw * r0.xxx + r1.xyz;
  r1.xyz = cb0[8].xyw * r0.zzz + r1.xyz;
  r1.xyz = cb0[9].xyw * r0.www + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r1.xy = float2(1,1) + r1.xy;
  r1.x = 0.5 * r1.x;
  r1.z = -r1.y * 0.5 + 1;
  r2.xyz = cb0[3].xyw * r0.yyy;
  r2.xyz = cb0[2].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[4].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[5].xyw * r0.www + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  o0.xy = r0.xz + -r1.xz;
  o0.zw = float2(0,1);
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 69d6589a46a708f7
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_Depth)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.w = cb1[7].x * r1.x + cb1[7].y;
  oDepth = r1.x;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = cb0[7].xyw * r0.yyy;
  r1.xyz = cb0[6].xyw * r0.xxx + r1.xyz;
  r1.xyz = cb0[8].xyw * r0.zzz + r1.xyz;
  r1.xyz = cb0[9].xyw * r0.www + r1.xyz;
  r1.xy = r1.xy / r1.zz;
  r1.xy = float2(1,1) + r1.xy;
  r1.x = 0.5 * r1.x;
  r1.z = -r1.y * 0.5 + 1;
  r2.xyz = cb0[3].xyw * r0.yyy;
  r2.xyz = cb0[2].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[4].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[5].xyw * r0.www + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.xy = float2(1,1) + r0.xy;
  r0.x = 0.5 * r0.x;
  r0.z = -r0.y * 0.5 + 1;
  o0.xy = r0.xz + -r1.xz;
  o0.zw = float2(0,1);
  return;
}"
}
}
}
}
}