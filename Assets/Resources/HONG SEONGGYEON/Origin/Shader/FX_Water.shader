//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "FX/Water" {
Properties {
_WaveScale ("Wave scale", Range(0.02, 0.15)) = 0.063
_ReflDistort ("Reflection distort", Range(0, 1.5)) = 0.44
_RefrDistort ("Refraction distort", Range(0, 1.5)) = 0.4
_RefrColor ("Refraction color", Color) = (0.34,0.85,0.92,1)
[NoScaleOffset] _Fresnel ("Fresnel (A) ", 2D) = "gray" { }
[NoScaleOffset] _BumpMap ("Normalmap ", 2D) = "bump" { }
WaveSpeed ("Wave speed (map1 x,y; map2 x,y)", Vector) = (19,9,-16,-7)
[NoScaleOffset] _ReflectiveColor ("Reflective color (RGB) fresnel (A) ", 2D) = "" { }
_HorizonColor ("Simple water horizon color", Color) = (0.172,0.463,0.435,1)
[HideInInspector] _ReflectionTex ("Internal Reflection", 2D) = "" { }
[HideInInspector] _RefractionTex ("Internal Refraction", 2D) = "" { }
}
SubShader {
 Tags { "RenderType" = "Opaque" "WaterMode" = "Refractive" }
 Pass {
  Tags { "RenderType" = "Opaque" "WaterMode" = "Refractive" }
  ZClip Off
  GpuProgramID 33646
Program "vp" {
SubProgram "d3d9 " {
Keywords { "WATER_REFRACTIVE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_REFRACTIVE" }
"// hash: 46f868d6aa043f13
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
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
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float2 o2 : TEXCOORD1,
  out float2 p2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o2.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o3.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_REFRACTIVE" }
"// hash: ac5b702ae7d7e644
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
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
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float2 o2 : TEXCOORD1,
  out float2 p2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o2.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o3.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "WATER_REFLECTIVE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_REFLECTIVE" }
"// hash: 46f868d6aa043f13
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
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
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float2 o2 : TEXCOORD1,
  out float2 p2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o2.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o3.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_REFLECTIVE" }
"// hash: ac5b702ae7d7e644
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
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
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float2 o2 : TEXCOORD1,
  out float2 p2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o2.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o3.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "WATER_SIMPLE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_SIMPLE" }
"// hash: 9389b0a44f1de553
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float3 o2 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o1.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o2.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_SIMPLE" }
"// hash: 7d1c7bd629143420
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float3 o2 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  r0.xyzw = cb2[13].xzzx * v0.yyyy;
  r0.xyzw = cb2[12].xzzx * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xzzx * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xzzx * v0.wwww + r0.xyzw;
  o1.xyzw = r0.xyzw * cb0[2].xywz + cb0[3].xywz;
  r0.xyz = cb2[13].xzy * v0.yyy;
  r0.xyz = cb2[12].xzy * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xzy * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xzy * v0.www + r0.xyz;
  o2.xyz = cb1[4].xzy + -r0.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "WATER_REFRACTIVE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_REFRACTIVE" }
"// hash: 48234015394b93a8
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  float2 w2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s3_s, v2.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s3_s, w2.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r1.xy = r0.xy * cb0[4].xx + v1.xy;
  r1.xy = r1.xy / v1.ww;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r2.xy = -r0.xy * cb0[4].yy + v1.xy;
  r2.xy = r2.xy / v1.ww;
  r2.xyzw = t2.Sample(s2_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw * cb0[5].xyzw + r1.xyzw;
  r2.xyzw = cb0[5].xyzw * r2.xyzw;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v3.xyz * r0.www;
  r0.x = dot(r3.xyz, r0.xyz);
  r0.xyzw = t3.Sample(s1_s, r0.xx).xyzw;
  o0.xyzw = r0.wwww * r1.xyzw + r2.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_REFRACTIVE" }
"// hash: d38327106bc11eb9
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  float2 w2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s3_s, v2.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s3_s, w2.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r1.xy = r0.xy * cb0[4].xx + v1.xy;
  r1.xy = r1.xy / v1.ww;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r2.xy = -r0.xy * cb0[4].yy + v1.xy;
  r2.xy = r2.xy / v1.ww;
  r2.xyzw = t2.Sample(s2_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw * cb0[5].xyzw + r1.xyzw;
  r2.xyzw = cb0[5].xyzw * r2.xyzw;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v3.xyz * r0.www;
  r0.x = dot(r3.xyz, r0.xyz);
  r0.xyzw = t3.Sample(s1_s, r0.xx).xyzw;
  o0.xyzw = r0.wwww * r1.xyzw + r2.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "WATER_REFLECTIVE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_REFLECTIVE" }
"// hash: ac9346f10d086832
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  float2 w2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v2.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s2_s, w2.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r1.xy = r0.xy * cb0[4].xx + v1.xy;
  r1.xy = r1.xy / v1.ww;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v3.xyz * r0.www;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.xyzw = t2.Sample(s1_s, r0.xx).xyzw;
  r1.xyz = r1.xyz + -r0.xyz;
  o0.w = r1.w * r0.w;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_REFLECTIVE" }
"// hash: 495f6040c1eeda67
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  float2 w2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v2.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s2_s, w2.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r1.xy = r0.xy * cb0[4].xx + v1.xy;
  r1.xy = r1.xy / v1.ww;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v3.xyz * r0.www;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.xyzw = t2.Sample(s1_s, r0.xx).xyzw;
  r1.xyz = r1.xyz + -r0.xyz;
  o0.w = r1.w * r0.w;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "WATER_SIMPLE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "WATER_SIMPLE" }
"// hash: 6b4802c6a736aa3e
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
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s1_s, w1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.xyzw = t1.Sample(s0_s, r0.xx).xyzw;
  r1.xyz = cb0[4].xyz + -r0.xyz;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  o0.w = cb0[4].w;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "WATER_SIMPLE" }
"// hash: 95b3c73669e721eb
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
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xy = r0.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = sqrt(r0.w);
  r1.xyzw = t0.Sample(s1_s, w1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.xyzw = t1.Sample(s0_s, r0.xx).xyzw;
  r1.xyz = cb0[4].xyz + -r0.xyz;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  o0.w = cb0[4].w;
  return;
}"
}
}
}
}
}