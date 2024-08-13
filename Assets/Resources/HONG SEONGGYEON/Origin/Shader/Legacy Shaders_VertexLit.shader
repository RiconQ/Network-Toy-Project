//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Legacy Shaders/VertexLit" {
Properties {
_Color ("Main Color", Color) = (1,1,1,1)
_SpecColor ("Spec Color", Color) = (1,1,1,1)
_Emission ("Emissive Color", Color) = (0,0,0,0)
_Shininess ("Shininess", Range(0.01, 1)) = 0.7
_MainTex ("Base (RGB)", 2D) = "white" { }
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "LIGHTMODE" = "Vertex" "RenderType" = "Opaque" }
  ZClip Off
  Fog {
   Mode Off
  }
  GpuProgramID 84581
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: c38226d83811acac
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r3.w = dot(r1.xyz, cb1[r2.w+14].xyz);
    r3.w = max(0, r3.w);
    r5.xyz = cb0[2].xyz * r3.www;
    r5.xyz = cb1[r2.w+6].xyz * r5.xyz;
    r3.w = cmp(0 < r3.w);
    if (r3.w != 0) {
      r6.xyz = -r0.xyz * r0.www + cb1[r2.w+14].xyz;
      r3.w = dot(r6.xyz, r6.xyz);
      r3.w = rsqrt(r3.w);
      r6.xyz = r6.xyz * r3.www;
      r3.w = dot(r1.xyz, r6.xyz);
      r3.w = max(0, r3.w);
      r3.w = log2(r3.w);
      r3.w = r3.w * r1.w;
      r3.w = exp2(r3.w);
      r3.w = min(1, r3.w);
      r3.w = 0.5 * r3.w;
      r4.xyz = r3.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: c31f0ce6d63a38e8
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r3.w = dot(r1.xyz, cb1[r2.w+14].xyz);
    r3.w = max(0, r3.w);
    r5.xyz = cb0[2].xyz * r3.www;
    r5.xyz = cb1[r2.w+6].xyz * r5.xyz;
    r3.w = cmp(0 < r3.w);
    if (r3.w != 0) {
      r6.xyz = -r0.xyz * r0.www + cb1[r2.w+14].xyz;
      r3.w = dot(r6.xyz, r6.xyz);
      r3.w = rsqrt(r3.w);
      r6.xyz = r6.xyz * r3.www;
      r3.w = dot(r1.xyz, r6.xyz);
      r3.w = max(0, r3.w);
      r3.w = log2(r3.w);
      r3.w = r3.w * r1.w;
      r3.w = exp2(r3.w);
      r3.w = min(1, r3.w);
      r3.w = 0.5 * r3.w;
      r4.xyz = r3.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: edb2a771f06a7680
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[30];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r5.xyz = -r0.xyz * cb1[r2.w+14].www + cb1[r2.w+14].xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r4.w = cb1[r2.w+22].z * r3.w + 1;
    r4.w = 1 / r4.w;
    r5.w = cmp(0.000000 != cb1[r2.w+14].w);
    r6.x = cmp(cb1[r2.w+22].w < r3.w);
    r5.w = r5.w ? r6.x : 0;
    r3.w = max(9.99999997e-07, r3.w);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = 0.5 * r4.w;
    r3.w = r5.w ? 0 : r3.w;
    r4.w = dot(r1.xyz, r5.xyz);
    r4.w = max(0, r4.w);
    r6.xyz = cb0[2].xyz * r4.www;
    r6.xyz = cb1[r2.w+6].xyz * r6.xyz;
    r4.w = cmp(0 < r4.w);
    if (r4.w != 0) {
      r5.xyz = -r0.xyz * r0.www + r5.xyz;
      r4.w = dot(r5.xyz, r5.xyz);
      r4.w = rsqrt(r4.w);
      r5.xyz = r5.xyz * r4.www;
      r4.w = dot(r1.xyz, r5.xyz);
      r4.w = max(0, r4.w);
      r4.w = log2(r4.w);
      r4.w = r4.w * r1.w;
      r4.w = exp2(r4.w);
      r4.w = min(1, r4.w);
      r4.w = r4.w * r3.w;
      r4.xyz = r4.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = r6.xyz * r3.www;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: 792c5a8004146230
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[30];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r5.xyz = -r0.xyz * cb1[r2.w+14].www + cb1[r2.w+14].xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r4.w = cb1[r2.w+22].z * r3.w + 1;
    r4.w = 1 / r4.w;
    r5.w = cmp(0.000000 != cb1[r2.w+14].w);
    r6.x = cmp(cb1[r2.w+22].w < r3.w);
    r5.w = r5.w ? r6.x : 0;
    r3.w = max(9.99999997e-07, r3.w);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = 0.5 * r4.w;
    r3.w = r5.w ? 0 : r3.w;
    r4.w = dot(r1.xyz, r5.xyz);
    r4.w = max(0, r4.w);
    r6.xyz = cb0[2].xyz * r4.www;
    r6.xyz = cb1[r2.w+6].xyz * r6.xyz;
    r4.w = cmp(0 < r4.w);
    if (r4.w != 0) {
      r5.xyz = -r0.xyz * r0.www + r5.xyz;
      r4.w = dot(r5.xyz, r5.xyz);
      r4.w = rsqrt(r4.w);
      r5.xyz = r5.xyz * r4.www;
      r4.w = dot(r1.xyz, r5.xyz);
      r4.w = max(0, r4.w);
      r4.w = log2(r4.w);
      r4.w = r4.w * r1.w;
      r4.w = exp2(r4.w);
      r4.w = min(1, r4.w);
      r4.w = r4.w * r3.w;
      r4.xyz = r4.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = r6.xyz * r3.www;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// hash: 565f0b336a296001
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[38];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r5.xyz = -r0.xyz * cb1[r2.w+14].www + cb1[r2.w+14].xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r4.w = cb1[r2.w+22].z * r3.w + 1;
    r4.w = 1 / r4.w;
    r5.w = cmp(0.000000 != cb1[r2.w+14].w);
    r6.x = cmp(cb1[r2.w+22].w < r3.w);
    r5.w = r5.w ? r6.x : 0;
    r4.w = r5.w ? 0 : r4.w;
    r3.w = max(9.99999997e-07, r3.w);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = dot(r5.xyz, cb1[r2.w+30].xyz);
    r3.w = max(0, r3.w);
    r3.w = -cb1[r2.w+22].x + r3.w;
    r3.w = saturate(cb1[r2.w+22].y * r3.w);
    r3.w = r4.w * r3.w;
    r3.w = 0.5 * r3.w;
    r4.w = dot(r1.xyz, r5.xyz);
    r4.w = max(0, r4.w);
    r6.xyz = cb0[2].xyz * r4.www;
    r6.xyz = cb1[r2.w+6].xyz * r6.xyz;
    r4.w = cmp(0 < r4.w);
    if (r4.w != 0) {
      r5.xyz = -r0.xyz * r0.www + r5.xyz;
      r4.w = dot(r5.xyz, r5.xyz);
      r4.w = rsqrt(r4.w);
      r5.xyz = r5.xyz * r4.www;
      r4.w = dot(r1.xyz, r5.xyz);
      r4.w = max(0, r4.w);
      r4.w = log2(r4.w);
      r4.w = r4.w * r1.w;
      r4.w = exp2(r4.w);
      r4.w = min(1, r4.w);
      r4.w = r4.w * r3.w;
      r4.xyz = r4.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = r6.xyz * r3.www;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: 7e3f23882a2c7d02
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[38];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float3 o1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = cb2[9].xyz * v1.yyy;
  r1.xyz = cb2[8].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * v1.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = cb0[2].xyz * cb3[0].xyz + cb0[4].xyz;
  r1.w = 128 * cb0[5].x;
  r3.xyz = r2.xyz;
  r4.xyz = float3(0,0,0);
  r2.w = 0;
  while (true) {
    r3.w = cmp((int)r2.w >= asint(cb0[6].x));
    if (r3.w != 0) break;
    r5.xyz = -r0.xyz * cb1[r2.w+14].www + cb1[r2.w+14].xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r4.w = cb1[r2.w+22].z * r3.w + 1;
    r4.w = 1 / r4.w;
    r5.w = cmp(0.000000 != cb1[r2.w+14].w);
    r6.x = cmp(cb1[r2.w+22].w < r3.w);
    r5.w = r5.w ? r6.x : 0;
    r4.w = r5.w ? 0 : r4.w;
    r3.w = max(9.99999997e-07, r3.w);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r3.w = dot(r5.xyz, cb1[r2.w+30].xyz);
    r3.w = max(0, r3.w);
    r3.w = -cb1[r2.w+22].x + r3.w;
    r3.w = saturate(cb1[r2.w+22].y * r3.w);
    r3.w = r4.w * r3.w;
    r3.w = 0.5 * r3.w;
    r4.w = dot(r1.xyz, r5.xyz);
    r4.w = max(0, r4.w);
    r6.xyz = cb0[2].xyz * r4.www;
    r6.xyz = cb1[r2.w+6].xyz * r6.xyz;
    r4.w = cmp(0 < r4.w);
    if (r4.w != 0) {
      r5.xyz = -r0.xyz * r0.www + r5.xyz;
      r4.w = dot(r5.xyz, r5.xyz);
      r4.w = rsqrt(r4.w);
      r5.xyz = r5.xyz * r4.www;
      r4.w = dot(r1.xyz, r5.xyz);
      r4.w = max(0, r4.w);
      r4.w = log2(r4.w);
      r4.w = r4.w * r1.w;
      r4.w = exp2(r4.w);
      r4.w = min(1, r4.w);
      r4.w = r4.w * r3.w;
      r4.xyz = r4.www * cb1[r2.w+6].xyz + r4.xyz;
    }
    r5.xyz = r6.xyz * r3.www;
    r5.xyz = min(float3(1,1,1), r5.xyz);
    r3.xyz = r5.xyz + r3.xyz;
    r2.w = (int)r2.w + 1;
  }
  o1.xyz = saturate(cb0[3].xyz * r4.xyz);
  o0.xyz = saturate(r3.xyz);
  o0.w = saturate(cb0[2].w);
  o2.xy = v2.xy * cb0[7].xy + cb0[7].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb2[3].xyzw + r0.xyzw;
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
"// hash: 72b7a33e58a3c5da
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: c1d0e16f594d933d
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 72b7a33e58a3c5da
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: c1d0e16f594d933d
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" }
"// hash: 72b7a33e58a3c5da
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: c1d0e16f594d933d
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float3 v1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyz = v0.xyz * r0.xyz;
  o0.xyz = r0.xyz * float3(2,2,2) + v1.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  LOD 100
  Tags { "LIGHTMODE" = "VertexLM" "RenderType" = "Opaque" }
  ZClip Off
  Fog {
   Mode Off
  }
  GpuProgramID 175433
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 205e38d4d95c6a69
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float3 v0 : POSITION0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,1);
  o1.xy = v1.xy * cb2[0].xy + cb2[0].zw;
  p1.xy = v2.xy * cb0[2].xy + cb0[2].zw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o2.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 61f5ac224d9ae4a8
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float3 v0 : POSITION0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,1);
  o1.xy = v1.xy * cb2[0].xy + cb2[0].zw;
  p1.xy = v2.xy * cb0[2].xy + cb0[2].zw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o2.xyzw = cb1[3].xyzw + r0.xyzw;
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
"// hash: ff90d3e84724510a
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[3].xyz * r0.xyz;
  r1.xyzw = t0.Sample(s1_s, w1.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: eeba5d0e078755c8
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[3].xyz * r0.xyz;
  r1.xyzw = t1.Sample(s1_s, w1.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  LOD 100
  Tags { "LIGHTMODE" = "VertexLMRGBM" "RenderType" = "Opaque" }
  ZClip Off
  Fog {
   Mode Off
  }
  GpuProgramID 207922
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 477302264cb03c4d
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float3 v0 : POSITION0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,1);
  o1.xy = v1.xy * cb2[0].xy + cb2[0].zw;
  p1.xy = v1.xy * cb0[2].xy + cb0[2].zw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 736bc72c8083a2d0
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float3 v0 : POSITION0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD0,
  out float4 o0 : COLOR0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,1);
  o1.xy = v1.xy * cb2[0].xy + cb2[0].zw;
  p1.xy = v1.xy * cb0[2].xy + cb0[2].zw;
  o2.xy = v2.xy * cb0[3].xy + cb0[3].zw;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb1[3].xyzw + r0.xyzw;
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
"// hash: 43188e7b540d35fb
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = r0.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s1_s, v2.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = float3(4,4,4) * r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: e4eb1cd922e3bcfe
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : COLOR0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = r0.xyz + r0.xyz;
  r1.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = float3(4,4,4) * r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "SHADOWCASTER"
  LOD 100
  Tags { "LIGHTMODE" = "SHADOWCASTER" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 37263
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// hash: 928d8295b19585eb
cbuffer cb3 : register(b3)
{
  float4 cb3[21];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb0[0].www + cb0[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = -r0.w * r0.w + 1;
  r0.w = sqrt(r0.w);
  r0.w = cb1[5].z * r0.w;
  r0.xyz = -r2.xyz * r0.www + r0.xyz;
  r1.xyzw = cb3[18].xyzw * r0.yyyy;
  r1.xyzw = cb3[17].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb3[19].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb3[20].xyzw + r0.xyzw;
  r1.xyzw = cb2[1].xyzw * v0.yyyy;
  r1.xyzw = cb2[0].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[2].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[3].xyzw + r1.xyzw;
  r2.x = cmp(cb1[5].z != 0.000000);
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.x = cb1[5].x / r0.w;
  r1.x = min(0, r1.x);
  r1.x = max(-1, r1.x);
  r0.z = r1.x + r0.z;
  r1.x = min(r0.z, r0.w);
  o0.xyw = r0.xyw;
  r0.x = r1.x + -r0.z;
  o0.z = cb1[5].y * r0.x + r0.z;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// hash: 7cd5a58fa054e52b
cbuffer cb1 : register(b1)
{
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  out float3 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o0.xyz = -cb0[1].xyz + r0.xyz;
  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// hash: c69f0c42d4ac0be



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// hash: 5b724996cc622f1
cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[5].x + r0.x;
  o0.xyzw = cb0[1].wwww * r0.xxxx;
  return;
}"
}
}
}
}
}