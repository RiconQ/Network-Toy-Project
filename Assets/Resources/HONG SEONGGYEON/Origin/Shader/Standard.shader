//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Standard" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Albedo", 2D) = "white" { }
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_Glossiness ("Smoothness", Range(0, 1)) = 0.5
_GlossMapScale ("Smoothness Scale", Range(0, 1)) = 1
[Enum(Metallic Alpha,0,Albedo Alpha,1)] _SmoothnessTextureChannel ("Smoothness texture channel", Float) = 0
[Gamma] _Metallic ("Metallic", Range(0, 1)) = 0
_MetallicGlossMap ("Metallic", 2D) = "white" { }
[ToggleOff] _SpecularHighlights ("Specular Highlights", Float) = 1
[ToggleOff] _GlossyReflections ("Glossy Reflections", Float) = 1
_BumpScale ("Scale", Float) = 1
_BumpMap ("Normal Map", 2D) = "bump" { }
_Parallax ("Height Scale", Range(0.005, 0.08)) = 0.02
_ParallaxMap ("Height Map", 2D) = "black" { }
_OcclusionStrength ("Strength", Range(0, 1)) = 1
_OcclusionMap ("Occlusion", 2D) = "white" { }
_EmissionColor ("Color", Color) = (0,0,0,1)
_EmissionMap ("Emission", 2D) = "white" { }
_DetailMask ("Detail Mask", 2D) = "white" { }
_DetailAlbedoMap ("Detail Albedo x2", 2D) = "grey" { }
_DetailNormalMapScale ("Scale", Float) = 1
_DetailNormalMap ("Normal Map", 2D) = "bump" { }
[Enum(UV0,0,UV1,1)] _UVSec ("UV Set for secondary textures", Float) = 0
[HideInInspector] _Mode ("__mode", Float) = 0
[HideInInspector] _SrcBlend ("__src", Float) = 1
[HideInInspector] _DstBlend ("__dst", Float) = 0
[HideInInspector] _ZWrite ("__zw", Float) = 1
}
SubShader {
 LOD 300
 Tags { "PerformanceChecks" = "False" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 300
  Tags { "LIGHTMODE" = "ForwardBase" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZClip Off
  ZWrite Off
  GpuProgramID 58821
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: e0f8b52e56adb295
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: 62d735c7df747fd2
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r1.w = r1.y * r1.y;
  r1.w = r1.x * r1.x + -r1.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r1.x = dot(cb2[41].xyzw, r2.xyzw);
  r1.y = dot(cb2[42].xyzw, r2.xyzw);
  r1.z = dot(cb2[43].xyzw, r2.xyzw);
  o6.xyz = cb2[44].xyz * r1.www + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// hash: e637d6a11d93f993
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyzw = cb2[3].xyzw + -r0.yyyy;
  r3.xyzw = r2.xyzw * r1.yyyy;
  r2.xyzw = r2.xyzw * r2.xyzw;
  r4.xyzw = cb2[2].xyzw + -r0.xxxx;
  r3.xyzw = r4.xyzw * r1.xxxx + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r4.xyzw = cb2[4].xyzw + -r0.zzzz;
  o7.xyz = r0.xyz;
  r0.xyzw = r4.xyzw * r1.zzzz + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r2.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r2.xyzw);
  r3.xyzw = rsqrt(r2.xyzw);
  r2.xyzw = r2.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r2.xyzw = float4(1,1,1,1) / r2.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r2.xyzw;
  r2.xyz = cb2[7].xyz * r0.yyy;
  r2.xyz = cb2[6].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  r1.xyz = cb2[44].xyz * r0.www + r2.xyz;
  o6.xyz = r1.xyz + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// hash: 5b35bf31c1751a82
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyzw = cb2[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r2.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r1.xxxx;
  r4.xyzw = r5.xyzw * r2.xxxx + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r5.xyzw = cb2[4].xyzw + -r1.zzzz;
  o8.xyz = r1.xyz;
  r1.xyzw = r5.xyzw * r2.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r3.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r3.xyzw);
  r4.xyzw = rsqrt(r3.xyzw);
  r3.xyzw = r3.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r3.xyzw = float4(1,1,1,1) / r3.xyzw;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * r3.xyzw;
  r3.xyz = cb2[7].xyz * r1.yyy;
  r3.xyz = cb2[6].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r3.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r2.xyzw = r2.xyzz * r2.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r1.www + r3.xyz;
  o6.xyz = r2.xyz + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: e0f8b52e56adb295
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// hash: 62d735c7df747fd2
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r1.w = r1.y * r1.y;
  r1.w = r1.x * r1.x + -r1.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r1.x = dot(cb2[41].xyzw, r2.xyzw);
  r1.y = dot(cb2[42].xyzw, r2.xyzw);
  r1.z = dot(cb2[43].xyzw, r2.xyzw);
  o6.xyz = cb2[44].xyz * r1.www + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: e637d6a11d93f993
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyzw = cb2[3].xyzw + -r0.yyyy;
  r3.xyzw = r2.xyzw * r1.yyyy;
  r2.xyzw = r2.xyzw * r2.xyzw;
  r4.xyzw = cb2[2].xyzw + -r0.xxxx;
  r3.xyzw = r4.xyzw * r1.xxxx + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r4.xyzw = cb2[4].xyzw + -r0.zzzz;
  o7.xyz = r0.xyz;
  r0.xyzw = r4.xyzw * r1.zzzz + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r2.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r2.xyzw);
  r3.xyzw = rsqrt(r2.xyzw);
  r2.xyzw = r2.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r2.xyzw = float4(1,1,1,1) / r2.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r2.xyzw;
  r2.xyz = cb2[7].xyz * r0.yyy;
  r2.xyz = cb2[6].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  r1.xyz = cb2[44].xyz * r0.www + r2.xyz;
  o6.xyz = r1.xyz + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 5b35bf31c1751a82
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyzw = cb2[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r2.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r1.xxxx;
  r4.xyzw = r5.xyzw * r2.xxxx + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r5.xyzw = cb2[4].xyzw + -r1.zzzz;
  o8.xyz = r1.xyz;
  r1.xyzw = r5.xyzw * r2.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r3.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r3.xyzw);
  r4.xyzw = rsqrt(r3.xyzw);
  r3.xyzw = r3.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r3.xyzw = float4(1,1,1,1) / r3.xyzw;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * r3.xyzw;
  r3.xyz = cb2[7].xyz * r1.yyy;
  r3.xyz = cb2[6].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r3.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r2.xyzw = r2.xyzz * r2.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r1.www + r3.xyz;
  o6.xyz = r2.xyz + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: e0f8b52e56adb295
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 62d735c7df747fd2
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r1.w = r1.y * r1.y;
  r1.w = r1.x * r1.x + -r1.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r1.x = dot(cb2[41].xyzw, r2.xyzw);
  r1.y = dot(cb2[42].xyzw, r2.xyzw);
  r1.z = dot(cb2[43].xyzw, r2.xyzw);
  o6.xyz = cb2[44].xyz * r1.www + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: e637d6a11d93f993
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyzw = cb2[3].xyzw + -r0.yyyy;
  r3.xyzw = r2.xyzw * r1.yyyy;
  r2.xyzw = r2.xyzw * r2.xyzw;
  r4.xyzw = cb2[2].xyzw + -r0.xxxx;
  r3.xyzw = r4.xyzw * r1.xxxx + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r4.xyzw = cb2[4].xyzw + -r0.zzzz;
  o7.xyz = r0.xyz;
  r0.xyzw = r4.xyzw * r1.zzzz + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r2.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r2.xyzw);
  r3.xyzw = rsqrt(r2.xyzw);
  r2.xyzw = r2.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r2.xyzw = float4(1,1,1,1) / r2.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r2.xyzw;
  r2.xyz = cb2[7].xyz * r0.yyy;
  r2.xyz = cb2[6].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  r1.xyz = cb2[44].xyz * r0.www + r2.xyz;
  o6.xyz = r1.xyz + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5b35bf31c1751a82
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyzw = cb2[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r2.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r1.xxxx;
  r4.xyzw = r5.xyzw * r2.xxxx + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r5.xyzw = cb2[4].xyzw + -r1.zzzz;
  o8.xyz = r1.xyz;
  r1.xyzw = r5.xyzw * r2.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r3.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r3.xyzw);
  r4.xyzw = rsqrt(r3.xyzw);
  r3.xyzw = r3.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r3.xyzw = float4(1,1,1,1) / r3.xyzw;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * r3.xyzw;
  r3.xyz = cb2[7].xyz * r1.yyy;
  r3.xyz = cb2[6].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r3.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r2.xyzw = r2.xyzz * r2.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r1.www + r3.xyz;
  o6.xyz = r2.xyz + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: e0f8b52e56adb295
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 62d735c7df747fd2
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r1.w = r1.y * r1.y;
  r1.w = r1.x * r1.x + -r1.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r1.x = dot(cb2[41].xyzw, r2.xyzw);
  r1.y = dot(cb2[42].xyzw, r2.xyzw);
  r1.z = dot(cb2[43].xyzw, r2.xyzw);
  o6.xyz = cb2[44].xyz * r1.www + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: e637d6a11d93f993
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyzw = cb2[3].xyzw + -r0.yyyy;
  r3.xyzw = r2.xyzw * r1.yyyy;
  r2.xyzw = r2.xyzw * r2.xyzw;
  r4.xyzw = cb2[2].xyzw + -r0.xxxx;
  r3.xyzw = r4.xyzw * r1.xxxx + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r4.xyzw = cb2[4].xyzw + -r0.zzzz;
  o7.xyz = r0.xyz;
  r0.xyzw = r4.xyzw * r1.zzzz + r3.xyzw;
  r2.xyzw = r4.xyzw * r4.xyzw + r2.xyzw;
  r2.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r2.xyzw);
  r3.xyzw = rsqrt(r2.xyzw);
  r2.xyzw = r2.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r2.xyzw = float4(1,1,1,1) / r2.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r2.xyzw;
  r2.xyz = cb2[7].xyz * r0.yyy;
  r2.xyz = cb2[6].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  r1.xyz = cb2[44].xyz * r0.www + r2.xyz;
  o6.xyz = r1.xyz + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: b965e2381ae15f9a
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5b35bf31c1751a82
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyzw = cb2[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r2.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r1.xxxx;
  r4.xyzw = r5.xyzw * r2.xxxx + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r5.xyzw = cb2[4].xyzw + -r1.zzzz;
  o8.xyz = r1.xyz;
  r1.xyzw = r5.xyzw * r2.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r3.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r3.xyzw);
  r4.xyzw = rsqrt(r3.xyzw);
  r3.xyzw = r3.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r3.xyzw = float4(1,1,1,1) / r3.xyzw;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * r3.xyzw;
  r3.xyz = cb2[7].xyz * r1.yyy;
  r3.xyz = cb2[6].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r3.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r2.xyzw = r2.xyzz * r2.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r1.www + r3.xyz;
  o6.xyz = r2.xyz + r1.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2de3f2a8e5d5d0eb
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  r1.xyz = cb2[13].xyz * v5.yyy;
  r1.xyz = cb2[12].xyz * v5.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v5.zzz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o3.xyz = r1.xyz;
  o3.w = 0;
  r2.x = dot(v1.xyz, cb2[16].xyz);
  r2.y = dot(v1.xyz, cb2[17].xyz);
  r2.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = r2.zxy * r1.yzx;
  r1.xyz = r2.yzx * r1.zxy + -r3.xyz;
  o5.xyz = r2.xyz;
  r1.w = cb2[21].w * v5.w;
  o4.xyz = r1.xyz * r1.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: c063971f3b23a039
Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r3.w = 1 + -cb0[9].y;
  r3.w = r4.y * cb0[9].y + r3.w;
  r4.x = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.x = cmp(cb3[0].x == 1.000000);
  if (r5.x != 0) {
    r5.x = cmp(cb3[0].y == 1.000000);
    r5.yzw = cb3[2].xyz * v7.yyy;
    r5.yzw = cb3[1].xyz * v7.xxx + r5.yzw;
    r5.yzw = cb3[3].xyz * v7.zzz + r5.yzw;
    r5.yzw = cb3[4].xyz + r5.yzw;
    r5.xyz = r5.xxx ? r5.yzw : v7.xyz;
    r5.xyz = -cb3[6].xyz + r5.xyz;
    r5.yzw = cb3[5].xyz * r5.xyz;
    r5.y = 0.25 * r5.y;
    r6.x = 0.5 * cb3[0].z;
    r6.y = -cb3[0].z * 0.5 + 0.25;
    r5.y = max(r6.x, r5.y);
    r5.x = min(r5.y, r6.y);
    r6.xyzw = t4.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t4.Sample(s1_s, r5.xyz).xyzw;
    r2.w = 1;
    r6.x = dot(r6.xyzw, r2.xyzw);
    r6.y = dot(r7.xyzw, r2.xyzw);
    r6.z = dot(r5.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r6.x = dot(cb1[38].xyzw, r2.xyzw);
    r6.y = dot(cb1[39].xyzw, r2.xyzw);
    r6.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r5.xyz = v6.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r6.xyz = r4.yzw * r2.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r2.w = min(r7.x, r7.y);
    r2.w = min(r2.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r2.www + r7.xyz;
  } else {
    r6.xyz = r4.yzw;
  }
  r2.w = -r4.x * 0.699999988 + 1.70000005;
  r2.w = r4.x * r2.w;
  r2.w = 6 * r2.w;
  r6.xyzw = t2.SampleLevel(s0_s, r6.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.yzw;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.yzw = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t3.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r8.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.yzw;
    r7.xyz = cb2[1].www * r6.xyz + r4.yzw;
  }
  r4.yzw = r7.xyz * r3.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r2.w = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r4.xx);
  r2.z = -0.5 + r2.z;
  r3.x = 1 + -r2.w;
  r3.y = r3.x * r3.x;
  r3.y = r3.y * r3.y;
  r3.x = r3.y * r3.x;
  r3.x = r2.z * r3.x + 1;
  r3.y = 1 + -abs(r1.w);
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r2.z = r2.z * r3.y + 1;
  r2.z = r3.x * r2.z;
  r2.z = r2.z * r2.w;
  r3.x = r4.x * r4.x;
  r3.z = -r4.x * r4.x + 1;
  r4.x = abs(r1.w) * r3.z + r3.x;
  r3.z = r2.w * r3.z + r3.x;
  r1.w = r3.z * abs(r1.w);
  r1.w = r2.w * r4.x + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.z = r3.x * r3.x;
  r4.x = r2.x * r3.z + -r2.x;
  r2.x = r4.x * r2.x + 1;
  r3.z = 0.318309873 * r3.z;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.z / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r2.w;
  r1.w = max(0, r1.w);
  r2.x = r3.x * r3.x + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r6.xyz = cb0[2].xyz * r2.zzz;
  r3.xzw = r5.xyz * r3.www + r6.xyz;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xzw + r2.yzw;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xzw = r0.www + -r0.xyz;
  r0.xyz = r3.yyy * r3.xzw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// hash: adb6832048c999af
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t4.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: 45ab5edbc039e70b
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r4.w = dot(r2.xyz, r6.xyz);
  r4.w = 0.5 + r4.w;
  r5.xyz = r5.xyz * r4.www;
  r4.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r4.www;
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: 77e808b0b1954522
Texture3D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.w = 1 + -cb0[9].y;
  r3.w = r5.y * cb0[9].y + r3.w;
  r4.y = 1 + -cb0[8].w;
  r4.z = dot(r3.xyz, r2.xyz);
  r4.z = r4.z + r4.z;
  r5.xyz = r2.xyz * -r4.zzz + r3.xyz;
  r4.xzw = cb0[2].xyz * r4.xxx;
  r5.w = cmp(cb3[0].x == 1.000000);
  if (r5.w != 0) {
    r5.w = cmp(cb3[0].y == 1.000000);
    r6.xyz = cb3[2].xyz * v8.yyy;
    r6.xyz = cb3[1].xyz * v8.xxx + r6.xyz;
    r6.xyz = cb3[3].xyz * v8.zzz + r6.xyz;
    r6.xyz = cb3[4].xyz + r6.xyz;
    r6.xyz = r5.www ? r6.xyz : v8.xyz;
    r6.xyz = -cb3[6].xyz + r6.xyz;
    r6.yzw = cb3[5].xyz * r6.xyz;
    r5.w = 0.25 * r6.y;
    r6.y = 0.5 * cb3[0].z;
    r7.x = -cb3[0].z * 0.5 + 0.25;
    r5.w = max(r6.y, r5.w);
    r6.x = min(r5.w, r7.x);
    r7.xyzw = t5.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r2.w = 1;
    r7.x = dot(r7.xyzw, r2.xyzw);
    r7.y = dot(r8.xyzw, r2.xyzw);
    r7.z = dot(r6.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r7.x = dot(cb1[38].xyzw, r2.xyzw);
    r7.y = dot(cb1[39].xyzw, r2.xyzw);
    r7.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r6.xyz = v6.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r5.xyz * r2.www;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r2.w = min(r8.x, r8.y);
    r2.w = min(r2.w, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r2.www + r8.xyz;
  } else {
    r7.xyz = r5.xyz;
  }
  r2.w = -r4.y * 0.699999988 + 1.70000005;
  r2.w = r4.y * r2.w;
  r2.w = 6 * r2.w;
  r7.xyzw = t3.SampleLevel(s0_s, r7.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r5.xyz, r5.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r5.xyz;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r5.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t4.SampleLevel(s0_s, r5.xyz, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r5.x = log2(r9.w);
    r5.x = cb2[7].y * r5.x;
    r5.x = exp2(r5.x);
    r2.w = r2.w ? r5.x : 1;
    r2.w = cb2[7].x * r2.w;
    r5.xyz = r2.www * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r5.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r5.xyz;
  }
  r5.xyz = r8.xyz * r3.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r2.w = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r4.yy);
  r2.z = -0.5 + r2.z;
  r3.x = 1 + -r2.w;
  r3.y = r3.x * r3.x;
  r3.y = r3.y * r3.y;
  r3.x = r3.y * r3.x;
  r3.x = r2.z * r3.x + 1;
  r3.y = 1 + -abs(r1.w);
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r2.z = r2.z * r3.y + 1;
  r2.z = r3.x * r2.z;
  r2.z = r2.z * r2.w;
  r3.x = r4.y * r4.y;
  r3.z = -r4.y * r4.y + 1;
  r4.y = abs(r1.w) * r3.z + r3.x;
  r3.z = r2.w * r3.z + r3.x;
  r1.w = r3.z * abs(r1.w);
  r1.w = r2.w * r4.y + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.z = r3.x * r3.x;
  r4.y = r2.x * r3.z + -r2.x;
  r2.x = r4.y * r2.x + 1;
  r3.z = 0.318309873 * r3.z;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.z / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r2.w;
  r1.w = max(0, r1.w);
  r2.x = r3.x * r3.x + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r7.xyz = r4.xzw * r2.zzz;
  r3.xzw = r6.xyz * r3.www + r7.xyz;
  r4.xyz = r1.www * r4.xzw;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r4.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xzw + r2.yzw;
  r2.xyz = r2.xxx * r5.xyz;
  r3.xzw = r0.www + -r0.xyz;
  r0.xyz = r3.yyy * r3.xzw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// hash: 8b864222b0dd781c
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: 4ab2cd9bc9142593
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r4.x = dot(r2.xyz, r7.xyz);
  r4.x = 0.5 + r4.x;
  r6.xyz = r6.xyz * r4.xxx;
  r4.x = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r4.xxx;
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: 47a587ceeff07213
Texture3D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r3.w = 1 + -cb0[9].y;
  r3.w = r4.y * cb0[9].y + r3.w;
  r4.x = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.x = cmp(cb3[0].x == 1.000000);
  if (r5.x != 0) {
    r5.x = cmp(cb3[0].y == 1.000000);
    r5.yzw = cb3[2].xyz * v7.yyy;
    r5.yzw = cb3[1].xyz * v7.xxx + r5.yzw;
    r5.yzw = cb3[3].xyz * v7.zzz + r5.yzw;
    r5.yzw = cb3[4].xyz + r5.yzw;
    r5.xyz = r5.xxx ? r5.yzw : v7.xyz;
    r5.xyz = -cb3[6].xyz + r5.xyz;
    r5.yzw = cb3[5].xyz * r5.xyz;
    r5.y = 0.25 * r5.y;
    r6.x = 0.5 * cb3[0].z;
    r6.y = -cb3[0].z * 0.5 + 0.25;
    r5.y = max(r6.x, r5.y);
    r5.x = min(r5.y, r6.y);
    r6.xyzw = t5.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t5.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t5.Sample(s1_s, r5.xyz).xyzw;
    r2.w = 1;
    r6.x = dot(r6.xyzw, r2.xyzw);
    r6.y = dot(r7.xyzw, r2.xyzw);
    r6.z = dot(r5.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r6.x = dot(cb1[38].xyzw, r2.xyzw);
    r6.y = dot(cb1[39].xyzw, r2.xyzw);
    r6.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r5.xyz = v6.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r6.xyz = r4.yzw * r2.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r2.w = min(r7.x, r7.y);
    r2.w = min(r2.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r2.www + r7.xyz;
  } else {
    r6.xyz = r4.yzw;
  }
  r2.w = -r4.x * 0.699999988 + 1.70000005;
  r2.w = r4.x * r2.w;
  r2.w = 6 * r2.w;
  r6.xyzw = t3.SampleLevel(s0_s, r6.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.yzw;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.yzw = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t4.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r8.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.yzw;
    r7.xyz = cb2[1].www * r6.xyz + r4.yzw;
  }
  r4.yzw = r7.xyz * r3.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r2.w = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r4.xx);
  r2.z = -0.5 + r2.z;
  r3.x = 1 + -r2.w;
  r3.y = r3.x * r3.x;
  r3.y = r3.y * r3.y;
  r3.x = r3.y * r3.x;
  r3.x = r2.z * r3.x + 1;
  r3.y = 1 + -abs(r1.w);
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r2.z = r2.z * r3.y + 1;
  r2.z = r3.x * r2.z;
  r2.z = r2.z * r2.w;
  r3.x = r4.x * r4.x;
  r3.z = -r4.x * r4.x + 1;
  r4.x = abs(r1.w) * r3.z + r3.x;
  r3.z = r2.w * r3.z + r3.x;
  r1.w = r3.z * abs(r1.w);
  r1.w = r2.w * r4.x + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.z = r3.x * r3.x;
  r4.x = r2.x * r3.z + -r2.x;
  r2.x = r4.x * r2.x + 1;
  r3.z = 0.318309873 * r3.z;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.z / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r2.w;
  r1.w = max(0, r1.w);
  r2.x = r3.x * r3.x + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r6.xyz = cb0[2].xyz * r2.zzz;
  r3.xzw = r5.xyz * r3.www + r6.xyz;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xzw + r2.yzw;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xzw = r0.www + -r0.xyz;
  r0.xyz = r3.yyy * r3.xzw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: fa5af5b0b0ef0704
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 679d5dc98a6459c7
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r4.w = dot(r2.xyz, r6.xyz);
  r4.w = 0.5 + r4.w;
  r5.xyz = r5.xyz * r4.www;
  r4.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r4.www;
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t5.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// hash: db8203b60299470e
Texture3D<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.w = 1 + -cb0[9].y;
  r3.w = r5.y * cb0[9].y + r3.w;
  r4.y = 1 + -cb0[8].w;
  r4.z = dot(r3.xyz, r2.xyz);
  r4.z = r4.z + r4.z;
  r5.xyz = r2.xyz * -r4.zzz + r3.xyz;
  r4.xzw = cb0[2].xyz * r4.xxx;
  r5.w = cmp(cb3[0].x == 1.000000);
  if (r5.w != 0) {
    r5.w = cmp(cb3[0].y == 1.000000);
    r6.xyz = cb3[2].xyz * v8.yyy;
    r6.xyz = cb3[1].xyz * v8.xxx + r6.xyz;
    r6.xyz = cb3[3].xyz * v8.zzz + r6.xyz;
    r6.xyz = cb3[4].xyz + r6.xyz;
    r6.xyz = r5.www ? r6.xyz : v8.xyz;
    r6.xyz = -cb3[6].xyz + r6.xyz;
    r6.yzw = cb3[5].xyz * r6.xyz;
    r5.w = 0.25 * r6.y;
    r6.y = 0.5 * cb3[0].z;
    r7.x = -cb3[0].z * 0.5 + 0.25;
    r5.w = max(r6.y, r5.w);
    r6.x = min(r5.w, r7.x);
    r7.xyzw = t6.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t6.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t6.Sample(s1_s, r6.xyz).xyzw;
    r2.w = 1;
    r7.x = dot(r7.xyzw, r2.xyzw);
    r7.y = dot(r8.xyzw, r2.xyzw);
    r7.z = dot(r6.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r7.x = dot(cb1[38].xyzw, r2.xyzw);
    r7.y = dot(cb1[39].xyzw, r2.xyzw);
    r7.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r6.xyz = v6.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r5.xyz * r2.www;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r2.w = min(r8.x, r8.y);
    r2.w = min(r2.w, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r2.www + r8.xyz;
  } else {
    r7.xyz = r5.xyz;
  }
  r2.w = -r4.y * 0.699999988 + 1.70000005;
  r2.w = r4.y * r2.w;
  r2.w = 6 * r2.w;
  r7.xyzw = t4.SampleLevel(s0_s, r7.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r5.xyz, r5.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r5.xyz;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r5.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t5.SampleLevel(s0_s, r5.xyz, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r5.x = log2(r9.w);
    r5.x = cb2[7].y * r5.x;
    r5.x = exp2(r5.x);
    r2.w = r2.w ? r5.x : 1;
    r2.w = cb2[7].x * r2.w;
    r5.xyz = r2.www * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r5.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r5.xyz;
  }
  r5.xyz = r8.xyz * r3.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r2.w = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r4.yy);
  r2.z = -0.5 + r2.z;
  r3.x = 1 + -r2.w;
  r3.y = r3.x * r3.x;
  r3.y = r3.y * r3.y;
  r3.x = r3.y * r3.x;
  r3.x = r2.z * r3.x + 1;
  r3.y = 1 + -abs(r1.w);
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r2.z = r2.z * r3.y + 1;
  r2.z = r3.x * r2.z;
  r2.z = r2.z * r2.w;
  r3.x = r4.y * r4.y;
  r3.z = -r4.y * r4.y + 1;
  r4.y = abs(r1.w) * r3.z + r3.x;
  r3.z = r2.w * r3.z + r3.x;
  r1.w = r3.z * abs(r1.w);
  r1.w = r2.w * r4.y + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.z = r3.x * r3.x;
  r4.y = r2.x * r3.z + -r2.x;
  r2.x = r4.y * r2.x + 1;
  r3.z = 0.318309873 * r3.z;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.z / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r2.w;
  r1.w = max(0, r1.w);
  r2.x = r3.x * r3.x + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r7.xyz = r4.xzw * r2.zzz;
  r3.xzw = r6.xyz * r3.www + r7.xyz;
  r4.xyz = r1.www * r4.xzw;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r4.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xzw + r2.yzw;
  r2.xyz = r2.xxx * r5.xyz;
  r3.xzw = r0.www + -r0.xyz;
  r0.xyz = r3.yyy * r3.xzw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 203ccc5c1328b167
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: db4a9a440dcb85c2
TextureCube<float4> t7 : register(t7);

TextureCube<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t5.Sample(s0_s, v6.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r4.x = dot(r2.xyz, r7.xyz);
  r4.x = 0.5 + r4.x;
  r6.xyz = r6.xyz * r4.xxx;
  r4.x = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r4.xxx;
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t6.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t7.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c117363944bfcbb
Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r3.x = dot(v2.xyz, v2.xyz);
  r3.x = rsqrt(r3.x);
  r3.yzw = v2.xyz * r3.xxx;
  r1.xyz = r1.xyz * r1.www;
  r4.x = 1 + -r0.w;
  o0.w = r1.w * r0.w + r4.x;
  r5.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.yzw, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.yzw;
  r5.x = cmp(cb3[0].x == 1.000000);
  if (r5.x != 0) {
    r5.x = cmp(cb3[0].y == 1.000000);
    r5.yzw = cb3[2].xyz * v7.yyy;
    r5.yzw = cb3[1].xyz * v7.xxx + r5.yzw;
    r5.yzw = cb3[3].xyz * v7.zzz + r5.yzw;
    r5.yzw = cb3[4].xyz + r5.yzw;
    r5.xyz = r5.xxx ? r5.yzw : v7.xyz;
    r5.xyz = -cb3[6].xyz + r5.xyz;
    r5.yzw = cb3[5].xyz * r5.xyz;
    r5.y = 0.25 * r5.y;
    r6.x = 0.5 * cb3[0].z;
    r6.y = -cb3[0].z * 0.5 + 0.25;
    r5.y = max(r6.x, r5.y);
    r5.x = min(r5.y, r6.y);
    r6.xyzw = t4.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t4.Sample(s1_s, r5.xyz).xyzw;
    r2.w = 1;
    r6.x = dot(r6.xyzw, r2.xyzw);
    r6.y = dot(r7.xyzw, r2.xyzw);
    r6.z = dot(r5.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r6.x = dot(cb1[38].xyzw, r2.xyzw);
    r6.y = dot(cb1[39].xyzw, r2.xyzw);
    r6.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r5.xyz = v6.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r6.xyz = r4.yzw * r2.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r2.w = min(r7.x, r7.y);
    r2.w = min(r2.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r2.www + r7.xyz;
  } else {
    r6.xyz = r4.yzw;
  }
  r2.w = -r1.w * 0.699999988 + 1.70000005;
  r2.w = r2.w * r1.w;
  r2.w = 6 * r2.w;
  r6.xyzw = t2.SampleLevel(s0_s, r6.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.yzw;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.yzw = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t3.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r8.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.yzw;
    r7.xyz = cb2[1].www * r6.xyz + r4.yzw;
  }
  r4.yzw = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r3.xxx + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.yzw);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r3.w = r3.z * r3.z;
  r3.w = r3.w * r3.w;
  r3.z = r3.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r3.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r3.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r3.w = r2.x * r2.w + -r2.x;
  r2.x = r3.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r4.x);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a478d9b54c034d4d
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t4.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7f2717b0ac434ba
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r4.w = dot(r2.xyz, r6.xyz);
  r4.w = 0.5 + r4.w;
  r5.xyz = r5.xyz * r4.www;
  r4.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r4.www;
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 17e2c8cd4f57d524
Texture3D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r3.x = dot(v2.xyz, v2.xyz);
  r3.x = rsqrt(r3.x);
  r3.yzw = v2.xyz * r3.xxx;
  r1.xyz = r1.xyz * r1.www;
  r4.x = 1 + -r0.w;
  o0.w = r1.w * r0.w + r4.x;
  r4.yz = v7.xy / v7.ww;
  r5.xyzw = t1.Sample(s4_s, r4.yz).xyzw;
  r6.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r6.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.yzw, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.yzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r5.w = cmp(cb3[0].x == 1.000000);
  if (r5.w != 0) {
    r5.w = cmp(cb3[0].y == 1.000000);
    r6.xyz = cb3[2].xyz * v8.yyy;
    r6.xyz = cb3[1].xyz * v8.xxx + r6.xyz;
    r6.xyz = cb3[3].xyz * v8.zzz + r6.xyz;
    r6.xyz = cb3[4].xyz + r6.xyz;
    r6.xyz = r5.www ? r6.xyz : v8.xyz;
    r6.xyz = -cb3[6].xyz + r6.xyz;
    r6.yzw = cb3[5].xyz * r6.xyz;
    r5.w = 0.25 * r6.y;
    r6.y = 0.5 * cb3[0].z;
    r7.x = -cb3[0].z * 0.5 + 0.25;
    r5.w = max(r6.y, r5.w);
    r6.x = min(r5.w, r7.x);
    r7.xyzw = t5.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r2.w = 1;
    r7.x = dot(r7.xyzw, r2.xyzw);
    r7.y = dot(r8.xyzw, r2.xyzw);
    r7.z = dot(r6.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r7.x = dot(cb1[38].xyzw, r2.xyzw);
    r7.y = dot(cb1[39].xyzw, r2.xyzw);
    r7.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r6.xyz = v6.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r7.xyz = r4.yzw * r2.www;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r2.w = min(r8.x, r8.y);
    r2.w = min(r2.w, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r2.www + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r2.w = -r1.w * 0.699999988 + 1.70000005;
  r2.w = r2.w * r1.w;
  r2.w = 6 * r2.w;
  r7.xyzw = t3.SampleLevel(s0_s, r7.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t4.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r9.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.yzw;
    r8.xyz = cb2[1].www * r7.xyz + r4.yzw;
  }
  r4.yzw = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r3.xxx + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.yzw);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r3.w = r3.z * r3.z;
  r3.w = r3.w * r3.w;
  r3.z = r3.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r3.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r3.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r3.w = r2.x * r2.w + -r2.x;
  r2.x = r3.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r4.x);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 14faa01699898805
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: e3ed5e2596d8c9c2
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r4.x = dot(r2.xyz, r7.xyz);
  r4.x = 0.5 + r4.x;
  r6.xyz = r6.xyz * r4.xxx;
  r4.x = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r4.xxx;
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: d9d935cb727ac10b
Texture3D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r3.x = dot(v2.xyz, v2.xyz);
  r3.x = rsqrt(r3.x);
  r3.yzw = v2.xyz * r3.xxx;
  r1.xyz = r1.xyz * r1.www;
  r4.x = 1 + -r0.w;
  o0.w = r1.w * r0.w + r4.x;
  r5.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.yzw, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.yzw;
  r5.x = cmp(cb3[0].x == 1.000000);
  if (r5.x != 0) {
    r5.x = cmp(cb3[0].y == 1.000000);
    r5.yzw = cb3[2].xyz * v7.yyy;
    r5.yzw = cb3[1].xyz * v7.xxx + r5.yzw;
    r5.yzw = cb3[3].xyz * v7.zzz + r5.yzw;
    r5.yzw = cb3[4].xyz + r5.yzw;
    r5.xyz = r5.xxx ? r5.yzw : v7.xyz;
    r5.xyz = -cb3[6].xyz + r5.xyz;
    r5.yzw = cb3[5].xyz * r5.xyz;
    r5.y = 0.25 * r5.y;
    r6.x = 0.5 * cb3[0].z;
    r6.y = -cb3[0].z * 0.5 + 0.25;
    r5.y = max(r6.x, r5.y);
    r5.x = min(r5.y, r6.y);
    r6.xyzw = t5.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t5.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t5.Sample(s1_s, r5.xyz).xyzw;
    r2.w = 1;
    r6.x = dot(r6.xyzw, r2.xyzw);
    r6.y = dot(r7.xyzw, r2.xyzw);
    r6.z = dot(r5.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r6.x = dot(cb1[38].xyzw, r2.xyzw);
    r6.y = dot(cb1[39].xyzw, r2.xyzw);
    r6.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r5.xyz = v6.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r6.xyz = r4.yzw * r2.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r2.w = min(r7.x, r7.y);
    r2.w = min(r2.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r2.www + r7.xyz;
  } else {
    r6.xyz = r4.yzw;
  }
  r2.w = -r1.w * 0.699999988 + 1.70000005;
  r2.w = r2.w * r1.w;
  r2.w = 6 * r2.w;
  r6.xyzw = t3.SampleLevel(s0_s, r6.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.yzw;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.yzw = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t4.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r8.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.yzw;
    r7.xyz = cb2[1].www * r6.xyz + r4.yzw;
  }
  r4.yzw = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r3.xxx + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.yzw);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r3.w = r3.z * r3.z;
  r3.w = r3.w * r3.w;
  r3.z = r3.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r3.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r3.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r3.w = r2.x * r2.w + -r2.x;
  r2.x = r3.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r4.x);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 405b741fcff632e6
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: ba20ba3329a3c1a5
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r4.w = dot(r2.xyz, r6.xyz);
  r4.w = 0.5 + r4.w;
  r5.xyz = r5.xyz * r4.www;
  r4.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r4.www;
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t5.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 16135dd52d0a75db
Texture3D<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r3.x = dot(v2.xyz, v2.xyz);
  r3.x = rsqrt(r3.x);
  r3.yzw = v2.xyz * r3.xxx;
  r1.xyz = r1.xyz * r1.www;
  r4.x = 1 + -r0.w;
  o0.w = r1.w * r0.w + r4.x;
  r4.yz = v7.xy / v7.ww;
  r5.xyzw = t1.Sample(s5_s, r4.yz).xyzw;
  r6.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r6.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.yzw, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.yzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r5.w = cmp(cb3[0].x == 1.000000);
  if (r5.w != 0) {
    r5.w = cmp(cb3[0].y == 1.000000);
    r6.xyz = cb3[2].xyz * v8.yyy;
    r6.xyz = cb3[1].xyz * v8.xxx + r6.xyz;
    r6.xyz = cb3[3].xyz * v8.zzz + r6.xyz;
    r6.xyz = cb3[4].xyz + r6.xyz;
    r6.xyz = r5.www ? r6.xyz : v8.xyz;
    r6.xyz = -cb3[6].xyz + r6.xyz;
    r6.yzw = cb3[5].xyz * r6.xyz;
    r5.w = 0.25 * r6.y;
    r6.y = 0.5 * cb3[0].z;
    r7.x = -cb3[0].z * 0.5 + 0.25;
    r5.w = max(r6.y, r5.w);
    r6.x = min(r5.w, r7.x);
    r7.xyzw = t6.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t6.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t6.Sample(s1_s, r6.xyz).xyzw;
    r2.w = 1;
    r7.x = dot(r7.xyzw, r2.xyzw);
    r7.y = dot(r8.xyzw, r2.xyzw);
    r7.z = dot(r6.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r7.x = dot(cb1[38].xyzw, r2.xyzw);
    r7.y = dot(cb1[39].xyzw, r2.xyzw);
    r7.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r6.xyz = v6.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb2[2].w);
  if (r2.w != 0) {
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r7.xyz = r4.yzw * r2.www;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r2.w = min(r8.x, r8.y);
    r2.w = min(r2.w, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r2.www + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r2.w = -r1.w * 0.699999988 + 1.70000005;
  r2.w = r2.w * r1.w;
  r2.w = 6 * r2.w;
  r7.xyzw = t4.SampleLevel(s0_s, r7.xyz, r2.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t5.SampleLevel(s0_s, r4.yzw, r2.w).xyzw;
    r2.w = cmp(cb2[7].w == 1.000000);
    r4.y = log2(r9.w);
    r4.y = cb2[7].y * r4.y;
    r4.y = exp2(r4.y);
    r2.w = r2.w ? r4.y : 1;
    r2.w = cb2[7].x * r2.w;
    r4.yzw = r2.www * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.yzw;
    r8.xyz = cb2[1].www * r7.xyz + r4.yzw;
  }
  r4.yzw = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r3.xxx + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.yzw);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r3.w = r3.z * r3.z;
  r3.w = r3.w * r3.w;
  r3.z = r3.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r3.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r3.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r3.w = r2.x * r2.w + -r2.x;
  r2.x = r3.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r4.x);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.yzw;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: c16262b3a171fa7e
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: a3675b0c2f411458
TextureCube<float4> t7 : register(t7);

TextureCube<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t5.Sample(s0_s, v6.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r4.x = dot(r2.xyz, r7.xyz);
  r4.x = 0.5 + r4.x;
  r6.xyz = r6.xyz * r4.xxx;
  r4.x = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r4.xxx;
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t6.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t7.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  LOD 300
  Tags { "LIGHTMODE" = "ForwardAdd" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero One, Zero One
  ZClip Off
  ZWrite Off
  GpuProgramID 112610
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: a1d759076ff06fe5
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: d711b6ec1431229d
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
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
"// hash: 27ae0b23f6ba890e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// hash: a1d759076ff06fe5
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: 2556faf1fbd121e1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// hash: 7e499853561bddd0
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: da5968b3a6162596
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o6.zw = r0.zw;
  o6.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// hash: 238fabdc0104912b
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r1.xyzw = cb3[13].xyzw * v0.yyyy;
  r1.xyzw = cb3[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[12].xy * r1.yy;
  r1.xy = cb0[11].xy * r1.xx + r2.xy;
  r1.xy = cb0[13].xy * r1.zz + r1.xy;
  o6.xy = cb0[14].xy * r1.ww + r1.xy;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// hash: 1f6546917b4b81c2
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[16].xyzw * r0.yyyy;
  r1.xyzw = cb0[15].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[17].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[18].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: a1d759076ff06fe5
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: d711b6ec1431229d
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 27ae0b23f6ba890e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: a1d759076ff06fe5
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2556faf1fbd121e1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7e499853561bddd0
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: da5968b3a6162596
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o6.zw = r0.zw;
  o6.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 238fabdc0104912b
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r1.xyzw = cb3[13].xyzw * v0.yyyy;
  r1.xyzw = cb3[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[12].xy * r1.yy;
  r1.xy = cb0[11].xy * r1.xx + r2.xy;
  r1.xy = cb0[13].xy * r1.zz + r1.xy;
  o6.xy = cb0[14].xy * r1.ww + r1.xy;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1f6546917b4b81c2
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[16].xyzw * r0.yyyy;
  r1.xyzw = cb0[15].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[17].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[18].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5366928b54835773
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 41082a6c7f08a85e
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www + -r0.xyz;
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(r1.xyz, r2.xyz));
  r1.x = saturate(dot(r3.xyz, r1.xyz));
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = 1 + -cb0[8].w;
  r0.z = r0.y * r0.y;
  r1.y = r0.z * r0.z;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r0.y * r0.y + 1;
  r1.z = abs(r0.x) * r1.y + r0.z;
  r0.z = r1.x * r1.y + r0.z;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r1.x * r1.z + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.x;
  r0.z = max(0, r0.z);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r3.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = cb0[8].zzz * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r0.w = dot(v6.xyz, v6.xyz);
  r4.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r4.xyz = cb0[2].xyz * r4.xxx;
  r5.xyz = r4.xyz * r0.zzz;
  r0.z = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.y = dot(r0.ww, r0.yy);
  r0.y = -0.5 + r0.y;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r1.yzw = float3(1,1,1) + -r3.xyz;
  r1.yzw = r1.yzw * r0.zzz + r3.xyz;
  r1.yzw = r5.xyz * r1.yzw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x + 1;
  r0.z = 1 + -r1.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r1.x;
  r0.xyz = r4.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: e32bfbc5b8671f60
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.x = r2.w * r1.x;
  r3.xyz = cb0[2].xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r4.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r4.xyz * r0.zzz + r1.yzw;
  r1.xyz = r3.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
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
"// hash: 99349446af67cba8
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v6.xy / v6.ww;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.x = cmp(0 < v6.z);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r0.x * r0.w;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// hash: 98f07d757de45db8
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www + -r0.xyz;
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(r1.xyz, r2.xyz));
  r1.x = saturate(dot(r3.xyz, r1.xyz));
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = 1 + -cb0[8].w;
  r0.z = r0.y * r0.y;
  r1.y = r0.z * r0.z;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r0.y * r0.y + 1;
  r1.z = abs(r0.x) * r1.y + r0.z;
  r0.z = r1.x * r1.y + r0.z;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r1.x * r1.z + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.x;
  r0.z = max(0, r0.z);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r3.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = cb0[8].zzz * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r0.w = dot(v6.xyz, v6.xyz);
  r4.xyzw = t1.Sample(s2_s, r0.ww).xyzw;
  r5.xyzw = t2.Sample(s1_s, v6.xyz).xyzw;
  r0.w = r5.w * r4.x;
  r4.xyz = cb0[2].xyz * r0.www;
  r5.xyz = r4.xyz * r0.zzz;
  r0.z = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.y = dot(r0.ww, r0.yy);
  r0.y = -0.5 + r0.y;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r1.yzw = float3(1,1,1) + -r3.xyz;
  r1.yzw = r1.yzw * r0.zzz + r3.xyz;
  r1.yzw = r5.xyz * r1.yzw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x + 1;
  r0.z = 1 + -r1.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r1.x;
  r0.xyz = r4.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: c145a5155758987b
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.x = r2.w * r1.x;
  r3.xyzw = t1.Sample(s1_s, v6.xy).xyzw;
  r3.xyz = cb0[2].xyz * r3.www;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// hash: 54b30c6d479e82ec
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v6.xy / v6.ww;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xyzw = t1.Sample(s2_s, r0.xy).xyzw;
  r0.x = cmp(0 < v6.z);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r0.x * r0.w;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s3_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.yzw = v7.xyz / v7.www;
  r0.y = t3.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: 9820b79dad48deba
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.x = r2.w * r1.x;
  r3.xy = v6.xy / v6.ww;
  r3.xyzw = t1.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[2].xyz * r3.xxx;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// hash: cb27530f9396ffdc
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = cb0[4].xyz * r2.xyz;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.x = r2.w * r1.x;
  r3.xy = v7.xy / v7.ww;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r4.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r2.w = r4.w * r3.x;
  r3.xyz = cb0[2].xyz * r2.www;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// hash: 947e8202599e429e
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r1.xyzw = t2.Sample(s1_s, v7.xyz).xyzw;
  r0.x = cmp(r1.x < r0.x);
  r0.x = r0.x ? cb2[24].x : 1;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// hash: f15fc1395a7a9a8b
TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r1.xyzw = t3.Sample(s1_s, v7.xyz).xyzw;
  r0.x = cmp(r1.x < r0.x);
  r0.x = r0.x ? cb2[24].x : 1;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r0.yy).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r0.y = r2.w * r1.x;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" }
"// hash: d21831d21507144e
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb1[24].x;
  r0.yzw = v7.xyz / v7.www;
  r1.xyz = cb0[11].xyz + r0.yzw;
  r1.x = t3.SampleCmpLevelZero(s1_s, r1.xy, r1.z).x;
  r2.xyz = cb0[12].xyz + r0.yzw;
  r1.y = t3.SampleCmpLevelZero(s1_s, r2.xy, r2.z).x;
  r2.xyz = cb0[13].xyz + r0.yzw;
  r0.yzw = cb0[14].xyz + r0.yzw;
  r1.w = t3.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r1.z = t3.SampleCmpLevelZero(s1_s, r2.xy, r2.z).x;
  r0.xyzw = r1.xyzw * r0.xxxx + cb1[24].xxxx;
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.yz = v6.xy / v6.ww;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xyzw = t1.Sample(s2_s, r0.yz).xyzw;
  r0.y = cmp(0 < v6.z);
  r0.y = r0.y ? 1.000000 : 0;
  r0.y = r0.y * r1.w;
  r0.z = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s3_s, r0.zz).xyzw;
  r0.y = r1.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// hash: 53eaaf6648491ce2
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.yzw = float3(0.0078125,0.0078125,0.0078125) + v7.xyz;
  r1.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r0.yzw = float3(-0.0078125,-0.0078125,0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.y = r2.x;
  r0.yzw = float3(-0.0078125,0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.z = r2.x;
  r0.yzw = float3(0.0078125,-0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.w = r2.x;
  r0.xyzw = cmp(r1.xyzw < r0.xxxx);
  r0.xyzw = r0.xyzw ? cb2[24].xxxx : float4(1,1,1,1);
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
"// hash: a3348f60756eaaf4
TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.yzw = float3(0.0078125,0.0078125,0.0078125) + v7.xyz;
  r1.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r0.yzw = float3(-0.0078125,-0.0078125,0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.y = r2.x;
  r0.yzw = float3(-0.0078125,0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.z = r2.x;
  r0.yzw = float3(0.0078125,-0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.w = r2.x;
  r0.xyzw = cmp(r1.xyzw < r0.xxxx);
  r0.xyzw = r0.xyzw ? cb2[24].xxxx : float4(1,1,1,1);
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r0.yy).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r0.y = r2.w * r1.x;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = cb0[4].xyz * r3.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = cb0[4].xyz * r3.xyz;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 275225ad697000a3
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www + -r0.xyz;
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(r1.xyz, r2.xyz));
  r1.x = saturate(dot(r3.xyz, r1.xyz));
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = 1 + -cb0[8].w;
  r0.z = r0.y * r0.y;
  r1.y = r0.z * r0.z;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r0.y * r0.y + 1;
  r1.z = abs(r0.x) * r1.y + r0.z;
  r0.z = r1.x * r1.y + r0.z;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r1.x * r1.z + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.x;
  r0.z = max(0, r0.z);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r3.xyz = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r3.xyz = cb0[8].zzz * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r0.w = dot(v6.xyz, v6.xyz);
  r4.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r4.xyz = cb0[2].xyz * r4.xxx;
  r5.xyz = r4.xyz * r0.zzz;
  r0.z = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.y = dot(r0.ww, r0.yy);
  r0.y = -0.5 + r0.y;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r1.yzw = float3(1,1,1) + -r3.xyz;
  r1.yzw = r1.yzw * r0.zzz + r3.xyz;
  r1.yzw = r5.xyz * r1.yzw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x + 1;
  r0.z = 1 + -r1.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r1.x;
  r0.xyz = r4.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: be81348a5ebc85bc
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.x = r3.x * r1.x;
  r3.xyz = cb0[2].xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r4.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r4.xyz * r0.zzz + r1.yzw;
  r1.xyz = r3.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: e5d9ad4d25a458aa
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v6.xy / v6.ww;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.x = cmp(0 < v6.z);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r0.x * r0.w;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: eb5c2eb24e3c76d4
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www + -r0.xyz;
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(r1.xyz, r2.xyz));
  r1.x = saturate(dot(r3.xyz, r1.xyz));
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = 1 + -cb0[8].w;
  r0.z = r0.y * r0.y;
  r1.y = r0.z * r0.z;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r0.y * r0.y + 1;
  r1.z = abs(r0.x) * r1.y + r0.z;
  r0.z = r1.x * r1.y + r0.z;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r1.x * r1.z + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.x;
  r0.z = max(0, r0.z);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r3.xyz = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r3.xyz = cb0[8].zzz * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r0.w = dot(v6.xyz, v6.xyz);
  r4.xyzw = t1.Sample(s2_s, r0.ww).xyzw;
  r5.xyzw = t2.Sample(s1_s, v6.xyz).xyzw;
  r0.w = r5.w * r4.x;
  r4.xyz = cb0[2].xyz * r0.www;
  r5.xyz = r4.xyz * r0.zzz;
  r0.z = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.y = dot(r0.ww, r0.yy);
  r0.y = -0.5 + r0.y;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r1.yzw = float3(1,1,1) + -r3.xyz;
  r1.yzw = r1.yzw * r0.zzz + r3.xyz;
  r1.yzw = r5.xyz * r1.yzw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x + 1;
  r0.z = 1 + -r1.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r1.x;
  r0.xyz = r4.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 609e03b78b0ddac
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.x = r3.x * r1.x;
  r3.xyzw = t1.Sample(s1_s, v6.xy).xyzw;
  r3.xyz = cb0[2].xyz * r3.www;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: 9471e8f5f567e409
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v6.xy / v6.ww;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xyzw = t1.Sample(s2_s, r0.xy).xyzw;
  r0.x = cmp(0 < v6.z);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r0.x * r0.w;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s3_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.yzw = v7.xyz / v7.www;
  r0.y = t3.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7f94905518352ff3
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.x = r3.x * r1.x;
  r3.xy = v6.xy / v6.ww;
  r3.xyzw = t1.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[2].xyz * r3.xxx;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 98d9f6fddd979d9c
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.x = v3.w;
  r1.y = v4.w;
  r1.z = v5.w;
  r2.xyz = -v2.xyz * r0.www + r1.xyz;
  r3.xyz = v2.xyz * r0.www;
  r0.w = dot(r0.xyz, -r3.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(dot(r0.xyz, r2.xyz));
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.y = saturate(dot(r1.xyz, r2.xyz));
  r0.z = 1 + -cb0[8].w;
  r1.x = r0.z * r0.z;
  r1.y = r1.x * r1.x;
  r1.z = r1.w * r1.y + -r1.w;
  r1.z = r1.z * r1.w + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r0.z * r0.z + 1;
  r1.w = abs(r0.w) * r1.z + r1.x;
  r1.x = r0.x * r1.z + r1.x;
  r1.x = r1.x * abs(r0.w);
  r0.w = 1 + -abs(r0.w);
  r1.x = r0.x * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.x;
  r1.x = max(0, r1.x);
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.yzw = r2.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyzw = cb0[4].xyzw * r2.xyzw;
  r1.yzw = cb0[8].zzz * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.x = r3.x * r1.x;
  r3.xy = v7.xy / v7.ww;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r4.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r3.x = r4.w * r3.x;
  r3.xyz = cb0[2].xyz * r3.xxx;
  r4.xyz = r3.xyz * r1.xxx;
  r1.x = 1 + -r0.y;
  r0.y = r0.y * r0.y;
  r0.y = dot(r0.yy, r0.zz);
  r0.y = -0.5 + r0.y;
  r0.z = r1.x * r1.x;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.x;
  r5.xyz = float3(1,1,1) + -r1.yzw;
  r1.xyz = r5.xyz * r0.zzz + r1.yzw;
  r1.xyz = r4.xyz * r1.xyz;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1 + -r0.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r0.x = 1 + -r0.w;
  o0.w = r2.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 130ba831610e0c21
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r1.xyzw = t2.Sample(s1_s, v7.xyz).xyzw;
  r0.x = cmp(r1.x < r0.x);
  r0.x = r0.x ? cb2[24].x : 1;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 4c011a1b5c8ec4f8
TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r1.xyzw = t3.Sample(s1_s, v7.xyz).xyzw;
  r0.x = cmp(r1.x < r0.x);
  r0.x = r0.x ? cb2[24].x : 1;
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r0.yy).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r0.y = r2.w * r1.x;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: debffb65b200a162
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb1[24].x;
  r0.yzw = v7.xyz / v7.www;
  r1.xyz = cb0[11].xyz + r0.yzw;
  r1.x = t3.SampleCmpLevelZero(s1_s, r1.xy, r1.z).x;
  r2.xyz = cb0[12].xyz + r0.yzw;
  r1.y = t3.SampleCmpLevelZero(s1_s, r2.xy, r2.z).x;
  r2.xyz = cb0[13].xyz + r0.yzw;
  r0.yzw = cb0[14].xyz + r0.yzw;
  r1.w = t3.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r1.z = t3.SampleCmpLevelZero(s1_s, r2.xy, r2.z).x;
  r0.xyzw = r1.xyzw * r0.xxxx + cb1[24].xxxx;
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.yz = v6.xy / v6.ww;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xyzw = t1.Sample(s2_s, r0.yz).xyzw;
  r0.y = cmp(0 < v6.z);
  r0.y = r0.y ? 1.000000 : 0;
  r0.y = r0.y * r1.w;
  r0.z = dot(v6.xyz, v6.xyz);
  r1.xyzw = t2.Sample(s3_s, r0.zz).xyzw;
  r0.y = r1.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: d21bc9503d7a8b08
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.yzw = float3(0.0078125,0.0078125,0.0078125) + v7.xyz;
  r1.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r0.yzw = float3(-0.0078125,-0.0078125,0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.y = r2.x;
  r0.yzw = float3(-0.0078125,0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.z = r2.x;
  r0.yzw = float3(0.0078125,-0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t2.Sample(s1_s, r0.yzw).xyzw;
  r1.w = r2.x;
  r0.xyzw = cmp(r1.xyzw < r0.xxxx);
  r0.xyzw = r0.xyzw ? cb2[24].xxxx : float4(1,1,1,1);
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r0.yy).xyzw;
  r0.x = r1.x * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 75996c8767456e3
TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb1[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.yzw = float3(0.0078125,0.0078125,0.0078125) + v7.xyz;
  r1.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r0.yzw = float3(-0.0078125,-0.0078125,0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.y = r2.x;
  r0.yzw = float3(-0.0078125,0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.z = r2.x;
  r0.yzw = float3(0.0078125,-0.0078125,-0.0078125) + v7.xyz;
  r2.xyzw = t3.Sample(s1_s, r0.yzw).xyzw;
  r1.w = r2.x;
  r0.xyzw = cmp(r1.xyzw < r0.xxxx);
  r0.xyzw = r0.xyzw ? cb2[24].xxxx : float4(1,1,1,1);
  r0.x = dot(r0.xyzw, float4(0.25,0.25,0.25,0.25));
  r0.y = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r0.yy).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r0.y = r2.w * r1.x;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + -r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v5.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.w = saturate(dot(r2.xyz, r3.xyz));
  r2.x = saturate(dot(r4.xyz, r2.xyz));
  r1.x = dot(r4.xyz, -r1.xyz);
  r1.y = 1 + -cb0[8].w;
  r1.z = r1.y * r1.y;
  r2.y = r1.z * r1.z;
  r2.z = r0.w * r2.y + -r0.w;
  r0.w = r2.z * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r2.y = 0.318309873 * r2.y;
  r0.w = r2.y / r0.w;
  r2.y = -r1.y * r1.y + 1;
  r2.z = abs(r1.x) * r2.y + r1.z;
  r1.z = r2.x * r2.y + r1.z;
  r1.z = abs(r1.x) * r1.z;
  r1.x = 1 + -abs(r1.x);
  r1.z = r2.x * r2.z + r1.z;
  r1.z = 9.99999975e-06 + r1.z;
  r1.z = 0.5 / r1.z;
  r0.w = r1.z * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r2.x;
  r0.w = max(0, r0.w);
  r3.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.yzw = r3.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyzw = cb0[4].xyzw * r3.xyzw;
  r2.yzw = cb0[8].zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r4.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.z = r1.w * r1.w;
  r1.y = dot(r1.zz, r1.yy);
  r1.y = -0.5 + r1.y;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r5.xyz = float3(1,1,1) + -r2.yzw;
  r2.yzw = r5.xyz * r0.www + r2.yzw;
  r2.yzw = r4.xyz * r2.yzw;
  r0.w = r1.x * r1.x;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.x;
  r0.w = r1.y * r0.w + 1;
  r1.x = 1 + -r2.x;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.x;
  r0.xyz = r0.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r3.www;
  o0.xyz = r1.xyz * r0.xyz + r2.yzw;
  r0.x = 1 + -r0.w;
  o0.w = r3.w * r0.w + r0.x;
  return;
}"
}
}
}
 Pass {
  Name "SHADOWCASTER"
  LOD 300
  Tags { "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 131847
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// hash: e9ba8e6c613064f
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
  float2 v2 : TEXCOORD0,
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
"// hash: 596e282eade9bfe6
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
  float2 v2 : TEXCOORD0,
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
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: 96d61e0cda6674b6
cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float2 v2 : TEXCOORD0,
  out float2 o0 : TEXCOORD1,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = v2.xy * cb0[4].xy + cb0[4].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb1[0].www + cb1[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = -r0.w * r0.w + 1;
  r0.w = sqrt(r0.w);
  r0.w = cb2[5].z * r0.w;
  r0.xyz = -r2.xyz * r0.www + r0.xyz;
  r1.xyzw = cb4[18].xyzw * r0.yyyy;
  r1.xyzw = cb4[17].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb4[19].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb4[20].xyzw + r0.xyzw;
  r1.xyzw = cb3[1].xyzw * v0.yyyy;
  r1.xyzw = cb3[0].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[2].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[3].xyzw + r1.xyzw;
  r2.x = cmp(cb2[5].z != 0.000000);
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.x = cb2[5].x / r0.w;
  r1.x = min(0, r1.x);
  r1.x = max(-1, r1.x);
  r0.z = r1.x + r0.z;
  r1.x = min(r0.z, r0.w);
  o1.xyw = r0.xyw;
  r0.x = r1.x + -r0.z;
  o1.z = cb2[5].y * r0.x + r0.z;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: f693f90f11f26c98
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : TEXCOORD0,
  out float2 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o0.xyz = -cb1[1].xyz + r0.xyz;
  o1.xy = v2.xy * cb0[4].xy + cb0[4].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o2.xyzw = cb2[3].xyzw + r0.xyzw;
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
"// hash: 2b1e982392fa63ca



// 3Dmigoto declarations
#define cmp -


void main(
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
"// hash: b1b98a8263e1824e
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
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: f1c19549ada80650
Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD1,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.x = cb0[2].w * r0.w;
  r0.y = -cb0[6].x * 0.959999979 + 0.959999979;
  r0.z = 1 + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.z = 0.9375 * r0.x;
  r0.xy = float2(0.25,0.25) * v1.xy;
  r0.xyzw = t1.Sample(s1_s, r0.xyz).xyzw;
  r0.x = -0.00999999978 + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 8eacc28d99637584
Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float2 v1 : TEXCOORD1,
  float4 v2 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = cb0[2].w * r0.w;
  r0.y = -cb0[6].x * 0.959999979 + 0.959999979;
  r0.z = 1 + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.z = 0.9375 * r0.x;
  r0.xy = float2(0.25,0.25) * v2.xy;
  r0.xyzw = t1.Sample(s1_s, r0.xyz).xyzw;
  r0.x = -0.00999999978 + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb2[5].x + r0.x;
  o0.xyzw = cb1[1].wwww * r0.xxxx;
  return;
}"
}
}
}
 Pass {
  Name "DEFERRED"
  LOD 300
  Tags { "LIGHTMODE" = "Deferred" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  ZClip Off
  GpuProgramID 240401
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: b3eea867e101a9e9
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  o5.w = 0;
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r1.xyzw = r0.xyzz * r0.yzzx;
  r0.x = dot(cb2[41].xyzw, r1.xyzw);
  r0.y = dot(cb2[42].xyzw, r1.xyzw);
  r0.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.www + r0.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a77027d3750748ee
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 26714c41674bc990
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  float4 v5 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb2[13].xyz * v5.yyy;
  r0.xyz = cb2[12].xyz * v5.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v5.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  o5.xyz = r1.xyz;
  r0.w = cb2[21].w * v5.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 3579fc51aa185c8a
cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  float4 v4 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  r0.xyz = cb3[13].xyz * v4.yyy;
  r0.xyz = cb3[12].xyz * v4.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v4.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o3.xyz = r0.xyz;
  o3.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r0.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r0.w = cb3[21].w * v4.w;
  o4.xyz = r0.xyz * r0.www;
  o4.w = 0;
  o5.xyz = r1.xyz;
  o5.w = 0;
  r0.x = r1.y * r1.y;
  r0.x = r1.x * r1.x + -r0.x;
  r1.xyzw = r1.xyzz * r1.yzzx;
  r2.x = dot(cb2[41].xyzw, r1.xyzw);
  r2.y = dot(cb2[42].xyzw, r1.xyzw);
  r2.z = dot(cb2[43].xyzw, r1.xyzw);
  o6.xyz = cb2[44].xyz * r0.xxx + r2.xyz;
  o6.w = 0;
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
"// hash: 732993bb4bc36b21
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r0.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: 164678a3fd916f7a
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r2.xyz = r0.xyz * r2.xyz + r3.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_ALPHAPREMULTIPLY_ON" }
"// hash: 7159b4277ec4ea5d
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: e039890150533abc
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r1.xyz = r0.xyz * r1.xyz + r3.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" }
"// hash: c060c681b6a9f1fe
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 37ae8a73afb84da
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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7c02e8fca0fa1798
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: f5df2343e5225cdc
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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" }
"// hash: 732993bb4bc36b21
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r0.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" }
"// hash: 164678a3fd916f7a
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r2.xyz = r0.xyz * r2.xyz + r3.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7159b4277ec4ea5d
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: e039890150533abc
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r1.xyz = r0.xyz * r1.xyz + r3.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" }
"// hash: fb50452adf254234
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 11339b437d209b52
Texture2D<float4> t4 : register(t4);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 184a576194102b66
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: b4ab9d82d81b4c85
Texture2D<float4> t4 : register(t4);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.xyz = exp2(-r0.xyz);
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" }
"// hash: 732993bb4bc36b21
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = r2.xyz * r0.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" }
"// hash: 164678a3fd916f7a
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r2.xyz = r0.xyz * r2.xyz + r3.xyz;
  o3.xyz = exp2(-r2.xyz);
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 7159b4277ec4ea5d
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: e039890150533abc
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  r1.xyz = r0.xyz * r1.xyz + r3.xyz;
  o3.xyz = exp2(-r1.xyz);
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" }
"// hash: baf0e7bc260a2d17
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  o3.xyz = r2.xyz * r0.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" }
"// hash: a5dc56cee8b9cc0c
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r2.xyz + r3.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: eb5c0da0d77b7f9a
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 131027a78b2c63af
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r1.xyz + r3.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// hash: bea679749cd0278c
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// hash: 25df181a044a6fd1
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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  o3.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 43626255cf364c73
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 24b58a60f6713559
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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.w = cb0[1].x * r1.w;
  r1.xyz = r1.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  o3.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" }
"// hash: baf0e7bc260a2d17
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  o3.xyz = r2.xyz * r0.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" }
"// hash: a5dc56cee8b9cc0c
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r2.xyz + r3.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: eb5c0da0d77b7f9a
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 131027a78b2c63af
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r1.xyz + r3.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" }
"// hash: e2724117b84e1bc1
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" }
"// hash: 95b3f70adacc797
Texture2D<float4> t4 : register(t4);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r0.x = 1 + -cb0[9].y;
  r0.w = r0.y * cb0[9].y + r0.x;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r2.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[4].xyz * r2.xyz;
  r2.xyz = cb0[4].xyz * r2.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r1.yzw * r1.xxx;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  o3.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: aaf10304708f5a3f
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 191906bbf4cec19c
Texture2D<float4> t4 : register(t4);

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyzw = cb0[4].wxyz * r1.wxyz;
  r0.yzw = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r2.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r2.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r1.w = max(9.99999975e-05, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = 0.5 + r1.x;
  r2.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r1.y = cb0[1].x * r2.w;
  r2.xyz = r1.yyy * r2.xyz;
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb0[1].yyy * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r1.xyz = r2.xyz * r1.xxx;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = cb0[10].xyz * r2.xyz;
  o3.xyz = r0.xyz * r1.xyz + r2.xyz;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" }
"// hash: baf0e7bc260a2d17
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  o3.xyz = r2.xyz * r0.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" }
"// hash: a5dc56cee8b9cc0c
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r2.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r2.x = 1 + -cb0[9].y;
  r0.w = r2.y * cb0[9].y + r2.x;
  r2.x = cmp(cb2[0].x == 1.000000);
  if (r2.x != 0) {
    r2.x = cmp(cb2[0].y == 1.000000);
    r2.yzw = cb2[2].xyz * v7.yyy;
    r2.yzw = cb2[1].xyz * v7.xxx + r2.yzw;
    r2.yzw = cb2[3].xyz * v7.zzz + r2.yzw;
    r2.yzw = cb2[4].xyz + r2.yzw;
    r2.xyz = r2.xxx ? r2.yzw : v7.xyz;
    r2.xyz = -cb2[6].xyz + r2.xyz;
    r2.yzw = cb2[5].xyz * r2.xyz;
    r2.y = 0.25 * r2.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r2.y = max(r3.x, r2.y);
    r2.x = min(r2.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r2.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r2.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r2.xyz = float3(0.5,0,0) + r2.xzw;
    r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r3.y = dot(r4.xyzw, r1.xyzw);
    r3.z = dot(r2.xyzw, r1.xyzw);
  } else {
    r1.w = 1;
    r3.x = dot(cb1[38].xyzw, r1.xyzw);
    r3.y = dot(cb1[39].xyzw, r1.xyzw);
    r3.z = dot(cb1[40].xyzw, r1.xyzw);
  }
  r2.xyz = v6.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r2.xyz + r3.xyz;
  o2.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: eb5c0da0d77b7f9a
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t2.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t2.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t2.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_SEPARATE" "_EMISSION" "UNITY_HDR_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 131027a78b2c63af
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[41];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].wxyz * r0.wxyz;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  o1.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.yzw * r0.xxx;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v5.xyz * r0.www;
  r0.xyz = r0.xyz * r1.xxx;
  r1.xyzw = t1.Sample(s2_s, v1.xy).xyzw;
  r1.x = 1 + -cb0[9].y;
  r0.w = r1.y * cb0[9].y + r1.x;
  r1.x = cmp(cb2[0].x == 1.000000);
  if (r1.x != 0) {
    r1.x = cmp(cb2[0].y == 1.000000);
    r1.yzw = cb2[2].xyz * v7.yyy;
    r1.yzw = cb2[1].xyz * v7.xxx + r1.yzw;
    r1.yzw = cb2[3].xyz * v7.zzz + r1.yzw;
    r1.yzw = cb2[4].xyz + r1.yzw;
    r1.xyz = r1.xxx ? r1.yzw : v7.xyz;
    r1.xyz = -cb2[6].xyz + r1.xyz;
    r1.yzw = cb2[5].xyz * r1.xyz;
    r1.y = 0.25 * r1.y;
    r3.x = 0.5 * cb2[0].z;
    r3.y = -cb2[0].z * 0.5 + 0.25;
    r1.y = max(r3.x, r1.y);
    r1.x = min(r1.y, r3.y);
    r3.xyzw = t3.Sample(s0_s, r1.xzw).xyzw;
    r4.xyz = float3(0.25,0,0) + r1.xzw;
    r4.xyzw = t3.Sample(s0_s, r4.xyz).xyzw;
    r1.xyz = float3(0.5,0,0) + r1.xzw;
    r1.xyzw = t3.Sample(s0_s, r1.xyz).xyzw;
    r2.w = 1;
    r3.x = dot(r3.xyzw, r2.xyzw);
    r3.y = dot(r4.xyzw, r2.xyzw);
    r3.z = dot(r1.xyzw, r2.xyzw);
  } else {
    r2.w = 1;
    r3.x = dot(cb1[38].xyzw, r2.xyzw);
    r3.y = dot(cb1[39].xyzw, r2.xyzw);
    r3.z = dot(cb1[40].xyzw, r2.xyzw);
  }
  r1.xyz = v6.xyz + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = r1.xyz * r0.www;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r3.xyz = cb0[10].xyz * r3.xyz;
  o3.xyz = r0.xyz * r1.xyz + r3.xyz;
  o2.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyzw = r0.xyzw;
  o1.w = cb0[8].w;
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "META"
  LOD 300
  Tags { "LIGHTMODE" = "Meta" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  ZClip Off
  Cull Off
  GpuProgramID 294171
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: be684416e9b8c4b9
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6d46046f243b4521
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: be684416e9b8c4b9
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_EMISSION" }
"// hash: 6d46046f243b4521
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
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
"// hash: 42a519fa0bf8a58a
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 50c5c74393093795
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.220916301,0.220916301,0.220916301);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: 48fb2abd8c29f2e8
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r1.xyz = cb0[10].xyz * r1.xyz;
  r2.xyz = r1.xyz * float3(0.305306017,0.305306017,0.305306017) + float3(0.682171106,0.682171106,0.682171106);
  r2.xyz = r1.xyz * r2.xyz + float3(0.0125228781,0.0125228781,0.0125228781);
  r2.xyz = r2.xyz * r1.xyz;
  r1.w = cmp(0 != cb0[11].z);
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r1.xyz = float3(0.010309278,0.010309278,0.010309278) * r1.xyz;
  r1.w = max(r1.x, r1.y);
  r2.x = max(0.0199999996, r1.z);
  r1.w = max(r2.x, r1.w);
  r1.w = 255 * r1.w;
  r1.w = ceil(r1.w);
  r2.w = 0.00392156886 * r1.w;
  r2.xyz = r1.xyz / r2.www;
  o0.xyzw = cb1[1].yyyy ? r2.xyzw : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_EMISSION" }
"// hash: 2dc9c8b309545849
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.220916301,0.220916301,0.220916301);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r1.xyz = cb0[10].xyz * r1.xyz;
  r2.xyz = r1.xyz * float3(0.305306017,0.305306017,0.305306017) + float3(0.682171106,0.682171106,0.682171106);
  r2.xyz = r1.xyz * r2.xyz + float3(0.0125228781,0.0125228781,0.0125228781);
  r2.xyz = r2.xyz * r1.xyz;
  r1.w = cmp(0 != cb0[11].z);
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r1.xyz = float3(0.010309278,0.010309278,0.010309278) * r1.xyz;
  r1.w = max(r1.x, r1.y);
  r2.x = max(0.0199999996, r1.z);
  r1.w = max(r2.x, r1.w);
  r1.w = 255 * r1.w;
  r1.w = ceil(r1.w);
  r2.w = 0.00392156886 * r1.w;
  r2.xyz = r1.xyz / r2.www;
  o0.xyzw = cb1[1].yyyy ? r2.xyzw : r0.xyzw;
  return;
}"
}
}
}
}
SubShader {
 LOD 150
 Tags { "PerformanceChecks" = "False" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 150
  Tags { "LIGHTMODE" = "ForwardBase" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZClip Off
  ZWrite Off
  GpuProgramID 354211
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: ae4a7ec4a2683ce3
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: e38b0bd9fe1a70b1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: ba01434470b084d1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r1.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  r2.x = r1.y * r1.y;
  r2.x = r1.x * r1.x + -r2.x;
  r3.xyzw = r1.xyzz * r1.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r2.xyz = cb2[44].xyz * r2.xxx + r4.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r1.xyz = r3.xyz + r2.xyz;
  o6.xyz = max(float3(0,0,0), r1.xyz);
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// hash: f48a0fc4a81fa38e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// hash: 68ab04f324c1a248
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 68ab04f324c1a248
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"// hash: 718dc605d2ca2dfe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r2.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r3.xyzw = r2.xyzz * r2.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r3.xyz = cb2[44].xyz * r1.www + r4.xyz;
  r2.w = 1;
  r4.x = dot(cb2[38].xyzw, r2.xyzw);
  r4.y = dot(cb2[39].xyzw, r2.xyzw);
  r4.z = dot(cb2[40].xyzw, r2.xyzw);
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r4.xyzw = cb2[3].xyzw + -r1.yyyy;
  r5.xyzw = r4.xyzw * r2.yyyy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = cb2[2].xyzw + -r1.xxxx;
  r1.xyzw = cb2[4].xyzw + -r1.zzzz;
  r5.xyzw = r6.xyzw * r2.xxxx + r5.xyzw;
  r2.xyzw = r1.xyzw * r2.zzzz + r5.xyzw;
  r4.xyzw = r6.xyzw * r6.xyzw + r4.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r4.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r4.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyz = cb2[7].xyz * r1.yyy;
  r2.xyz = cb2[6].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  o6.xyz = r1.xyz + r3.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: e38b0bd9fe1a70b1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: ae4a7ec4a2683ce3
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: e38b0bd9fe1a70b1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// hash: ba01434470b084d1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r1.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  r2.x = r1.y * r1.y;
  r2.x = r1.x * r1.x + -r2.x;
  r3.xyzw = r1.xyzz * r1.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r2.xyz = cb2[44].xyz * r2.xxx + r4.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r1.xyz = r3.xyz + r2.xyz;
  o6.xyz = max(float3(0,0,0), r1.xyz);
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: f48a0fc4a81fa38e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: 718dc605d2ca2dfe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r2.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r3.xyzw = r2.xyzz * r2.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r3.xyz = cb2[44].xyz * r1.www + r4.xyz;
  r2.w = 1;
  r4.x = dot(cb2[38].xyzw, r2.xyzw);
  r4.y = dot(cb2[39].xyzw, r2.xyzw);
  r4.z = dot(cb2[40].xyzw, r2.xyzw);
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r4.xyzw = cb2[3].xyzw + -r1.yyyy;
  r5.xyzw = r4.xyzw * r2.yyyy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = cb2[2].xyzw + -r1.xxxx;
  r1.xyzw = cb2[4].xyzw + -r1.zzzz;
  r5.xyzw = r6.xyzw * r2.xxxx + r5.xyzw;
  r2.xyzw = r1.xyzw * r2.zzzz + r5.xyzw;
  r4.xyzw = r6.xyzw * r6.xyzw + r4.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r4.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r4.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyz = cb2[7].xyz * r1.yyy;
  r2.xyz = cb2[6].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  o6.xyz = r1.xyz + r3.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: ae4a7ec4a2683ce3
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: e38b0bd9fe1a70b1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: ba01434470b084d1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r1.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  r2.x = r1.y * r1.y;
  r2.x = r1.x * r1.x + -r2.x;
  r3.xyzw = r1.xyzz * r1.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r2.xyz = cb2[44].xyz * r2.xxx + r4.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r1.xyz = r3.xyz + r2.xyz;
  o6.xyz = max(float3(0,0,0), r1.xyz);
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: f48a0fc4a81fa38e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 68ab04f324c1a248
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 718dc605d2ca2dfe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r2.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r3.xyzw = r2.xyzz * r2.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r3.xyz = cb2[44].xyz * r1.www + r4.xyz;
  r2.w = 1;
  r4.x = dot(cb2[38].xyzw, r2.xyzw);
  r4.y = dot(cb2[39].xyzw, r2.xyzw);
  r4.z = dot(cb2[40].xyzw, r2.xyzw);
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r4.xyzw = cb2[3].xyzw + -r1.yyyy;
  r5.xyzw = r4.xyzw * r2.yyyy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = cb2[2].xyzw + -r1.xxxx;
  r1.xyzw = cb2[4].xyzw + -r1.zzzz;
  r5.xyzw = r6.xyzw * r2.xxxx + r5.xyzw;
  r2.xyzw = r1.xyzw * r2.zzzz + r5.xyzw;
  r4.xyzw = r6.xyzw * r6.xyzw + r4.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r4.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r4.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyz = cb2[7].xyz * r1.yyy;
  r2.xyz = cb2[6].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  o6.xyz = r1.xyz + r3.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: ae4a7ec4a2683ce3
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o5.xyz = r0.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r1.xyz = cb2[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb2[38].xyzw, r0.xyzw);
  r2.y = dot(cb2[39].xyzw, r0.xyzw);
  r2.z = dot(cb2[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o6.xyz = max(float3(0,0,0), r0.xyz);
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: ba01434470b084d1
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r1.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o5.xyz = r1.xyz;
  r2.x = r1.y * r1.y;
  r2.x = r1.x * r1.x + -r2.x;
  r3.xyzw = r1.xyzz * r1.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r2.xyz = cb2[44].xyz * r2.xxx + r4.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r1.xyz = r3.xyz + r2.xyz;
  o6.xyz = max(float3(0,0,0), r1.xyz);
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: f48a0fc4a81fa38e
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 68ab04f324c1a248
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r1.x * r1.x + -r0.w;
  r2.xyzw = r1.xyzz * r1.yzzx;
  r3.x = dot(cb2[41].xyzw, r2.xyzw);
  r3.y = dot(cb2[42].xyzw, r2.xyzw);
  r3.z = dot(cb2[43].xyzw, r2.xyzw);
  r2.xyz = cb2[44].xyz * r0.www + r3.xyz;
  r1.w = 1;
  r3.x = dot(cb2[38].xyzw, r1.xyzw);
  r3.y = dot(cb2[39].xyzw, r1.xyzw);
  r3.z = dot(cb2[40].xyzw, r1.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb2[3].xyzw + -r0.yyyy;
  r4.xyzw = r3.xyzw * r1.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb2[2].xyzw + -r0.xxxx;
  r0.xyzw = cb2[4].xyzw + -r0.zzzz;
  r4.xyzw = r5.xyzw * r1.xxxx + r4.xyzw;
  r1.xyzw = r0.xyzw * r1.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw + r3.xyzw;
  r0.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r0.xyzw);
  r3.xyzw = rsqrt(r0.xyzw);
  r0.xyzw = r0.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = r3.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = cb2[7].xyz * r0.yyy;
  r1.xyz = cb2[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb2[9].xyz * r0.www + r0.xyz;
  o6.xyz = r0.xyz + r2.xyz;
  o6.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 1c974b5a95338dab
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD8)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o2.xyz = -cb1[4].xyz + r0.xyz;
  o7.xyz = r0.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v1.xyz, cb2[16].xyz);
  r0.y = dot(v1.xyz, cb2[17].xyz);
  r0.z = dot(v1.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 718dc605d2ca2dfe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r2.xyz * r1.www;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.w = 0;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r1.w = r2.y * r2.y;
  r1.w = r2.x * r2.x + -r1.w;
  r3.xyzw = r2.xyzz * r2.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r3.xyz = cb2[44].xyz * r1.www + r4.xyz;
  r2.w = 1;
  r4.x = dot(cb2[38].xyzw, r2.xyzw);
  r4.y = dot(cb2[39].xyzw, r2.xyzw);
  r4.z = dot(cb2[40].xyzw, r2.xyzw);
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r4.xyzw = cb2[3].xyzw + -r1.yyyy;
  r5.xyzw = r4.xyzw * r2.yyyy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = cb2[2].xyzw + -r1.xxxx;
  r1.xyzw = cb2[4].xyzw + -r1.zzzz;
  r5.xyzw = r6.xyzw * r2.xxxx + r5.xyzw;
  r2.xyzw = r1.xyzw * r2.zzzz + r5.xyzw;
  r4.xyzw = r6.xyzw * r6.xyzw + r4.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r4.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r4.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyz = cb2[7].xyz * r1.yyy;
  r2.xyz = cb2[6].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  o6.xyz = r1.xyz + r3.xyz;
  o6.w = 0;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "VERTEXLIGHT_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a0482d505c35e334
cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD8)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o2.xyz = -cb1[4].xyz + r1.xyz;
  o8.xyz = r1.xyz;
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  o5.w = 0;
  o6.zw = v4.xy * cb3[1].xy + cb3[1].zw;
  o6.xy = float2(0,0);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: f9b829c40043a796
TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t3.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r0.xyzw = t2.Sample(s1_s, r0.yw).xyzw;
  r0.x = 16 * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r4.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r2.xyz = r3.xyz * r4.xyz + r2.xyz;
  o0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 753b082b06fa989d
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t2.SampleBias(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = cmp(cb2[3].w == 1.000000);
  r0.x = r0.x ? r2.w : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.220916301,0.220916301,0.220916301);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r0.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.x = 16 * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r4.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r2.xyz = r3.xyz * r4.xyz + r2.xyz;
  o0.xyz = r0.xyz * r1.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" }
"// hash: adb6832048c999af
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t4.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: d6099a4c2a1c13e4
TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t4.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r1.xy = r4.xy * r4.xy;
  r0.yz = r1.xy * r1.xy;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.y = cb0[8].w + -r1.x;
  r1.y = saturate(1 + r1.y);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r1.xzw = r4.xyz * r1.xxx;
  r4.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r4.xyz + r1.yyy;
  r5.xyz = r0.zzz * r5.xyz + r4.xyz;
  r6.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r6.x;
  r0.yzw = r0.yyy * r4.xyz + r1.xzw;
  r2.xyz = r5.xyz * r2.xyz;
  r1.xyz = r3.xyz * r1.xzw + r2.xyz;
  r2.xy = v7.xy / v7.ww;
  r2.xyzw = t1.Sample(s4_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.xxx;
  o0.xyz = r0.yzw * r2.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" }
"// hash: 8b864222b0dd781c
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: 4add7923beea6499
TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t4.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r0.xyzw = t2.Sample(s1_s, r0.yw).xyzw;
  r0.x = 16 * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r4.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r2.xyz = r3.xyz * r4.xyz + r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" }
"// hash: a10439761806dbe3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t2.SampleBias(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = cmp(cb2[3].w == 1.000000);
  r0.x = r0.x ? r2.w : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.220916301,0.220916301,0.220916301);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r0.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.x = 16 * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r4.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r2.xyz = r3.xyz * r4.xyz + r2.xyz;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  r1.xyzw = t4.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: fa5af5b0b0ef0704
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r4.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r3.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r3.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r2.www;
  r6.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r2.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" }
"// hash: aaf0d3d4452e63cd
TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t5.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r1.xy = r4.xy * r4.xy;
  r0.yz = r1.xy * r1.xy;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.y = cb0[8].w + -r1.x;
  r1.y = saturate(1 + r1.y);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = cb0[4].xyz * r4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[4].xyz * r4.xyz;
  r1.xzw = r4.xyz * r1.xxx;
  r4.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r4.xyz + r1.yyy;
  r5.xyz = r0.zzz * r5.xyz + r4.xyz;
  r6.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r6.x;
  r0.yzw = r0.yyy * r4.xyz + r1.xzw;
  r2.xyz = r5.xyz * r2.xyz;
  r1.xyz = r3.xyz * r1.xzw + r2.xyz;
  r2.xy = v7.xy / v7.ww;
  r2.xyzw = t1.Sample(s5_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.xxx;
  r0.xyz = r0.yzw * r2.xyz + r1.xyz;
  r1.xyzw = t4.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" }
"// hash: 203ccc5c1328b167
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[4].xyz * r0.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v5.xyz * r1.www;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v2.xyz * r1.www;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.w = 1 + -cb0[9].y;
  r2.w = r5.y * cb0[9].y + r2.w;
  r3.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r3.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r3.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r2.www;
  r7.xyz = -v2.xyz * r1.www + cb1[0].xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = max(0.00100000005, r1.w);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r1.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r3.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r1.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r4.w = abs(r1.w) * r3.w + r3.y;
  r3.w = r3.x * r3.w + r3.y;
  r1.w = r3.w * abs(r1.w);
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r3.w = r3.y * r3.y;
  r4.w = r2.x * r3.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r3.w = 0.318309873 * r3.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r3.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = cmp(r3.x != 0.000000);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r0.w = cb0[8].w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r2.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r1.w = 1 + -r2.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r2.yzw = float3(1,1,1) + -r0.xyz;
  r2.yzw = r2.yzw * r1.www + r0.xyz;
  r2.yzw = r5.xyz * r2.yzw;
  r1.xyz = r1.xyz * r3.xyw + r2.yzw;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r0.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: 8b7acddbb4b8cd0
TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t3.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r7.xyzw = t2.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r7.x;
  r2.xyz = r6.xyz * r2.xyz;
  r0.xzw = r4.yzw * r0.xxx;
  r0.xzw = r0.xzw * r4.xxx;
  o0.w = r4.x;
  r2.xyz = r3.xyz * r0.xzw + r2.xyz;
  r0.xyz = r0.yyy * r5.xyz + r0.xzw;
  o0.xyz = r0.xyz * r1.xyz + r2.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: f5ae3cd533cee14b
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t2.SampleBias(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = cmp(cb2[3].w == 1.000000);
  r0.x = r0.x ? r2.w : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.220916301,0.220916301,0.220916301);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r7.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r7.x;
  r2.xyz = r6.xyz * r2.xyz;
  r0.xzw = r4.yzw * r0.xxx;
  r0.xzw = r0.xzw * r4.xxx;
  o0.w = r4.x;
  r2.xyz = r3.xyz * r0.xzw + r2.xyz;
  r0.xyz = r0.yyy * r5.xyz + r0.xzw;
  o0.xyz = r0.xyz * r1.xyz + r2.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: a478d9b54c034d4d
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t2.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t4.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: d0be53fada1de427
TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t4.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r1.xy = r4.xy * r4.xy;
  r0.yz = r1.xy * r1.xy;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.y = cb0[8].w + -r1.x;
  r1.y = saturate(1 + r1.y);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.yzw = -r5.xyz + r1.yyy;
  r1.yzw = r0.zzz * r1.yzw + r5.xyz;
  r6.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r6.x;
  r1.yzw = r2.xyz * r1.yzw;
  r2.xyz = r4.yzw * r1.xxx;
  r2.xyz = r2.xyz * r4.xxx;
  o0.w = r4.x;
  r1.xyz = r3.xyz * r2.xyz + r1.yzw;
  r0.yzw = r0.yyy * r5.xyz + r2.xyz;
  r2.xy = v7.xy / v7.ww;
  r2.xyzw = t1.Sample(s4_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.xxx;
  o0.xyz = r0.yzw * r2.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_ALPHAPREMULTIPLY_ON" }
"// hash: 14faa01699898805
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s4_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: d48c47efe360efb9
TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t4.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r7.xyzw = t2.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r7.x;
  r2.xyz = r6.xyz * r2.xyz;
  r0.xzw = r4.yzw * r0.xxx;
  r0.xzw = r0.xzw * r4.xxx;
  o0.w = r4.x;
  r2.xyz = r3.xyz * r0.xzw + r2.xyz;
  r0.xyz = r0.yyy * r5.xyz + r0.xzw;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: ea5861f527fd1517
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t2.SampleBias(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = cmp(cb2[3].w == 1.000000);
  r0.x = r0.x ? r2.w : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r1.xyz = cb0[2].xyz * r0.xxx;
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r4.xy = r4.xy * r4.xy;
  r0.yz = r4.xy * r4.xy;
  r0.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.w = cb0[8].w + -r0.x;
  r1.w = saturate(1 + r1.w);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.220916301,0.220916301,0.220916301);
  r6.xyz = -r5.xyz + r1.www;
  r6.xyz = r0.zzz * r6.xyz + r5.xyz;
  r7.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r7.x;
  r2.xyz = r6.xyz * r2.xyz;
  r0.xzw = r4.yzw * r0.xxx;
  r0.xzw = r0.xzw * r4.xxx;
  o0.w = r4.x;
  r2.xyz = r3.xyz * r0.xzw + r2.xyz;
  r0.xyz = r0.yyy * r5.xyz + r0.xzw;
  r0.xyz = r0.xyz * r1.xyz + r2.xyz;
  r1.xyzw = t4.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 405b741fcff632e6
TextureCube<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xyzw = t1.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r4.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.x = dot(r3.xyz, r2.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r2.xyz * -r4.xxx + r3.xyz;
  r5.xyzw = t3.Sample(s0_s, v6.zw).xyzw;
  r4.w = cb0[1].x * r5.w;
  r5.xyz = r4.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r6.xyz = r4.xyz * r4.www;
    r7.xyz = cb2[0].xyz + -v7.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb2[1].xyz + -v7.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r4.w = min(r7.x, r7.y);
    r4.w = min(r4.w, r7.z);
    r7.xyz = -cb2[2].xyz + v7.xyz;
    r6.xyz = r6.xyz * r4.www + r7.xyz;
  } else {
    r6.xyz = r4.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r7.xyz = r5.www * r6.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.xyz, r4.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r4.xyz;
      r9.xyz = cb2[4].xyz + -v7.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb2[5].xyz + -v7.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb2[6].xyz + v7.xyz;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r4.xyzw = t5.SampleLevel(s1_s, r4.xyz, r4.w).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r6.xyz = r5.www * r6.xyz + -r4.xyz;
    r7.xyz = cb2[1].www * r6.xyz + r4.xyz;
  }
  r4.xyz = r7.xyz * r0.www;
  r6.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r6.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r6.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = cb0[2].xyz * r2.zzz;
  r3.xyw = r5.xyz * r0.www + r3.xyw;
  r5.xyz = cb0[2].xyz * r1.www;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t2.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: 77289fa36d060ffa
TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = float2(1,1) + -cb0[8].ww;
  r1.x = -r0.x * 0.699999988 + 1.70000005;
  r0.x = r1.x * r0.x;
  r0.x = 6 * r0.x;
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = dot(v2.xyz, r1.xyz);
  r1.w = r1.w + r1.w;
  r2.xyz = r1.xyz * -r1.www + v2.xyz;
  r2.xyzw = t5.SampleLevel(s0_s, r2.xyz, r0.x).xyzw;
  r0.x = log2(r2.w);
  r0.x = cb2[3].y * r0.x;
  r0.x = exp2(r0.x);
  r1.w = cmp(cb2[3].w == 1.000000);
  r0.x = r1.w ? r0.x : 1;
  r0.x = cb2[3].x * r0.x;
  r2.xyz = r0.xxx * r2.xyz;
  r3.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r2.xyz = r3.yyy * r2.xyz;
  r3.xyz = v6.xyz * r3.yyy;
  r0.x = dot(-v2.xyz, r1.xyz);
  r1.w = r0.x + r0.x;
  r0.x = saturate(r0.x);
  r4.y = 1 + -r0.x;
  r5.xyz = r1.xyz * -r1.www + -v2.xyz;
  r0.x = saturate(dot(r1.xyz, cb1[0].xyz));
  r4.x = dot(r5.xyz, cb1[0].xyz);
  r1.xy = r4.xy * r4.xy;
  r0.yz = r1.xy * r1.xy;
  r1.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.y = cb0[8].w + -r1.x;
  r1.y = saturate(1 + r1.y);
  r4.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r5.xyz = r4.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyzw = cb0[4].wxyz * r4.wxyz;
  r5.xyz = cb0[8].zzz * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.yzw = -r5.xyz + r1.yyy;
  r1.yzw = r0.zzz * r1.yzw + r5.xyz;
  r6.xyzw = t3.Sample(s1_s, r0.yw).xyzw;
  r0.y = 16 * r6.x;
  r1.yzw = r2.xyz * r1.yzw;
  r2.xyz = r4.yzw * r1.xxx;
  r2.xyz = r2.xyz * r4.xxx;
  o0.w = r4.x;
  r1.xyz = r3.xyz * r2.xyz + r1.yzw;
  r0.yzw = r0.yyy * r5.xyz + r2.xyz;
  r2.xy = v7.xy / v7.ww;
  r2.xyzw = t1.Sample(s5_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.xxx;
  r0.xyz = r0.yzw * r2.xyz + r1.xyz;
  r1.xyzw = t4.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "_EMISSION" "_ALPHAPREMULTIPLY_ON" }
"// hash: c16262b3a171fa7e
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float3 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyzw = cb0[4].xyzw * r0.xyzw;
  r0.xyz = r0.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = cb0[8].zzz * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v5.xyz * r2.xxx;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r1.xyz = r1.xyz * r1.www;
  r3.w = 1 + -r0.w;
  o0.w = r1.w * r0.w + r3.w;
  r4.xy = v7.xy / v7.ww;
  r4.xyzw = t1.Sample(s5_s, r4.xy).xyzw;
  r5.xyzw = t2.Sample(s3_s, v1.xy).xyzw;
  r0.w = 1 + -cb0[9].y;
  r0.w = r5.y * cb0[9].y + r0.w;
  r1.w = 1 + -cb0[8].w;
  r4.y = dot(r3.xyz, r2.xyz);
  r4.y = r4.y + r4.y;
  r4.yzw = r2.xyz * -r4.yyy + r3.xyz;
  r5.xyz = cb0[2].xyz * r4.xxx;
  r6.xyzw = t4.Sample(s0_s, v6.zw).xyzw;
  r4.x = cb0[1].x * r6.w;
  r6.xyz = r4.xxx * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r4.x = cmp(0 < cb2[2].w);
  if (r4.x != 0) {
    r4.x = dot(r4.yzw, r4.yzw);
    r4.x = rsqrt(r4.x);
    r7.xyz = r4.yzw * r4.xxx;
    r8.xyz = cb2[0].xyz + -v8.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb2[1].xyz + -v8.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r4.x = min(r8.x, r8.y);
    r4.x = min(r4.x, r8.z);
    r8.xyz = -cb2[2].xyz + v8.xyz;
    r7.xyz = r7.xyz * r4.xxx + r8.xyz;
  } else {
    r7.xyz = r4.yzw;
  }
  r4.x = -r1.w * 0.699999988 + 1.70000005;
  r4.x = r4.x * r1.w;
  r4.x = 6 * r4.x;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.x).xyzw;
  r5.w = cmp(cb2[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb2[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb2[3].x * r5.w;
  r8.xyz = r5.www * r7.xyz;
  r6.w = cmp(cb2[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb2[6].w);
    if (r6.w != 0) {
      r6.w = dot(r4.yzw, r4.yzw);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r4.yzw;
      r10.xyz = cb2[4].xyz + -v8.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb2[5].xyz + -v8.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb2[6].xyz + v8.xyz;
      r4.yzw = r9.xyz * r6.www + r10.xyz;
    }
    r4.xyzw = t6.SampleLevel(s1_s, r4.yzw, r4.x).xyzw;
    r6.w = cmp(cb2[7].w == 1.000000);
    r4.w = log2(r4.w);
    r4.w = cb2[7].y * r4.w;
    r4.w = exp2(r4.w);
    r4.w = r6.w ? r4.w : 1;
    r4.w = cb2[7].x * r4.w;
    r4.xyz = r4.www * r4.xyz;
    r7.xyz = r5.www * r7.xyz + -r4.xyz;
    r8.xyz = cb2[1].www * r7.xyz + r4.xyz;
  }
  r4.xyz = r8.xyz * r0.www;
  r7.xyz = -v2.xyz * r2.www + cb1[0].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = max(0.00100000005, r2.w);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r2.w = dot(r2.xyz, -r3.xyz);
  r3.x = saturate(dot(r2.xyz, cb1[0].xyz));
  r2.x = saturate(dot(r2.xyz, r7.xyz));
  r2.y = saturate(dot(cb1[0].xyz, r7.xyz));
  r2.z = r2.y * r2.y;
  r2.z = dot(r2.zz, r1.ww);
  r2.z = -0.5 + r2.z;
  r3.y = 1 + -r3.x;
  r3.z = r3.y * r3.y;
  r3.z = r3.z * r3.z;
  r3.y = r3.z * r3.y;
  r3.y = r2.z * r3.y + 1;
  r3.z = 1 + -abs(r2.w);
  r4.w = r3.z * r3.z;
  r4.w = r4.w * r4.w;
  r3.z = r4.w * r3.z;
  r2.z = r2.z * r3.z + 1;
  r2.z = r3.y * r2.z;
  r2.z = r2.z * r3.x;
  r3.y = r1.w * r1.w;
  r1.w = -r1.w * r1.w + 1;
  r4.w = abs(r2.w) * r1.w + r3.y;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = abs(r2.w) * r1.w;
  r1.w = r3.x * r4.w + r1.w;
  r1.w = 9.99999975e-06 + r1.w;
  r1.w = 0.5 / r1.w;
  r2.w = r3.y * r3.y;
  r4.w = r2.x * r2.w + -r2.x;
  r2.x = r4.w * r2.x + 1;
  r2.w = 0.318309873 * r2.w;
  r2.x = r2.x * r2.x + 1.00000001e-07;
  r2.x = r2.w / r2.x;
  r1.w = r2.x * r1.w;
  r1.w = 3.14159274 * r1.w;
  r1.w = r1.w * r3.x;
  r1.w = max(0, r1.w);
  r2.x = r3.y * r3.y + 1;
  r2.x = 1 / r2.x;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = cmp(r2.w != 0.000000);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r2.w * r1.w;
  r2.w = saturate(cb0[8].w + r3.w);
  r3.xyw = r5.xyz * r2.zzz;
  r3.xyw = r6.xyz * r0.www + r3.xyw;
  r5.xyz = r1.www * r5.xyz;
  r0.w = 1 + -r2.y;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = float3(1,1,1) + -r0.xyz;
  r6.xyz = r6.xyz * r0.www + r0.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r1.xyz = r1.xyz * r3.xyw + r5.xyz;
  r2.xyz = r2.xxx * r4.xyz;
  r3.xyw = r2.www + -r0.xyz;
  r0.xyz = r3.zzz * r3.xyw + r0.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xyzw = t3.Sample(s4_s, v1.xy).xyzw;
  o0.xyz = r1.xyz * cb0[10].xyz + r0.xyz;
  return;
}"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  LOD 150
  Tags { "LIGHTMODE" = "ForwardAdd" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend Zero One, Zero One
  ZClip Off
  ZWrite Off
  GpuProgramID 452275
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: d2b912fb0f21eb4
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: 49f1a208863cd718
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: e22faae64db69b83
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 4cbfb3fc44065311
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
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
"// hash: c27cfba86ca6f510
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: 701202be0129945a
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// hash: d2b912fb0f21eb4
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" }
"// hash: 49f1a208863cd718
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: 862b4ff5dd330cda
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: a59a4e89f5deefe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// hash: 477f9e65c6e9c484
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: ccca2494d87ad3b
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  o2.xyz = r2.xyz * r2.www;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o6.zw = r0.zw;
  o6.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// hash: 5c68d59e79082ffc
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  o2.xyz = r2.xyz * r2.www;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r1.xyzw = cb3[13].xyzw * v0.yyyy;
  r1.xyzw = cb3[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[12].xy * r1.yy;
  r1.xy = cb0[11].xy * r1.xx + r2.xy;
  r1.xy = cb0[13].xy * r1.zz + r1.xy;
  o6.xy = cb0[14].xy * r1.ww + r1.xy;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// hash: fa7603fd66e3af30
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// hash: fa7603fd66e3af30
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: d2b912fb0f21eb4
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 49f1a208863cd718
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: e22faae64db69b83
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: 4cbfb3fc44065311
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: c27cfba86ca6f510
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 701202be0129945a
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: d2b912fb0f21eb4
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 49f1a208863cd718
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float3 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 862b4ff5dd330cda
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: a59a4e89f5deefe
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float2 o6 : TEXCOORD5)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[12].xy * r0.yy;
  r0.xy = cb0[11].xy * r0.xx + r1.xy;
  r0.xy = cb0[13].xy * r0.zz + r0.xy;
  o6.xy = cb0[14].xy * r0.ww + r0.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: 477f9e65c6e9c484
cbuffer cb4 : register(b4)
{
  float4 cb4[19];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb4[1].xyzw * v0.yyyy;
  r0.xyzw = cb4[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb4[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb4[13].xyz * v0.yyy;
  r0.xyz = cb4[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb4[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb4[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb4[16].xyz);
  r0.y = dot(v1.xyz, cb4[17].xyz);
  r0.z = dot(v1.xyz, cb4[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb4[13].xyzw * v0.yyyy;
  r0.xyzw = cb4[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb4[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb4[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyzw = cb0[12].xyzw * r0.yyyy;
  r1.xyzw = cb0[11].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[13].xyzw * r0.zzzz + r1.xyzw;
  o6.xyzw = cb0[14].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb3[9].xyzw * r0.yyyy;
  r1.xyzw = cb3[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb3[10].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb3[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: ccca2494d87ad3b
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  o2.xyz = r2.xyz * r2.www;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o6.zw = r0.zw;
  o6.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 5c68d59e79082ffc
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.x = cmp(cb0[9].w == 0.000000);
  r1.xy = r1.xx ? v2.xy : v3.xy;
  o1.zw = r1.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r2.xyz = -cb1[4].xyz + r1.xyz;
  r1.xyz = -r1.xyz * cb2[0].www + cb2[0].xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  o2.xyz = r2.xyz * r2.www;
  r1.w = 0;
  o3.xyzw = r1.wwwx;
  o4.xyzw = r1.wwwy;
  o5.w = r1.z;
  r1.x = dot(v1.xyz, cb3[16].xyz);
  r1.y = dot(v1.xyz, cb3[17].xyz);
  r1.z = dot(v1.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o5.xyz = r1.xyz * r1.www;
  r1.xyzw = cb3[13].xyzw * v0.yyyy;
  r1.xyzw = cb3[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[12].xy * r1.yy;
  r1.xy = cb0[11].xy * r1.xx + r2.xy;
  r1.xy = cb0[13].xy * r1.zz + r1.xy;
  o6.xy = cb0[14].xy * r1.ww + r1.xy;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o7.zw = r0.zw;
  o7.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: fa7603fd66e3af30
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: fa7603fd66e3af30
cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float3 o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb3[3].xyzw + r0.xyzw;
  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o1.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o1.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz * v0.www + r0.xyz;
  r1.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r1.xyz = -r0.xyz * cb2[0].www + cb2[0].xyz;
  o7.xyz = -cb2[1].xyz + r0.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = 0;
  o3.xyzw = r0.wwwx;
  o4.xyzw = r0.wwwy;
  o5.w = r0.z;
  r0.x = dot(v1.xyz, cb3[16].xyz);
  r0.y = dot(v1.xyz, cb3[17].xyz);
  r0.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.xyzw = cb3[13].xyzw * v0.yyyy;
  r0.xyzw = cb3[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[15].xyzw * v0.wwww + r0.xyzw;
  r1.xyz = cb0[12].xyz * r0.yyy;
  r1.xyz = cb0[11].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[13].xyz * r0.zzz + r1.xyz;
  o6.xyz = cb0[14].xyz * r0.www + r0.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 6407458d53ff32f
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r1.xx).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: 3493fb8ebf63b5e3
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r1.xx).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: 29b04db280b7f826
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = r0.w * r0.w;
  r1.x = r0.w * r0.w;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.xyz = r2.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.xyz = r1.xyz * r0.www + r2.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 5628847c151a2d35
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = r0.w * r0.w;
  r1.x = r0.w * r0.w;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r2.xyz = r2.xyz * r0.www;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.xyz = r1.xyz * r0.www + r2.xyz;
  o0.xyz = r1.xyz * r0.xyz;
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
"// hash: 57f0c1454f741925
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: 62b91dfa3fa51a93
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" }
"// hash: 2e5d5c52faeada58
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r1.xx).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" }
"// hash: 9a351d566aecaf95
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r1.xx).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: c275949e9abf5ee1
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.www;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: 6f599569d3ed47cc
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.www;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" }
"// hash: 8c5e470f41696927
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerComparisonState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s3_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s4_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.yzw = v7.xyz / v7.www;
  r1.y = t4.SampleCmpLevelZero(s2_s, r1.yz, r1.w).x;
  r1.z = 1 + -cb1[24].x;
  r1.y = r1.y * r1.z + cb1[24].x;
  r1.x = r1.x * r1.y;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"// hash: 4b04e13244b3699a
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xy = v6.xy / v6.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"// hash: ba20c44e5fe76083
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.xy = v7.xy / v7.ww;
  r1.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r2.xyzw = t1.Sample(s3_s, v6.xy).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" }
"// hash: 95522659210daaa
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v7.xyz, v7.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb1[1].w * r1.x;
  r1.x = 0.970000029 * r1.x;
  r2.xyzw = t2.Sample(s2_s, v7.xyz).xyzw;
  r1.x = cmp(r2.x < r1.x);
  r1.x = r1.x ? cb2[24].x : 1;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t1.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"// hash: c694f523f261a22f
Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t4.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r1.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r1.x = dot(v7.xyz, v7.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb1[1].w * r1.x;
  r1.x = 0.970000029 * r1.x;
  r2.xyzw = t3.Sample(s2_s, v7.xyz).xyzw;
  r1.x = cmp(r2.x < r1.x);
  r1.x = r1.x ? cb2[24].x : 1;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t1.Sample(s4_s, r1.yy).xyzw;
  r3.xyzw = t2.Sample(s3_s, v6.xyz).xyzw;
  r1.y = r3.w * r2.x;
  r1.x = r1.y * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: d3048389b352165e
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r1.xx).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 412ef96edbf7e9f5
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s2_s, r1.xx).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: a7404a569fe40970
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = r0.w * r0.w;
  r1.x = r0.w * r0.w;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.xyz = r2.xyz * r0.www;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r1.yzw * r0.www;
  r1.yzw = r1.yzw * r1.xxx + r2.xyz;
  o0.w = r1.x;
  o0.xyz = r1.yzw * r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "_ALPHAPREMULTIPLY_ON" }
"// hash: bc22ef054e77ed1a
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = r0.w * r0.w;
  r1.x = r0.w * r0.w;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r2.xyz = r2.xyz * r0.www;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.yzw = r1.yzw * r0.www;
  r1.yzw = r1.yzw * r1.xxx + r2.xyz;
  o0.w = r1.x;
  o0.xyz = r1.yzw * r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: a5b4cd63cc795c57
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2768f21c5908cbf8
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 2a7fd81c0e7eae05
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r1.xx).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: df9990f966bb2227
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.xyzw = t1.Sample(s3_s, r1.xx).xyzw;
  r2.xyzw = t2.Sample(s2_s, v6.xyz).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 51a7494b2effc380
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.www;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 6ecf68db4d9adfcc
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float2 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.220916301,0.220916301,0.220916301);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.779083729 + 0.779083729;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xyzw = t1.Sample(s2_s, v6.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.www;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: c90720fe060ebc2e
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerComparisonState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xy = v6.xy / v6.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s3_s, r1.xy).xyzw;
  r1.x = cmp(0 < v6.z);
  r1.x = r1.x ? 1.000000 : 0;
  r1.x = r1.x * r1.w;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t2.Sample(s4_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.yzw = v7.xyz / v7.www;
  r1.y = t4.SampleCmpLevelZero(s2_s, r1.yz, r1.w).x;
  r1.z = 1 + -cb1[24].x;
  r1.y = r1.y * r1.z + cb1[24].x;
  r1.x = r1.x * r1.y;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: b45d211c97f7dbfa
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t2.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xy = v6.xy / v6.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHAPREMULTIPLY_ON" }
"// hash: 4b00dd9bda6f47e3
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.xy = v7.xy / v7.ww;
  r1.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r2.xyzw = t1.Sample(s3_s, v6.xy).xyzw;
  r1.x = r2.w * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 8a7ce3add15ce487
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t3.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v7.xyz, v7.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb1[1].w * r1.x;
  r1.x = 0.970000029 * r1.x;
  r2.xyzw = t2.Sample(s2_s, v7.xyz).xyzw;
  r1.x = cmp(r2.x < r1.x);
  r1.x = r1.x ? cb2[24].x : 1;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t1.Sample(s3_s, r1.yy).xyzw;
  r1.x = r2.x * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 9eab794e04c00239
Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float3 v7 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v5.xyz * r0.xxx;
  r0.w = dot(-v2.xyz, r0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = r0.xyz * -r0.www + -v2.xyz;
  r2.x = v3.w;
  r2.y = v4.w;
  r2.z = v5.w;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.x = saturate(dot(r0.xyz, r2.xyz));
  r0.y = r0.w * r0.w;
  r1.x = r0.y * r0.y;
  r1.y = 1 + -cb0[8].w;
  r1.xyzw = t4.Sample(s0_s, r1.xy).xyzw;
  r0.y = 16 * r1.x;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz * cb0[4].xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyzw = cb0[4].wxyz * r1.wxyz;
  r2.xyz = cb0[8].zzz * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.yzw = r2.xyz * r0.yyy;
  r2.x = -cb0[8].z * 0.959999979 + 0.959999979;
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r1.yzw * r1.xxx + r0.yzw;
  o0.w = r1.x;
  r1.x = dot(v7.xyz, v7.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb1[1].w * r1.x;
  r1.x = 0.970000029 * r1.x;
  r2.xyzw = t3.Sample(s2_s, v7.xyz).xyzw;
  r1.x = cmp(r2.x < r1.x);
  r1.x = r1.x ? cb2[24].x : 1;
  r1.y = dot(v6.xyz, v6.xyz);
  r2.xyzw = t1.Sample(s4_s, r1.yy).xyzw;
  r3.xyzw = t2.Sample(s3_s, v6.xyz).xyzw;
  r1.y = r3.w * r2.x;
  r1.x = r1.y * r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.yzw;
  return;
}"
}
}
}
 Pass {
  Name "SHADOWCASTER"
  LOD 150
  Tags { "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 523244
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// hash: e9ba8e6c613064f
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
  float2 v2 : TEXCOORD0,
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
"// hash: 596e282eade9bfe6
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
  float2 v2 : TEXCOORD0,
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
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: 96d61e0cda6674b6
cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float2 v2 : TEXCOORD0,
  out float2 o0 : TEXCOORD1,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = v2.xy * cb0[4].xy + cb0[4].zw;
  r0.xyz = cb3[13].xyz * v0.yyy;
  r0.xyz = cb3[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[15].xyz + r0.xyz;
  r1.xyz = -r0.xyz * cb1[0].www + cb1[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.x = dot(v1.xyz, cb3[16].xyz);
  r2.y = dot(v1.xyz, cb3[17].xyz);
  r2.z = dot(v1.xyz, cb3[18].xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = -r0.w * r0.w + 1;
  r0.w = sqrt(r0.w);
  r0.w = cb2[5].z * r0.w;
  r0.xyz = -r2.xyz * r0.www + r0.xyz;
  r1.xyzw = cb4[18].xyzw * r0.yyyy;
  r1.xyzw = cb4[17].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb4[19].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb4[20].xyzw + r0.xyzw;
  r1.xyzw = cb3[1].xyzw * v0.yyyy;
  r1.xyzw = cb3[0].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[2].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[3].xyzw + r1.xyzw;
  r2.x = cmp(cb2[5].z != 0.000000);
  r0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  r1.x = cb2[5].x / r0.w;
  r1.x = min(0, r1.x);
  r1.x = max(-1, r1.x);
  r0.z = r1.x + r0.z;
  r1.x = min(r0.z, r0.w);
  o1.xyw = r0.xyw;
  r0.x = r1.x + -r0.z;
  o1.z = cb2[5].y * r0.x + r0.z;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: f693f90f11f26c98
cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : TEXCOORD0,
  out float2 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[13].xyz * v0.yyy;
  r0.xyz = cb2[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[14].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[15].xyz * v0.www + r0.xyz;
  o0.xyz = -cb1[1].xyz + r0.xyz;
  o1.xy = v2.xy * cb0[4].xy + cb0[4].zw;
  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o2.xyzw = cb2[3].xyzw + r0.xyzw;
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
"// hash: 2b1e982392fa63ca



// 3Dmigoto declarations
#define cmp -


void main(
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
"// hash: b1b98a8263e1824e
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
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHAPREMULTIPLY_ON" }
"// hash: dee3e9992e957e6a
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.x = r0.w * cb0[2].w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHAPREMULTIPLY_ON" }
"// hash: 8f283c21bc81571c
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float2 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = r0.w * cb0[2].w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb2[5].x + r0.x;
  o0.xyzw = cb1[1].wwww * r0.xxxx;
  return;
}"
}
}
}
 Pass {
  Name "META"
  LOD 150
  Tags { "LIGHTMODE" = "Meta" "PerformanceChecks" = "False" "RenderType" = "Opaque" }
  ZClip Off
  Cull Off
  GpuProgramID 529642
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: be684416e9b8c4b9
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6d46046f243b4521
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: be684416e9b8c4b9
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_EMISSION" }
"// hash: 6d46046f243b4521
cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float2 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[9].w == 0.000000);
  r0.xy = r0.xx ? v2.xy : v3.xy;
  o0.zw = r0.xy * cb0[7].xy + cb0[7].zw;
  o0.xy = v2.xy * cb0[6].xy + cb0[6].zw;
  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v3.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v4.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o1.xyzw = cb1[3].xyzw + r0.xyzw;
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
"// hash: 42a519fa0bf8a58a
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 50c5c74393093795
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.220916301,0.220916301,0.220916301);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "_EMISSION" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "_EMISSION" }
"// hash: 48fb2abd8c29f2e8
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.959999979 + 0.959999979;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r1.xyz = cb0[10].xyz * r1.xyz;
  r2.xyz = r1.xyz * float3(0.305306017,0.305306017,0.305306017) + float3(0.682171106,0.682171106,0.682171106);
  r2.xyz = r1.xyz * r2.xyz + float3(0.0125228781,0.0125228781,0.0125228781);
  r2.xyz = r2.xyz * r1.xyz;
  r1.w = cmp(0 != cb0[11].z);
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r1.xyz = float3(0.010309278,0.010309278,0.010309278) * r1.xyz;
  r1.w = max(r1.x, r1.y);
  r2.x = max(0.0199999996, r1.z);
  r1.w = max(r2.x, r1.w);
  r1.w = 255 * r1.w;
  r1.w = ceil(r1.w);
  r2.w = 0.00392156886 * r1.w;
  r2.xyz = r1.xyz / r2.www;
  o0.xyzw = cb1[1].yyyy ? r2.xyzw : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "_EMISSION" }
"// hash: 2dc9c8b309545849
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb0[8].w;
  r0.x = r0.x * r0.x;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz + float3(-0.220916301,-0.220916301,-0.220916301);
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.yzw = cb0[8].zzz * r0.yzw + float3(0.220916301,0.220916301,0.220916301);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.w = -cb0[8].z * 0.779083729 + 0.779083729;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[11].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[11].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  r1.xyzw = t1.Sample(s1_s, v0.xy).xyzw;
  r1.xyz = cb0[10].xyz * r1.xyz;
  r2.xyz = r1.xyz * float3(0.305306017,0.305306017,0.305306017) + float3(0.682171106,0.682171106,0.682171106);
  r2.xyz = r1.xyz * r2.xyz + float3(0.0125228781,0.0125228781,0.0125228781);
  r2.xyz = r2.xyz * r1.xyz;
  r1.w = cmp(0 != cb0[11].z);
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r1.xyz = float3(0.010309278,0.010309278,0.010309278) * r1.xyz;
  r1.w = max(r1.x, r1.y);
  r2.x = max(0.0199999996, r1.z);
  r1.w = max(r2.x, r1.w);
  r1.w = 255 * r1.w;
  r1.w = ceil(r1.w);
  r2.w = 0.00392156886 * r1.w;
  r2.xyz = r1.xyz / r2.www;
  o0.xyzw = cb1[1].yyyy ? r2.xyzw : r0.xyzw;
  return;
}"
}
}
}
}
Fallback "VertexLit"
CustomEditor "StandardShaderGUI"
}