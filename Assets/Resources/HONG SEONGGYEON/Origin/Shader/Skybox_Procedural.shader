//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Skybox/Procedural" {
Properties {
[KeywordEnum(None, Simple, High Quality)] _SunDisk ("Sun", Float) = 2
_SunSize ("Sun Size", Range(0, 1)) = 0.04
_AtmosphereThickness ("Atmoshpere Thickness", Range(0, 5)) = 1
_SkyTint ("Sky Tint", Color) = (0.5,0.5,0.5,1)
_GroundColor ("Ground", Color) = (0.369,0.349,0.341,1)
_Exposure ("Exposure", Range(0, 8)) = 1.3
}
SubShader {
 Tags { "PreviewType" = "Skybox" "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Tags { "PreviewType" = "Skybox" "QUEUE" = "Background" "RenderType" = "Background" }
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 24335
Program "vp" {
SubProgram "d3d9 " {
Keywords { "_SUNDISK_NONE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_NONE" }
"// hash: caccca3ae75fa9dc
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float o1 : TEXCOORD0,
  out float3 p1 : TEXCOORD1,
  out float3 o2 : TEXCOORD2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = log2(cb0[5].yzw);
  r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  o1.x = -50 * r2.z;
  r0.xyz = cb0[4].yzw * r3.xyz + r4.xyz;
  p1.xyz = cb0[4].xxx * r0.xyz;
  r0.x = dot(cb1[0].xyz, -r2.xzw);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * 0.75 + 0.75;
  r0.xyz = r4.xyz * r0.xxx;
  o2.xyz = cb0[4].xxx * r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_NONE" }
"// hash: 7ea540a594ecea1b
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float o1 : TEXCOORD0,
  out float3 p1 : TEXCOORD1,
  out float3 o2 : TEXCOORD2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = float3(1,1,1) + -cb0[5].yzw;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  o1.x = -50 * r2.z;
  r0.xyz = cb0[4].yzw * cb0[4].yzw;
  r0.xyz = r0.xyz * r3.xyz + r4.xyz;
  r0.xyz = cb0[4].xxx * r0.xyz;
  r0.w = dot(cb1[0].xyz, -r2.xzw);
  r0.w = r0.w * r0.w;
  r0.w = r0.w * 0.75 + 0.75;
  r1.xyz = r4.xyz * r0.www;
  r1.xyz = cb0[4].xxx * r1.xyz;
  p1.xyz = sqrt(r0.xyz);
  o2.xyz = sqrt(r1.xyz);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_SUNDISK_SIMPLE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_SIMPLE" }
"// hash: 4526001bba16ac8f
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = log2(cb0[5].yzw);
  r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  r0.xyz = cb0[4].yzw * r3.xyz + r4.xyz;
  o2.xyz = cb0[4].xxx * r0.xyz;
  r0.x = dot(cb1[0].xyz, -r2.xzw);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * 0.75 + 0.75;
  r0.xyz = r4.xyz * r0.xxx;
  o3.xyz = cb0[4].xxx * r0.xyz;
  r0.xyz = cb0[2].xyz * r3.xyz;
  o4.xyz = cb0[4].xxx * r0.xyz;
  o1.xyz = -r2.xzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_SIMPLE" }
"// hash: 5d6fe50ee1d90115
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = float3(1,1,1) + -cb0[5].yzw;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  r0.xyz = cb0[4].yzw * cb0[4].yzw;
  r0.xyz = r0.xyz * r3.xyz + r4.xyz;
  r0.xyz = cb0[4].xxx * r0.xyz;
  r0.w = dot(cb1[0].xyz, -r2.xzw);
  r0.w = r0.w * r0.w;
  r0.w = r0.w * 0.75 + 0.75;
  r1.xyz = r4.xyz * r0.www;
  r1.xyz = cb0[4].xxx * r1.xyz;
  r3.xyz = cb0[2].xyz * r3.xyz;
  r3.xyz = cb0[4].xxx * r3.xyz;
  o2.xyz = sqrt(r0.xyz);
  o3.xyz = sqrt(r1.xyz);
  o4.xyz = sqrt(r3.xyz);
  o1.xyz = -r2.xzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// hash: cca3635775068b42
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = log2(cb0[5].yzw);
  r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  o1.xyz = -v0.xyz;
  r0.xyz = cb0[4].yzw * r3.xyz + r4.xyz;
  o2.xyz = cb0[4].xxx * r0.xyz;
  r0.x = dot(cb1[0].xyz, -r2.xzw);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * 0.75 + 0.75;
  r0.xyz = r4.xyz * r0.xxx;
  o3.xyz = cb0[4].xxx * r0.xyz;
  r0.xyz = cb0[2].xyz * r3.xyz;
  o4.xyz = cb0[4].xxx * r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// hash: 50de78daa700d67f
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xyz = float3(1,1,1) + -cb0[5].yzw;
  r0.xyz = r0.xyz * float3(0.300000012,0.300000042,0.300000012) + float3(0.5,0.419999987,0.324999988);
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = float3(1,1,1) / r0.xyz;
  r0.w = log2(cb0[6].x);
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = float2(0.049999997,0.0314159282) * r0.ww;
  r2.xyz = cb2[13].xyz * v0.yyy;
  r2.xyz = cb2[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v0.zzz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xzw = r2.xyz * r0.www;
  r1.z = cmp(r2.z >= 0);
  if (r1.z != 0) {
    r1.z = r2.z * r2.z + 0.0506249666;
    r1.z = sqrt(r1.z);
    r0.w = -r2.y * r0.w + r1.z;
    r1.z = -r2.z * 1 + 1;
    r1.w = r1.z * 5.25 + -6.80000019;
    r1.w = r1.z * r1.w + 3.82999992;
    r1.w = r1.z * r1.w + 0.458999991;
    r1.z = r1.z * r1.w + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r3.xy = float2(0.5,20) * r0.ww;
    r4.xyz = r3.xxx * r2.xzw;
    r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 1 + -r0.w;
    r1.zw = float2(0.246031836,230.831207) * r1.zw;
    r1.w = exp2(r1.w);
    r2.y = dot(cb1[0].xyz, r4.xyz);
    r2.y = r2.y / r0.w;
    r3.z = dot(r2.xzw, r4.xyz);
    r0.w = r3.z / r0.w;
    r2.y = 1 + -r2.y;
    r3.z = r2.y * 5.25 + -6.80000019;
    r3.z = r2.y * r3.z + 3.82999992;
    r3.z = r2.y * r3.z + 0.458999991;
    r2.y = r2.y * r3.z + -0.00286999997;
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r0.w = 1 + -r0.w;
    r3.z = r0.w * 5.25 + -6.80000019;
    r3.z = r0.w * r3.z + 3.82999992;
    r3.z = r0.w * r3.z + 0.458999991;
    r0.w = r0.w * r3.z + -0.00286999997;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r2.y * 0.25 + -r0.w;
    r0.w = r1.w * r0.w + r1.z;
    r0.w = max(0, r0.w);
    r0.w = min(50, r0.w);
    r5.xyz = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r6.xyz = r5.xyz * -r0.www;
    r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r0.w = r1.w * r3.y;
    r3.xzw = r2.xzw * r3.xxx + r4.xyz;
    r1.w = dot(r3.xzw, r3.xzw);
    r1.w = sqrt(r1.w);
    r2.y = 1 + -r1.w;
    r2.y = 230.831207 * r2.y;
    r2.y = exp2(r2.y);
    r4.x = dot(cb1[0].xyz, r3.xzw);
    r4.x = r4.x / r1.w;
    r3.x = dot(r2.xzw, r3.xzw);
    r1.w = r3.x / r1.w;
    r3.x = 1 + -r4.x;
    r3.z = r3.x * 5.25 + -6.80000019;
    r3.z = r3.x * r3.z + 3.82999992;
    r3.z = r3.x * r3.z + 0.458999991;
    r3.x = r3.x * r3.z + -0.00286999997;
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r1.w = 1 + -r1.w;
    r3.z = r1.w * 5.25 + -6.80000019;
    r3.z = r1.w * r3.z + 3.82999992;
    r3.z = r1.w * r3.z + 0.458999991;
    r1.w = r1.w * r3.z + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r1.w = 0.25 * r1.w;
    r1.w = r3.x * 0.25 + -r1.w;
    r1.z = r2.y * r1.w + r1.z;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r3.xzw = -r1.zzz * r5.xyz;
    r3.xzw = float3(1.44269502,1.44269502,1.44269502) * r3.xzw;
    r3.xzw = exp2(r3.xzw);
    r1.z = r2.y * r3.y;
    r3.xyz = r3.xzw * r1.zzz;
    r3.xyz = r6.xyz * r0.www + r3.xyz;
    r4.xyz = r1.xxx * r0.xyz;
    r4.xyz = r4.xyz * r3.xyz;
    r3.xyz = float3(0.0199999996,0.0199999996,0.0199999996) * r3.xyz;
  } else {
    r0.w = min(-0.00100000005, r2.z);
    r0.w = -9.99999975e-05 / r0.w;
    r5.xyz = r0.www * r2.xzw + float3(0,1.00010002,0);
    r1.z = dot(-r2.xzw, r5.xyz);
    r1.w = dot(cb1[0].xyz, r5.xyz);
    r1.zw = float2(1,1) + -r1.zw;
    r2.y = r1.z * 5.25 + -6.80000019;
    r2.y = r1.z * r2.y + 3.82999992;
    r2.y = r1.z * r2.y + 0.458999991;
    r1.z = r1.z * r2.y + -0.00286999997;
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r2.y = r1.w * 5.25 + -6.80000019;
    r2.y = r1.w * r2.y + 3.82999992;
    r2.y = r1.w * r2.y + 0.458999991;
    r1.w = r1.w * r2.y + -0.00286999997;
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r5.xy = float2(0.25,0.249900013) * r1.zz;
    r1.z = r1.w * 0.25 + r5.x;
    r5.xz = float2(0.5,20) * r0.ww;
    r6.xyz = r5.xxx * r2.xzw;
    r6.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0,1.00010002,0);
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r0.w = 1 + -r0.w;
    r0.w = 230.831207 * r0.w;
    r0.w = exp2(r0.w);
    r1.z = r0.w * r1.z + -r5.y;
    r1.z = max(0, r1.z);
    r1.z = min(50, r1.z);
    r5.xyw = r0.xyz * r1.yyy + float3(0.0125663709,0.0125663709,0.0125663709);
    r1.yzw = r5.xyw * -r1.zzz;
    r1.yzw = float3(1.44269502,1.44269502,1.44269502) * r1.yzw;
    r3.xyz = exp2(r1.yzw);
    r0.w = r0.w * r5.z;
    r1.yzw = r3.xyz * r0.www;
    r0.xyz = r0.xyz * r1.xxx + float3(0.0199999996,0.0199999996,0.0199999996);
    r4.xyz = r1.yzw * r0.xyz;
  }
  o1.xyz = -v0.xyz;
  r0.xyz = cb0[4].yzw * cb0[4].yzw;
  r0.xyz = r0.xyz * r3.xyz + r4.xyz;
  r0.xyz = cb0[4].xxx * r0.xyz;
  r0.w = dot(cb1[0].xyz, -r2.xzw);
  r0.w = r0.w * r0.w;
  r0.w = r0.w * 0.75 + 0.75;
  r1.xyz = r4.xyz * r0.www;
  r1.xyz = cb0[4].xxx * r1.xyz;
  r2.xyz = cb0[2].xyz * r3.xyz;
  r2.xyz = cb0[4].xxx * r2.xyz;
  o2.xyz = sqrt(r0.xyz);
  o3.xyz = sqrt(r1.xyz);
  o4.xyz = sqrt(r2.xyz);
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "_SUNDISK_NONE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_NONE" }
"// hash: 29f9c303ebb9ddc9



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float v1 : TEXCOORD0,
  float3 w1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(v1.x);
  r0.yzw = -v2.xyz + w1.xyz;
  o0.xyz = r0.xxx * r0.yzw + v2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_NONE" }
"// hash: 3cbb46b1678e702



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float v1 : TEXCOORD0,
  float3 w1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(v1.x);
  r0.yzw = -v2.xyz + w1.xyz;
  o0.xyz = r0.xxx * r0.yzw + v2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_SUNDISK_SIMPLE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_SIMPLE" }
"// hash: 57d36f570e967593
cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[0].xyz + v1.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 1 / cb0[5].x;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r0.x = r0.x * r0.x;
  r0.x = 8000 * r0.x;
  r0.y = saturate(50 * v1.y);
  r1.xyz = -v3.xyz + v2.xyz;
  r0.yzw = r0.yyy * r1.xyz + v3.xyz;
  r1.xyz = r0.xxx * v4.xyz + r0.yzw;
  r0.x = cmp(v1.y < 0);
  o0.xyz = r0.xxx ? r1.xyz : r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_SIMPLE" }
"// hash: 120e24e06724695f
cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[0].xyz + v1.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 1 / cb0[5].x;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r0.x = r0.x * r0.x;
  r0.x = 8000 * r0.x;
  r0.y = saturate(50 * v1.y);
  r1.xyz = -v3.xyz + v2.xyz;
  r0.yzw = r0.yyy * r1.xyz + v3.xyz;
  r1.xyz = r0.xxx * v4.xyz + r0.yzw;
  r0.x = cmp(v1.y < 0);
  o0.xyz = r0.xxx ? r1.xyz : r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// hash: 8236f65f27b43c3c
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = log2(cb0[5].x);
  r0.x = 0.649999976 * r0.x;
  r0.x = exp2(r0.x);
  r0.yzw = cb2[13].xyz * v1.yyy;
  r0.yzw = cb2[12].xyz * v1.xxx + r0.yzw;
  r0.yzw = cb2[14].xyz * v1.zzz + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.y = dot(cb1[0].xyz, r0.yzw);
  r0.w = -r0.y * -1.98000002 + 1.98010004;
  r0.y = r0.y * r0.y + 1;
  r0.xy = float2(10,0.0100164423) * r0.xy;
  r0.w = log2(r0.w);
  r0.x = r0.x * r0.w;
  r0.x = exp2(r0.x);
  r0.x = max(9.99999975e-05, r0.x);
  r0.x = r0.y / r0.x;
  r0.y = saturate(50 * r0.z);
  r0.z = cmp(r0.z < 0);
  r1.xyz = -v3.xyz + v2.xyz;
  r1.xyz = r0.yyy * r1.xyz + v3.xyz;
  r0.xyw = r0.xxx * v4.xyz + r1.xyz;
  o0.xyz = r0.zzz ? r0.xyw : r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_SUNDISK_HIGH_QUALITY" }
"// hash: 5b0ba1f17075dc15
cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = log2(cb0[5].x);
  r0.x = 0.649999976 * r0.x;
  r0.x = exp2(r0.x);
  r0.yzw = cb2[13].xyz * v1.yyy;
  r0.yzw = cb2[12].xyz * v1.xxx + r0.yzw;
  r0.yzw = cb2[14].xyz * v1.zzz + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.y = dot(cb1[0].xyz, r0.yzw);
  r0.w = -r0.y * -1.98000002 + 1.98010004;
  r0.y = r0.y * r0.y + 1;
  r0.xy = float2(10,0.0100164423) * r0.xy;
  r0.w = log2(r0.w);
  r0.x = r0.x * r0.w;
  r0.x = exp2(r0.x);
  r0.x = max(9.99999975e-05, r0.x);
  r0.x = r0.y / r0.x;
  r0.x = log2(r0.x);
  r0.x = 0.454544991 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = saturate(50 * r0.z);
  r0.z = cmp(r0.z < 0);
  r1.xyz = -v3.xyz + v2.xyz;
  r1.xyz = r0.yyy * r1.xyz + v3.xyz;
  r0.xyw = r0.xxx * v4.xyz + r1.xyz;
  o0.xyz = r0.zzz ? r0.xyw : r1.xyz;
  o0.w = 1;
  return;
}"
}
}
}
}
}