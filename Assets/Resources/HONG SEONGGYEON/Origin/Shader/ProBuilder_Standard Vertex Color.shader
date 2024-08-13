//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "ProBuilder/Standard Vertex Color" {
Properties {
_BumpMap ("Normal Map", 2D) = "bump" { }
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Base Color", 2D) = "white" { }
_Metallic ("Metallic", Range(0, 1)) = 0
_Gloss ("Gloss", Range(0, 1)) = 0.8
}
SubShader {
 Tags { "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE" = "ForwardBase" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 51531
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: a601fad86fd3a8a4
cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.zw = v5.xy * cb1[1].xy + cb1[1].zw;
  o8.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" }
"// hash: 777fb94bf8b4c70
cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o9.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 911e4de69f26edae
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD10)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  o8.xyzw = float4(0,0,0,0);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "VERTEXLIGHT_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: d7620c04ca47b5a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD10)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  o9.xyzw = float4(0,0,0,0);
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b3ccca9d98126b20
Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r5.xyz = cb4[2].xyz * v3.yyy;
    r5.xyz = cb4[1].xyz * v3.xxx + r5.xyz;
    r5.xyz = cb4[3].xyz * v3.zzz + r5.xyz;
    r5.xyz = cb4[4].xyz + r5.xyz;
    r5.xyz = r4.www ? r5.xyz : v3.xyz;
    r5.xyz = -cb4[6].xyz + r5.xyz;
    r5.yzw = cb4[5].xyz * r5.xyz;
    r4.w = 0.25 * r5.y;
    r5.y = 0.5 * cb4[0].z;
    r6.x = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.y, r4.w);
    r5.x = min(r4.w, r6.x);
    r6.xyzw = t4.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t4.Sample(s1_s, r5.xyz).xyzw;
    r3.w = 1;
    r6.x = dot(r6.xyzw, r3.xyzw);
    r6.y = dot(r7.xyzw, r3.xyzw);
    r6.z = dot(r5.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r6.x = dot(cb2[38].xyzw, r3.xyzw);
    r6.y = dot(cb2[39].xyzw, r3.xyzw);
    r6.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r5.xyz = v8.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.www * r0.xyz;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t2.SampleLevel(s0_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r0.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t3.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r8.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r0.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r7.y + r3.w;
  r1.z = r2.x * r7.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r8.xy = r2.xy * r2.xy;
  r8.xy = r8.xy * r8.xy;
  r2.xy = r8.xy * r2.xy;
  r8.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
  o0.xyz = r0.xyz * r6.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: bb705592c21feea0
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t4.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: dc2665875543c4a
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

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r6.xyz = cb4[2].xyz * v3.yyy;
    r6.xyz = cb4[1].xyz * v3.xxx + r6.xyz;
    r6.xyz = cb4[3].xyz * v3.zzz + r6.xyz;
    r6.xyz = cb4[4].xyz + r6.xyz;
    r6.xyz = r4.www ? r6.xyz : v3.xyz;
    r6.xyz = -cb4[6].xyz + r6.xyz;
    r6.yzw = cb4[5].xyz * r6.xyz;
    r4.w = 0.25 * r6.y;
    r5.w = 0.5 * cb4[0].z;
    r6.y = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.w, r4.w);
    r6.x = min(r4.w, r6.y);
    r7.xyzw = t5.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r3.w = 1;
    r7.x = dot(r7.xyzw, r3.xyzw);
    r7.y = dot(r8.xyzw, r3.xyzw);
    r7.z = dot(r6.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r7.x = dot(cb2[38].xyzw, r3.xyzw);
    r7.y = dot(cb2[39].xyzw, r3.xyzw);
    r7.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r6.xyz = v9.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.www * r0.xyz;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t3.SampleLevel(s0_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r0.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t4.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r9.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r0.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r8.y + r3.w;
  r1.z = r2.x * r8.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = r1.xxx * r5.xyz;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r9.xy = r2.xy * r2.xy;
  r9.xy = r9.xy * r9.xy;
  r2.xy = r9.xy * r2.xy;
  r9.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r6.xyz;
  o0.xyz = r0.xyz * r7.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 814b151d653d1ee1
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: bb705592c21feea0
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t4.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: bb705592c21feea0
TextureCube<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t3.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t4.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 814b151d653d1ee1
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 814b151d653d1ee1
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t4.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b3ccca9d98126b20
Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r5.xyz = cb4[2].xyz * v3.yyy;
    r5.xyz = cb4[1].xyz * v3.xxx + r5.xyz;
    r5.xyz = cb4[3].xyz * v3.zzz + r5.xyz;
    r5.xyz = cb4[4].xyz + r5.xyz;
    r5.xyz = r4.www ? r5.xyz : v3.xyz;
    r5.xyz = -cb4[6].xyz + r5.xyz;
    r5.yzw = cb4[5].xyz * r5.xyz;
    r4.w = 0.25 * r5.y;
    r5.y = 0.5 * cb4[0].z;
    r6.x = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.y, r4.w);
    r5.x = min(r4.w, r6.x);
    r6.xyzw = t4.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t4.Sample(s1_s, r5.xyz).xyzw;
    r3.w = 1;
    r6.x = dot(r6.xyzw, r3.xyzw);
    r6.y = dot(r7.xyzw, r3.xyzw);
    r6.z = dot(r5.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r6.x = dot(cb2[38].xyzw, r3.xyzw);
    r6.y = dot(cb2[39].xyzw, r3.xyzw);
    r6.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r5.xyz = v8.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.www * r0.xyz;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t2.SampleLevel(s0_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r0.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t3.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r8.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r0.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r7.y + r3.w;
  r1.z = r2.x * r7.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r8.xy = r2.xy * r2.xy;
  r8.xy = r8.xy * r8.xy;
  r2.xy = r8.xy * r2.xy;
  r8.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
  o0.xyz = r0.xyz * r6.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: dc2665875543c4a
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

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r6.xyz = cb4[2].xyz * v3.yyy;
    r6.xyz = cb4[1].xyz * v3.xxx + r6.xyz;
    r6.xyz = cb4[3].xyz * v3.zzz + r6.xyz;
    r6.xyz = cb4[4].xyz + r6.xyz;
    r6.xyz = r4.www ? r6.xyz : v3.xyz;
    r6.xyz = -cb4[6].xyz + r6.xyz;
    r6.yzw = cb4[5].xyz * r6.xyz;
    r4.w = 0.25 * r6.y;
    r5.w = 0.5 * cb4[0].z;
    r6.y = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.w, r4.w);
    r6.x = min(r4.w, r6.y);
    r7.xyzw = t5.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r3.w = 1;
    r7.x = dot(r7.xyzw, r3.xyzw);
    r7.y = dot(r8.xyzw, r3.xyzw);
    r7.z = dot(r6.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r7.x = dot(cb2[38].xyzw, r3.xyzw);
    r7.y = dot(cb2[39].xyzw, r3.xyzw);
    r7.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r6.xyz = v9.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.www * r0.xyz;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t3.SampleLevel(s0_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r0.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t4.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r9.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r0.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r8.y + r3.w;
  r1.z = r2.x * r8.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = r1.xxx * r5.xyz;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r9.xy = r2.xy * r2.xy;
  r9.xy = r9.xy * r9.xy;
  r2.xy = r9.xy * r2.xy;
  r9.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r6.xyz;
  o0.xyz = r0.xyz * r7.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 467239bff8652fd5
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r5.xyzw = t2.Sample(s0_s, v8.zw).xyzw;
  r3.w = cb0[1].x * r5.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb0[1].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r6.xyzw = t3.Sample(s0_s, v8.zw).xyzw;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r3.w = dot(r0.xyz, r6.xyz);
  r3.w = 0.5 + r3.w;
  r5.xyz = r5.xyz * r3.www;
  r3.w = max(9.99999975e-05, r6.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.xyz * r3.www;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t4.SampleLevel(s1_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r3.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t5.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r8.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r3.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r7.y + r3.w;
  r0.z = r2.x * r7.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r8.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * cb0[2].xyz + r5.xyz;
  o0.xyz = r1.xyz * r6.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d9 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11 hw_tier03 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 92b822f49d1e5a2f
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

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r2.xyz, r0.xyz);
  r1.w = r1.w + r1.w;
  r3.xyz = r0.xyz * -r1.www + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r6.xyzw = t3.Sample(s0_s, v9.zw).xyzw;
  r3.w = cb0[1].x * r6.w;
  r6.xyz = r3.www * r6.xyz;
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb0[1].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r7.xyzw = t4.Sample(s0_s, v9.zw).xyzw;
  r7.xyz = float3(-0.5,-0.5,-0.5) + r7.xyz;
  r3.w = dot(r0.xyz, r7.xyz);
  r3.w = 0.5 + r3.w;
  r6.xyz = r6.xyz * r3.www;
  r3.w = max(9.99999975e-05, r7.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.xyz * r3.www;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r3.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t5.SampleLevel(s1_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r3.xyz, r3.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r3.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r3.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t6.SampleLevel(s1_s, r3.xyz, r4.w).xyzw;
    r3.x = cmp(cb3[7].w == 1.000000);
    r3.y = log2(r9.w);
    r3.y = cb3[7].y * r3.y;
    r3.y = exp2(r3.y);
    r3.x = r3.x ? r3.y : 1;
    r3.x = cb3[7].x * r3.x;
    r3.xyz = r3.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r3.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r3.xyz;
  }
  r3.x = dot(r0.xyz, r4.xyz);
  r3.y = dot(r4.xyz, r1.xyz);
  r3.xy = max(float2(0,0), r3.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r3.zzz;
  r3.z = 1 + -r3.z;
  r2.x = dot(r0.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = r3.x * r8.y + r3.w;
  r0.z = r2.x * r8.y + r3.w;
  r0.y = r0.y * r0.z + 9.99999975e-06;
  r0.y = 1 / r0.y;
  r0.y = 0.25 * r0.y;
  r0.z = r2.w * r2.w;
  r0.z = r0.z * r0.z;
  r0.xz = max(float2(0,9.99999975e-05), r0.xz);
  r0.z = 2 / r0.z;
  r0.z = -2 + r0.z;
  r0.z = max(9.99999975e-05, r0.z);
  r1.x = 2 + r0.z;
  r1.x = 0.159154937 * r1.x;
  r0.x = log2(r0.x);
  r0.z = r0.z * r0.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.x;
  r0.y = r3.x * r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 0.785398185 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r1.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.y;
  r0.xyz = r0.xxx * r5.xyz;
  r1.x = 1 + -r3.y;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.y * r1.x;
  r1.yzw = float3(1,1,1) + -r4.xyz;
  r1.xyz = r1.yzw * r1.xxx + r4.xyz;
  r0.w = saturate(r3.z + r0.w);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r3.zw = r2.xy * r2.xy;
  r3.zw = r3.zw * r3.zw;
  r2.xy = r3.zw * r2.xy;
  r9.xyz = r0.www + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r0.xyz = r0.xyz * r1.xyz + r4.xyz;
  r0.w = r3.y + r3.y;
  r0.w = r0.w * r3.y;
  r0.w = r0.w * r2.w + -0.5;
  r1.x = 1.00001001 + -r3.x;
  r1.y = r1.x * r1.x;
  r1.y = r1.y * r1.y;
  r1.x = r1.x * r1.y;
  r1.x = r0.w * r1.x + 1;
  r0.w = r0.w * r2.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r3.x;
  r1.xyz = r0.www * r5.xyz + r6.xyz;
  o0.xyz = r1.xyz * r7.xyz + r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b3ccca9d98126b20
Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s3_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r5.xyz = cb4[2].xyz * v3.yyy;
    r5.xyz = cb4[1].xyz * v3.xxx + r5.xyz;
    r5.xyz = cb4[3].xyz * v3.zzz + r5.xyz;
    r5.xyz = cb4[4].xyz + r5.xyz;
    r5.xyz = r4.www ? r5.xyz : v3.xyz;
    r5.xyz = -cb4[6].xyz + r5.xyz;
    r5.yzw = cb4[5].xyz * r5.xyz;
    r4.w = 0.25 * r5.y;
    r5.y = 0.5 * cb4[0].z;
    r6.x = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.y, r4.w);
    r5.x = min(r4.w, r6.x);
    r6.xyzw = t4.Sample(s1_s, r5.xzw).xyzw;
    r7.xyz = float3(0.25,0,0) + r5.xzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r5.xyz = float3(0.5,0,0) + r5.xzw;
    r5.xyzw = t4.Sample(s1_s, r5.xyz).xyzw;
    r3.w = 1;
    r6.x = dot(r6.xyzw, r3.xyzw);
    r6.y = dot(r7.xyzw, r3.xyzw);
    r6.z = dot(r5.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r6.x = dot(cb2[38].xyzw, r3.xyzw);
    r6.y = dot(cb2[39].xyzw, r3.xyzw);
    r6.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r5.xyz = v8.xyz + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r3.www * r0.xyz;
    r7.xyz = cb3[0].xyz + -v3.xyz;
    r7.xyz = r7.xyz / r6.xyz;
    r8.xyz = cb3[1].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r6.xyz;
    r9.xyz = cmp(float3(0,0,0) < r6.xyz);
    r7.xyz = r9.xyz ? r7.xyz : r8.xyz;
    r3.w = min(r7.x, r7.y);
    r3.w = min(r3.w, r7.z);
    r7.xyz = -cb3[2].xyz + v3.xyz;
    r6.xyz = r6.xyz * r3.www + r7.xyz;
  } else {
    r6.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r7.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r7.x * r2.w;
  r4.w = 6 * r4.w;
  r6.xyzw = t2.SampleLevel(s0_s, r6.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r6.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r7.xzw = r5.www * r6.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r8.xyz = r6.www * r0.xyz;
      r9.xyz = cb3[4].xyz + -v3.xyz;
      r9.xyz = r9.xyz / r8.xyz;
      r10.xyz = cb3[5].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r8.xyz;
      r11.xyz = cmp(float3(0,0,0) < r8.xyz);
      r9.xyz = r11.xyz ? r9.xyz : r10.xyz;
      r6.w = min(r9.x, r9.y);
      r6.w = min(r6.w, r9.z);
      r9.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r8.xyz * r6.www + r9.xyz;
    }
    r8.xyzw = t3.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r8.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r8.xyz;
    r6.xyz = r5.www * r6.xyz + -r0.xyz;
    r7.xzw = cb3[1].www * r6.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t1.Sample(s2_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r6.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r6.xyz = r6.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r7.y + r3.w;
  r1.z = r2.x * r7.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r8.xy = r2.xy * r2.xy;
  r8.xy = r8.xy * r8.xy;
  r2.xy = r8.xy * r2.xy;
  r8.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r8.xyz + r4.xyz;
  r4.xyz = r7.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
  o0.xyz = r0.xyz * r6.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: dc2665875543c4a
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

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[41];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD10,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r3.xyzw = t0.Sample(s4_s, r3.xy).xyzw;
  r3.xy = r3.wy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = min(1, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = sqrt(r1.w);
  r3.yzw = v6.xyz * r3.yyy;
  r3.xyz = r3.xxx * v5.xyz + r3.yzw;
  r0.xyz = r1.www * r0.xyz + r3.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-r2.xyz, r3.xyz);
  r0.x = r0.x + r0.x;
  r0.xyz = r3.xyz * -r0.xxx + -r2.xyz;
  r1.w = dot(cb2[0].xyz, cb2[0].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb2[0].xyz * r1.www;
  r1.xyz = r1.xyz * r0.www + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xy = v8.xy / v8.ww;
  r5.xyzw = t1.Sample(s2_s, r5.xy).xyzw;
  r5.xyz = cb0[2].xyz * r5.xxx;
  r0.w = 1 + -cb0[7].y;
  r1.w = r0.w * 10 + 1;
  r1.w = exp2(r1.w);
  r2.w = 1 + -r0.w;
  r4.w = cmp(cb4[0].x == 1.000000);
  if (r4.w != 0) {
    r4.w = cmp(cb4[0].y == 1.000000);
    r6.xyz = cb4[2].xyz * v3.yyy;
    r6.xyz = cb4[1].xyz * v3.xxx + r6.xyz;
    r6.xyz = cb4[3].xyz * v3.zzz + r6.xyz;
    r6.xyz = cb4[4].xyz + r6.xyz;
    r6.xyz = r4.www ? r6.xyz : v3.xyz;
    r6.xyz = -cb4[6].xyz + r6.xyz;
    r6.yzw = cb4[5].xyz * r6.xyz;
    r4.w = 0.25 * r6.y;
    r5.w = 0.5 * cb4[0].z;
    r6.y = -cb4[0].z * 0.5 + 0.25;
    r4.w = max(r5.w, r4.w);
    r6.x = min(r4.w, r6.y);
    r7.xyzw = t5.Sample(s1_s, r6.xzw).xyzw;
    r8.xyz = float3(0.25,0,0) + r6.xzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r6.xyz = float3(0.5,0,0) + r6.xzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r3.w = 1;
    r7.x = dot(r7.xyzw, r3.xyzw);
    r7.y = dot(r8.xyzw, r3.xyzw);
    r7.z = dot(r6.xyzw, r3.xyzw);
  } else {
    r3.w = 1;
    r7.x = dot(cb2[38].xyzw, r3.xyzw);
    r7.y = dot(cb2[39].xyzw, r3.xyzw);
    r7.z = dot(cb2[40].xyzw, r3.xyzw);
  }
  r6.xyz = v9.xyz + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb3[2].w);
  if (r3.w != 0) {
    r3.w = dot(r0.xyz, r0.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r3.www * r0.xyz;
    r8.xyz = cb3[0].xyz + -v3.xyz;
    r8.xyz = r8.xyz / r7.xyz;
    r9.xyz = cb3[1].xyz + -v3.xyz;
    r9.xyz = r9.xyz / r7.xyz;
    r10.xyz = cmp(float3(0,0,0) < r7.xyz);
    r8.xyz = r10.xyz ? r8.xyz : r9.xyz;
    r3.w = min(r8.x, r8.y);
    r3.w = min(r3.w, r8.z);
    r8.xyz = -cb3[2].xyz + v3.xyz;
    r7.xyz = r7.xyz * r3.www + r8.xyz;
  } else {
    r7.xyz = r0.xyz;
  }
  r3.w = 0.797884583 * r2.w;
  r8.xy = -r2.ww * float2(0.699999988,0.797884583) + float2(1.70000005,1);
  r4.w = r8.x * r2.w;
  r4.w = 6 * r4.w;
  r7.xyzw = t3.SampleLevel(s0_s, r7.xyz, r4.w).xyzw;
  r5.w = cmp(cb3[3].w == 1.000000);
  r6.w = log2(r7.w);
  r6.w = cb3[3].y * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? r6.w : 1;
  r5.w = cb3[3].x * r5.w;
  r8.xzw = r5.www * r7.xyz;
  r6.w = cmp(cb3[1].w < 0.999989986);
  if (r6.w != 0) {
    r6.w = cmp(0 < cb3[6].w);
    if (r6.w != 0) {
      r6.w = dot(r0.xyz, r0.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r6.www * r0.xyz;
      r10.xyz = cb3[4].xyz + -v3.xyz;
      r10.xyz = r10.xyz / r9.xyz;
      r11.xyz = cb3[5].xyz + -v3.xyz;
      r11.xyz = r11.xyz / r9.xyz;
      r12.xyz = cmp(float3(0,0,0) < r9.xyz);
      r10.xyz = r12.xyz ? r10.xyz : r11.xyz;
      r6.w = min(r10.x, r10.y);
      r6.w = min(r6.w, r10.z);
      r10.xyz = -cb3[6].xyz + v3.xyz;
      r0.xyz = r9.xyz * r6.www + r10.xyz;
    }
    r9.xyzw = t4.SampleLevel(s0_s, r0.xyz, r4.w).xyzw;
    r0.x = cmp(cb3[7].w == 1.000000);
    r0.y = log2(r9.w);
    r0.y = cb3[7].y * r0.y;
    r0.y = exp2(r0.y);
    r0.x = r0.x ? r0.y : 1;
    r0.x = cb3[7].x * r0.x;
    r0.xyz = r0.xxx * r9.xyz;
    r7.xyz = r5.www * r7.xyz + -r0.xyz;
    r8.xzw = cb3[1].www * r7.xyz + r0.xyz;
  }
  r0.x = dot(r3.xyz, r4.xyz);
  r0.y = dot(r4.xyz, r1.xyz);
  r0.xy = max(float2(0,0), r0.xy);
  r4.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r4.xyzw = t2.Sample(s3_s, r4.xy).xyzw;
  r4.xyz = cb0[4].xyz * r4.xyz;
  r7.xyz = v7.xyz * r4.xyz;
  r4.xyz = r4.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = -cb0[7].x * 0.959999979 + 0.959999979;
  r7.xyz = r7.xyz * r0.zzz;
  r0.z = 1 + -r0.z;
  r2.x = dot(r3.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = r0.x * r8.y + r3.w;
  r1.z = r2.x * r8.y + r3.w;
  r1.y = r1.y * r1.z + 9.99999975e-06;
  r1.y = 1 / r1.y;
  r1.y = 0.25 * r1.y;
  r1.z = r2.w * r2.w;
  r1.z = r1.z * r1.z;
  r1.xz = max(float2(0,9.99999975e-05), r1.xz);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r2.y = 2 + r1.z;
  r2.y = 0.159154937 * r2.y;
  r1.x = log2(r1.x);
  r1.z = r1.z * r1.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * r2.y;
  r1.y = r1.y * r0.x;
  r1.xy = r1.wy * r1.xz;
  r1.y = 0.785398185 * r1.y;
  r1.y = max(0, r1.y);
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.y;
  r1.xyz = r1.xxx * r5.xyz;
  r1.w = 1 + -r0.y;
  r2.y = r1.w * r1.w;
  r2.y = r2.y * r2.y;
  r1.w = r2.y * r1.w;
  r3.xyz = float3(1,1,1) + -r4.xyz;
  r3.xyz = r3.xyz * r1.www + r4.xyz;
  r0.z = saturate(r0.w + r0.z);
  r2.xy = float2(1,1.00001001) + -r2.xx;
  r9.xy = r2.xy * r2.xy;
  r9.xy = r9.xy * r9.xy;
  r2.xy = r9.xy * r2.xy;
  r9.xyz = r0.zzz + -r4.xyz;
  r4.xyz = r2.xxx * r9.xyz + r4.xyz;
  r4.xyz = r8.xzw * r4.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r2.w + -0.5;
  r0.z = 1.00001001 + -r0.x;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = r0.y * r0.z + 1;
  r0.y = r0.y * r2.y + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r5.xyz + r6.xyz;
  o0.xyz = r0.xyz * r7.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE" = "ForwardAdd" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Blend One One, One One
  ZClip Off
  GpuProgramID 118386
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5fd80e9da3182e76
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 42e2fd92dcec9d50
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b9c5d1ce599aa0f5
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[3].xy * r0.yy;
  r1.xy = cb0[2].xy * r0.xx + r1.xy;
  r1.xy = cb0[4].xy * r0.zz + r1.xy;
  p2.xy = cb0[5].xy * r0.ww + r1.xy;
  o3.xyzw = r0.xyzw;
  o2.xy = v5.xy;
  r0.x = dot(v1.xyz, cb1[16].xyz);
  r0.y = dot(v1.xyz, cb1[17].xyz);
  r0.z = dot(v1.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb1[13].xyz * v2.yyy;
  r1.xyz = cb1[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 934123bbe52d1aaa
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: c8d416695f38041a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fe437999b15cbb5f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r1.xyzw = cb2[13].xyzw * v0.yyyy;
  r1.xyzw = cb2[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[3].xy * r1.yy;
  r2.xy = cb0[2].xy * r1.xx + r2.xy;
  r2.xy = cb0[4].xy * r1.zz + r2.xy;
  p2.xy = cb0[5].xy * r1.ww + r2.xy;
  o3.xyzw = r1.xyzw;
  o2.xy = v5.xy;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 303ea5fc7c1bcd27
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 5fd80e9da3182e76
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 42e2fd92dcec9d50
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: b9c5d1ce599aa0f5
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[3].xy * r0.yy;
  r1.xy = cb0[2].xy * r0.xx + r1.xy;
  r1.xy = cb0[4].xy * r0.zz + r1.xy;
  p2.xy = cb0[5].xy * r0.ww + r1.xy;
  o3.xyzw = r0.xyzw;
  o2.xy = v5.xy;
  r0.x = dot(v1.xyz, cb1[16].xyz);
  r0.y = dot(v1.xyz, cb1[17].xyz);
  r0.z = dot(v1.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb1[13].xyz * v2.yyy;
  r1.xyz = cb1[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 934123bbe52d1aaa
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: c8d416695f38041a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: fe437999b15cbb5f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r1.xyzw = cb2[13].xyzw * v0.yyyy;
  r1.xyzw = cb2[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[3].xy * r1.yy;
  r2.xy = cb0[2].xy * r1.xx + r2.xy;
  r2.xy = cb0[4].xy * r1.zz + r2.xy;
  p2.xy = cb0[5].xy * r1.ww + r2.xy;
  o3.xyzw = r1.xyzw;
  o2.xy = v5.xy;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 303ea5fc7c1bcd27
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5fd80e9da3182e76
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 42e2fd92dcec9d50
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b9c5d1ce599aa0f5
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[3].xy * r0.yy;
  r1.xy = cb0[2].xy * r0.xx + r1.xy;
  r1.xy = cb0[4].xy * r0.zz + r1.xy;
  p2.xy = cb0[5].xy * r0.ww + r1.xy;
  o3.xyzw = r0.xyzw;
  o2.xy = v5.xy;
  r0.x = dot(v1.xyz, cb1[16].xyz);
  r0.y = dot(v1.xyz, cb1[17].xyz);
  r0.z = dot(v1.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb1[13].xyz * v2.yyy;
  r1.xyz = cb1[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 934123bbe52d1aaa
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: c8d416695f38041a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fe437999b15cbb5f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r1.xyzw = cb2[13].xyzw * v0.yyyy;
  r1.xyzw = cb2[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[3].xy * r1.yy;
  r2.xy = cb0[2].xy * r1.xx + r2.xy;
  r2.xy = cb0[4].xy * r1.zz + r2.xy;
  p2.xy = cb0[5].xy * r1.ww + r2.xy;
  o3.xyzw = r1.xyzw;
  o2.xy = v5.xy;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 303ea5fc7c1bcd27
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 5fd80e9da3182e76
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 42e2fd92dcec9d50
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: b9c5d1ce599aa0f5
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[3].xy * r0.yy;
  r1.xy = cb0[2].xy * r0.xx + r1.xy;
  r1.xy = cb0[4].xy * r0.zz + r1.xy;
  p2.xy = cb0[5].xy * r0.ww + r1.xy;
  o3.xyzw = r0.xyzw;
  o2.xy = v5.xy;
  r0.x = dot(v1.xyz, cb1[16].xyz);
  r0.y = dot(v1.xyz, cb1[17].xyz);
  r0.z = dot(v1.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb1[13].xyz * v2.yyy;
  r1.xyz = cb1[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 934123bbe52d1aaa
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: c8d416695f38041a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: fe437999b15cbb5f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r1.xyzw = cb2[13].xyzw * v0.yyyy;
  r1.xyzw = cb2[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[3].xy * r1.yy;
  r2.xy = cb0[2].xy * r1.xx + r2.xy;
  r2.xy = cb0[4].xy * r1.zz + r2.xy;
  p2.xy = cb0[5].xy * r1.ww + r2.xy;
  o3.xyzw = r1.xyzw;
  o2.xy = v5.xy;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 303ea5fc7c1bcd27
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5fd80e9da3182e76
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  r0.x = dot(v1.xyz, cb0[16].xyz);
  r0.y = dot(v1.xyz, cb0[17].xyz);
  r0.z = dot(v1.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb0[13].xyz * v2.yyy;
  r1.xyz = cb0[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb0[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 42e2fd92dcec9d50
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3f7f8f4acc8581a4
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float3 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b9c5d1ce599aa0f5
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r0.xyzw = cb1[13].xyzw * v0.yyyy;
  r0.xyzw = cb1[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[15].xyzw * v0.wwww + r0.xyzw;
  r1.xy = cb0[3].xy * r0.yy;
  r1.xy = cb0[2].xy * r0.xx + r1.xy;
  r1.xy = cb0[4].xy * r0.zz + r1.xy;
  p2.xy = cb0[5].xy * r0.ww + r1.xy;
  o3.xyzw = r0.xyzw;
  o2.xy = v5.xy;
  r0.x = dot(v1.xyz, cb1[16].xyz);
  r0.y = dot(v1.xyz, cb1[17].xyz);
  r0.z = dot(v1.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o4.xyz = r0.xyz;
  r1.xyz = cb1[13].xyz * v2.yyy;
  r1.xyz = cb1[12].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[14].xyz * v2.zzz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  o5.xyz = r1.xyz;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r0.xyz = v2.www * r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o6.xyz = r0.xyz * r0.www;
  o7.xyzw = v6.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 934123bbe52d1aaa
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[3].xyzw * r0.yyyy;
  r1.xyzw = cb0[2].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[4].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[5].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: c8d416695f38041a
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r1.xyzw = cb1[13].xyzw * v0.yyyy;
  r1.xyzw = cb1[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb1[14].xyzw * v0.zzzz + r1.xyzw;
  o3.xyzw = cb1[15].xyzw * v0.wwww + r1.xyzw;
  r1.x = dot(v1.xyz, cb1[16].xyz);
  r1.y = dot(v1.xyz, cb1[17].xyz);
  r1.z = dot(v1.xyz, cb1[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb1[13].xyz * v2.yyy;
  r2.xyz = cb1[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb0[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fe437999b15cbb5f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float2 o2 : TEXCOORD2,
  out float2 p2 : TEXCOORD7,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  r1.xyzw = cb2[13].xyzw * v0.yyyy;
  r1.xyzw = cb2[12].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb2[14].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb2[15].xyzw * v0.wwww + r1.xyzw;
  r2.xy = cb0[3].xy * r1.yy;
  r2.xy = cb0[2].xy * r1.xx + r2.xy;
  r2.xy = cb0[4].xy * r1.zz + r2.xy;
  p2.xy = cb0[5].xy * r1.ww + r2.xy;
  o3.xyzw = r1.xyzw;
  o2.xy = v5.xy;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o8.zw = r0.zw;
  o8.xy = r1.xw + r1.zz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 303ea5fc7c1bcd27
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyzw = cb0[7].xyzw * r0.yyyy;
  r1.xyzw = cb0[6].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[8].xyzw * r0.zzzz + r1.xyzw;
  o8.xyzw = cb0[9].xyzw * r0.wwww + r1.xyzw;
  r1.xyzw = cb1[9].xyzw * r0.yyyy;
  r1.xyzw = cb1[8].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[10].xyzw * r0.zzzz + r1.xyzw;
  o9.xyzw = cb1[11].xyzw * r0.wwww + r1.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 564b56a7f6090299
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 v2 : TANGENT0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float2 v5 : TEXCOORD2,
  float4 v6 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : COLOR0,
  out float4 o8 : TEXCOORD7,
  out float3 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw * v0.wwww + r0.xyzw;
  o1.xy = v3.xy;
  p1.xy = v4.xy;
  o2.xy = v5.xy;
  r0.xyzw = cb2[13].xyzw * v0.yyyy;
  r0.xyzw = cb2[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[14].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[15].xyzw * v0.wwww + r0.xyzw;
  o3.xyzw = r0.xyzw;
  r1.x = dot(v1.xyz, cb2[16].xyz);
  r1.y = dot(v1.xyz, cb2[17].xyz);
  r1.z = dot(v1.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o4.xyz = r1.xyz;
  r2.xyz = cb2[13].xyz * v2.yyy;
  r2.xyz = cb2[12].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * v2.zzz + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  o5.xyz = r2.xyz;
  r3.xyz = r2.yzx * r1.zxy;
  r1.xyz = r1.yzx * r2.zxy + -r3.xyz;
  r1.xyz = v2.www * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r1.xyz * r1.www;
  o7.xyzw = v6.xyzw;
  r1.xyz = cb0[3].xyz * r0.yyy;
  r1.xyz = cb0[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb0[4].xyz * r0.zzz + r1.xyz;
  o8.xyz = cb0[5].xyz * r0.www + r1.xyz;
  o9.xyz = -cb1[1].xyz + r0.xyz;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 8b9e48d4c86f7de2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s0_s, r1.zz).xyzw;
  r2.xyz = cb0[6].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b684472f6df89f21
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.xzw = cb0[2].xyz * r1.xxx;
  r2.x = r1.y * r1.y;
  r2.x = r2.x * r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = 2 / r2.x;
  r2.x = -2 + r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r0.z = r2.x * r0.z;
  r2.x = 2 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r2.x;
  r2.x = 0.797884583 * r1.y;
  r2.y = -r1.y * 0.797884583 + 1;
  r2.z = r0.w * r2.y + r2.x;
  r2.x = r0.x * r2.y + r2.x;
  r2.x = r2.x * r2.z + 9.99999975e-06;
  r2.x = 1 / r2.x;
  r2.x = 0.25 * r2.x;
  r2.x = r2.x * r0.x;
  r0.z = r2.x * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.x = r0.z * r0.z;
  r2.x = r2.x * r2.x;
  r0.z = r2.x * r0.z;
  r2.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r2.xyzw = t1.Sample(s0_s, r2.xy).xyzw;
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = r2.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = v7.xyz * r2.xyz;
  r3.xyz = cb0[7].xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r1.xzw = r3.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a256a911f919000d
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 310788669d2cc977
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r3.xyzw = t2.Sample(s0_s, v8.xyz).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fed66c8acb41a274
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r2.xyzw = t1.Sample(s0_s, w2.xy).xyzw;
  r2.xyz = cb0[6].xyz * r2.www;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a55a57ded804e4f3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = v9.xyz / v9.www;
  r1.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r2.x = 1 + -cb3[24].x;
  r1.w = r1.w * r2.x + cb3[24].x;
  r1.z = r1.z * r1.w;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 729582dfa99d9ed2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[4].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: ab3497cb0e318bf0
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
  r3.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 24a3735920585ed4
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t2.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 9a03f08822eba1cf
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t3.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 45e679007a225bc0
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[14].xy + cb0[14].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[15].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = 1 + -cb3[24].x;
  r2.xyz = v9.xyz / v9.www;
  r3.xyz = cb0[2].xyz + r2.xyz;
  r3.x = t4.SampleCmpLevelZero(s0_s, r3.xy, r3.z).x;
  r4.xyz = cb0[3].xyz + r2.xyz;
  r3.y = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r4.xyz = cb0[4].xyz + r2.xyz;
  r2.xyz = cb0[5].xyz + r2.xyz;
  r3.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r3.z = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r2.xyzw = r3.xyzw * r1.zzzz + cb3[24].xxxx;
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r2.xy = v8.xy / v8.ww;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r1.w = cmp(0 < v8.z);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r1.w * r2.w;
  r2.x = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r2.xx).xyzw;
  r1.w = r2.x * r1.w;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[10].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[10].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[12].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[15].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[15].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 2a179c1d67ff0647
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5e54f7acfbcc765c
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 8b9e48d4c86f7de2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s0_s, r1.zz).xyzw;
  r2.xyz = cb0[6].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: b684472f6df89f21
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.xzw = cb0[2].xyz * r1.xxx;
  r2.x = r1.y * r1.y;
  r2.x = r2.x * r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = 2 / r2.x;
  r2.x = -2 + r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r0.z = r2.x * r0.z;
  r2.x = 2 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r2.x;
  r2.x = 0.797884583 * r1.y;
  r2.y = -r1.y * 0.797884583 + 1;
  r2.z = r0.w * r2.y + r2.x;
  r2.x = r0.x * r2.y + r2.x;
  r2.x = r2.x * r2.z + 9.99999975e-06;
  r2.x = 1 / r2.x;
  r2.x = 0.25 * r2.x;
  r2.x = r2.x * r0.x;
  r0.z = r2.x * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.x = r0.z * r0.z;
  r2.x = r2.x * r2.x;
  r0.z = r2.x * r0.z;
  r2.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r2.xyzw = t1.Sample(s0_s, r2.xy).xyzw;
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = r2.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = v7.xyz * r2.xyz;
  r3.xyz = cb0[7].xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r1.xzw = r3.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a256a911f919000d
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 310788669d2cc977
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r3.xyzw = t2.Sample(s0_s, v8.xyz).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: fed66c8acb41a274
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r2.xyzw = t1.Sample(s0_s, w2.xy).xyzw;
  r2.xyz = cb0[6].xyz * r2.www;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: a55a57ded804e4f3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = v9.xyz / v9.www;
  r1.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r2.x = 1 + -cb3[24].x;
  r1.w = r1.w * r2.x + cb3[24].x;
  r1.z = r1.z * r1.w;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 729582dfa99d9ed2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[4].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: ab3497cb0e318bf0
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
  r3.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 24a3735920585ed4
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t2.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 9a03f08822eba1cf
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t3.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 45e679007a225bc0
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[14].xy + cb0[14].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[15].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = 1 + -cb3[24].x;
  r2.xyz = v9.xyz / v9.www;
  r3.xyz = cb0[2].xyz + r2.xyz;
  r3.x = t4.SampleCmpLevelZero(s0_s, r3.xy, r3.z).x;
  r4.xyz = cb0[3].xyz + r2.xyz;
  r3.y = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r4.xyz = cb0[4].xyz + r2.xyz;
  r2.xyz = cb0[5].xyz + r2.xyz;
  r3.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r3.z = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r2.xyzw = r3.xyzw * r1.zzzz + cb3[24].xxxx;
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r2.xy = v8.xy / v8.ww;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r1.w = cmp(0 < v8.z);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r1.w * r2.w;
  r2.x = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r2.xx).xyzw;
  r1.w = r2.x * r1.w;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[10].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[10].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[12].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[15].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[15].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 2a179c1d67ff0647
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 5e54f7acfbcc765c
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 8b9e48d4c86f7de2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s0_s, r1.zz).xyzw;
  r2.xyz = cb0[6].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b684472f6df89f21
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.xzw = cb0[2].xyz * r1.xxx;
  r2.x = r1.y * r1.y;
  r2.x = r2.x * r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = 2 / r2.x;
  r2.x = -2 + r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r0.z = r2.x * r0.z;
  r2.x = 2 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r2.x;
  r2.x = 0.797884583 * r1.y;
  r2.y = -r1.y * 0.797884583 + 1;
  r2.z = r0.w * r2.y + r2.x;
  r2.x = r0.x * r2.y + r2.x;
  r2.x = r2.x * r2.z + 9.99999975e-06;
  r2.x = 1 / r2.x;
  r2.x = 0.25 * r2.x;
  r2.x = r2.x * r0.x;
  r0.z = r2.x * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.x = r0.z * r0.z;
  r2.x = r2.x * r2.x;
  r0.z = r2.x * r0.z;
  r2.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r2.xyzw = t1.Sample(s0_s, r2.xy).xyzw;
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = r2.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = v7.xyz * r2.xyz;
  r3.xyz = cb0[7].xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r1.xzw = r3.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a256a911f919000d
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 310788669d2cc977
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r3.xyzw = t2.Sample(s0_s, v8.xyz).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fed66c8acb41a274
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r2.xyzw = t1.Sample(s0_s, w2.xy).xyzw;
  r2.xyz = cb0[6].xyz * r2.www;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a55a57ded804e4f3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = v9.xyz / v9.www;
  r1.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r2.x = 1 + -cb3[24].x;
  r1.w = r1.w * r2.x + cb3[24].x;
  r1.z = r1.z * r1.w;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 729582dfa99d9ed2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[4].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: ab3497cb0e318bf0
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
  r3.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 24a3735920585ed4
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t2.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 9a03f08822eba1cf
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t3.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 45e679007a225bc0
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[14].xy + cb0[14].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[15].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = 1 + -cb3[24].x;
  r2.xyz = v9.xyz / v9.www;
  r3.xyz = cb0[2].xyz + r2.xyz;
  r3.x = t4.SampleCmpLevelZero(s0_s, r3.xy, r3.z).x;
  r4.xyz = cb0[3].xyz + r2.xyz;
  r3.y = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r4.xyz = cb0[4].xyz + r2.xyz;
  r2.xyz = cb0[5].xyz + r2.xyz;
  r3.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r3.z = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r2.xyzw = r3.xyzw * r1.zzzz + cb3[24].xxxx;
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r2.xy = v8.xy / v8.ww;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r1.w = cmp(0 < v8.z);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r1.w * r2.w;
  r2.x = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r2.xx).xyzw;
  r1.w = r2.x * r1.w;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[10].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[10].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[12].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[15].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[15].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 2a179c1d67ff0647
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5e54f7acfbcc765c
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 8b9e48d4c86f7de2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s0_s, r1.zz).xyzw;
  r2.xyz = cb0[6].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: b684472f6df89f21
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.xzw = cb0[2].xyz * r1.xxx;
  r2.x = r1.y * r1.y;
  r2.x = r2.x * r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = 2 / r2.x;
  r2.x = -2 + r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r0.z = r2.x * r0.z;
  r2.x = 2 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r2.x;
  r2.x = 0.797884583 * r1.y;
  r2.y = -r1.y * 0.797884583 + 1;
  r2.z = r0.w * r2.y + r2.x;
  r2.x = r0.x * r2.y + r2.x;
  r2.x = r2.x * r2.z + 9.99999975e-06;
  r2.x = 1 / r2.x;
  r2.x = 0.25 * r2.x;
  r2.x = r2.x * r0.x;
  r0.z = r2.x * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.x = r0.z * r0.z;
  r2.x = r2.x * r2.x;
  r0.z = r2.x * r0.z;
  r2.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r2.xyzw = t1.Sample(s0_s, r2.xy).xyzw;
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = r2.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = v7.xyz * r2.xyz;
  r3.xyz = cb0[7].xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r1.xzw = r3.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: a256a911f919000d
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 310788669d2cc977
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r3.xyzw = t2.Sample(s0_s, v8.xyz).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: fed66c8acb41a274
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r2.xyzw = t1.Sample(s0_s, w2.xy).xyzw;
  r2.xyz = cb0[6].xyz * r2.www;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: a55a57ded804e4f3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = v9.xyz / v9.www;
  r1.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r2.x = 1 + -cb3[24].x;
  r1.w = r1.w * r2.x + cb3[24].x;
  r1.z = r1.z * r1.w;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 729582dfa99d9ed2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[4].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: ab3497cb0e318bf0
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
  r3.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 24a3735920585ed4
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t2.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 9a03f08822eba1cf
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t3.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 45e679007a225bc0
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[14].xy + cb0[14].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[15].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = 1 + -cb3[24].x;
  r2.xyz = v9.xyz / v9.www;
  r3.xyz = cb0[2].xyz + r2.xyz;
  r3.x = t4.SampleCmpLevelZero(s0_s, r3.xy, r3.z).x;
  r4.xyz = cb0[3].xyz + r2.xyz;
  r3.y = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r4.xyz = cb0[4].xyz + r2.xyz;
  r2.xyz = cb0[5].xyz + r2.xyz;
  r3.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r3.z = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r2.xyzw = r3.xyzw * r1.zzzz + cb3[24].xxxx;
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r2.xy = v8.xy / v8.ww;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r1.w = cmp(0 < v8.z);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r1.w * r2.w;
  r2.x = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r2.xx).xyzw;
  r1.w = r2.x * r1.w;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[10].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[10].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[12].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[15].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[15].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 2a179c1d67ff0647
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 5e54f7acfbcc765c
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 8b9e48d4c86f7de2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s0_s, r1.zz).xyzw;
  r2.xyz = cb0[6].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: b684472f6df89f21
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.xzw = cb0[2].xyz * r1.xxx;
  r2.x = r1.y * r1.y;
  r2.x = r2.x * r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r2.x = 2 / r2.x;
  r2.x = -2 + r2.x;
  r2.x = max(9.99999975e-05, r2.x);
  r0.z = r2.x * r0.z;
  r2.x = 2 + r2.x;
  r2.x = 0.159154937 * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r2.x;
  r2.x = 0.797884583 * r1.y;
  r2.y = -r1.y * 0.797884583 + 1;
  r2.z = r0.w * r2.y + r2.x;
  r2.x = r0.x * r2.y + r2.x;
  r2.x = r2.x * r2.z + 9.99999975e-06;
  r2.x = 1 / r2.x;
  r2.x = 0.25 * r2.x;
  r2.x = r2.x * r0.x;
  r0.z = r2.x * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.x = r0.z * r0.z;
  r2.x = r2.x * r2.x;
  r0.z = r2.x * r0.z;
  r2.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r2.xyzw = t1.Sample(s0_s, r2.xy).xyzw;
  r2.xyz = cb0[4].xyz * r2.xyz;
  r3.xyz = r2.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r2.xyz = v7.xyz * r2.xyz;
  r3.xyz = cb0[7].xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r3.xyz = r4.xyz * r0.zzz + r3.xyz;
  r1.xzw = r3.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r2.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a256a911f919000d
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 310788669d2cc977
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float3 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r3.xyzw = t2.Sample(s0_s, v8.xyz).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: fed66c8acb41a274
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r2.xyzw = t1.Sample(s0_s, w2.xy).xyzw;
  r2.xyz = cb0[6].xyz * r2.www;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: a55a57ded804e4f3
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r1.z = cmp(0 < v8.z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = r1.z * r2.w;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = v9.xyz / v9.www;
  r1.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r2.x = 1 + -cb3[24].x;
  r1.w = r1.w * r2.x + cb3[24].x;
  r1.z = r1.z * r1.w;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 729582dfa99d9ed2
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r1.xyzw = t0.Sample(s2_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[7].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t1.Sample(s0_s, r1.zw).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[2].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[5].xy + cb0[5].zw;
  r3.xyzw = t2.Sample(s1_s, r3.xy).xyzw;
  r3.xyz = cb0[4].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[7].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: ab3497cb0e318bf0
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
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float2 v2 : TEXCOORD2,
  float2 w2 : TEXCOORD7,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.zw = v8.xy / v8.ww;
  r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
  r3.xyzw = t1.Sample(s1_s, w2.xy).xyzw;
  r1.z = r3.w * r2.x;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 24a3735920585ed4
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t2.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 9a03f08822eba1cf
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyzw = t3.Sample(s0_s, v9.xyz).xyzw;
  r1.z = cmp(r2.x < r1.z);
  r1.z = r1.z ? cb3[24].x : 1;
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 45e679007a225bc0
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerComparisonState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[14].xy + cb0[14].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[15].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = 0.25 * r1.z;
  r1.z = r1.z * r0.x;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = 1 + -cb3[24].x;
  r2.xyz = v9.xyz / v9.www;
  r3.xyz = cb0[2].xyz + r2.xyz;
  r3.x = t4.SampleCmpLevelZero(s0_s, r3.xy, r3.z).x;
  r4.xyz = cb0[3].xyz + r2.xyz;
  r3.y = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r4.xyz = cb0[4].xyz + r2.xyz;
  r2.xyz = cb0[5].xyz + r2.xyz;
  r3.w = t4.SampleCmpLevelZero(s0_s, r2.xy, r2.z).x;
  r3.z = t4.SampleCmpLevelZero(s0_s, r4.xy, r4.z).x;
  r2.xyzw = r3.xyzw * r1.zzzz + cb3[24].xxxx;
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r2.xy = v8.xy / v8.ww;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r1.w = cmp(0 < v8.z);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r1.w * r2.w;
  r2.x = dot(v8.xyz, v8.xyz);
  r2.xyzw = t2.Sample(s2_s, r2.xx).xyzw;
  r1.w = r2.x * r1.w;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[10].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[10].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t3.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[12].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[15].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[15].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 2a179c1d67ff0647
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s3_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t2.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t2.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r2.x * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t3.Sample(s2_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 5e54f7acfbcc765c
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

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : COLOR0,
  float4 v8 : TEXCOORD7,
  float3 v9 : TEXCOORD8,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r1.xy = v1.xy * cb0[10].xy + cb0[10].zw;
  r1.xyzw = t0.Sample(s4_s, r1.xy).xyzw;
  r1.xy = r1.wy * float2(2,2) + float2(-1,-1);
  r2.xyz = v6.xyz * r1.yyy;
  r2.xyz = r1.xxx * v5.xyz + r2.xyz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = sqrt(r0.w);
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[0].www * -v3.xyz + cb2[0].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -v3.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r2.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r3.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.z = max(0, r1.w);
  r0.z = log2(r0.z);
  r1.x = 1 + -cb0[11].y;
  r1.y = 1 + -r1.x;
  r1.x = r1.x * 10 + 1;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.x = exp2(r1.x);
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r1.z = 2 / r1.z;
  r1.z = -2 + r1.z;
  r1.z = max(9.99999975e-05, r1.z);
  r0.z = r1.z * r0.z;
  r1.z = 2 + r1.z;
  r1.z = 0.159154937 * r1.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * r1.z;
  r1.z = 0.797884583 * r1.y;
  r1.w = -r1.y * 0.797884583 + 1;
  r2.x = r0.w * r1.w + r1.z;
  r1.z = r0.x * r1.w + r1.z;
  r1.z = r1.z * r2.x + 9.99999975e-06;
  r1.z = 1 / r1.z;
  r1.z = r1.z * r0.x;
  r1.z = 0.25 * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = 0.785398185 * r0.z;
  r0.z = max(0, r0.z);
  r1.z = dot(v9.xyz, v9.xyz);
  r1.z = sqrt(r1.z);
  r1.z = cb2[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) + v9.xyz;
  r2.xyzw = t3.Sample(s0_s, r2.xyz).xyzw;
  r3.xyz = float3(-0.0078125,-0.0078125,0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.y = r3.x;
  r3.xyz = float3(-0.0078125,0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.z = r3.x;
  r3.xyz = float3(0.0078125,-0.0078125,-0.0078125) + v9.xyz;
  r3.xyzw = t3.Sample(s0_s, r3.xyz).xyzw;
  r2.w = r3.x;
  r2.xyzw = cmp(r2.xyzw < r1.zzzz);
  r2.xyzw = r2.xyzw ? cb3[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r2.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = dot(v8.xyz, v8.xyz);
  r2.xyzw = t1.Sample(s2_s, r1.ww).xyzw;
  r3.xyzw = t2.Sample(s1_s, v8.xyz).xyzw;
  r1.w = r3.w * r2.x;
  r1.z = r1.w * r1.z;
  r2.xyz = cb0[6].xyz * r1.zzz;
  r1.xzw = r2.xyz * r1.xxx;
  r1.xzw = r1.xzw * r0.zzz;
  r1.xzw = cb0[6].xyz * r1.xzw;
  r0.zw = float2(1,1.00001001) + -r0.yw;
  r2.w = r0.z * r0.z;
  r2.w = r2.w * r2.w;
  r0.z = r2.w * r0.z;
  r3.xy = v1.xy * cb0[9].xy + cb0[9].zw;
  r3.xyzw = t4.Sample(s3_s, r3.xy).xyzw;
  r3.xyz = cb0[8].xyz * r3.xyz;
  r4.xyz = r3.xyz * v7.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r3.xyz = v7.xyz * r3.xyz;
  r4.xyz = cb0[11].xxx * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = float3(1,1,1) + -r4.xyz;
  r4.xyz = r5.xyz * r0.zzz + r4.xyz;
  r1.xzw = r4.xyz * r1.xzw;
  r0.z = r0.y + r0.y;
  r0.y = r0.z * r0.y;
  r0.y = r0.y * r1.y + -0.5;
  r0.z = r0.w * r0.w;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.z = r0.y * r0.z + 1;
  r0.w = 1.00001001 + -r0.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r0.y = r0.y * r0.w + 1;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.xyz = r0.xxx * r2.xyz;
  r0.w = -cb0[11].x * 0.959999979 + 0.959999979;
  r2.xyz = r3.xyz * r0.www;
  o0.xyz = r0.xyz * r2.xyz + r1.xzw;
  o0.w = 0;
  return;
}"
}
}
}
 Pass {
  Name "META"
  Tags { "LIGHTMODE" = "Meta" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  Cull Off
  GpuProgramID 155864
Program "vp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 3df7822d0c7158b9
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float2 v3 : TEXCOORD2,
  float4 v4 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0,
  out float2 p1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : COLOR0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v2.xy * cb1[0].xy + cb1[0].zw;
  r0.xyz = cb2[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v3.xy * cb1[1].xy + cb1[1].zw;
  r0.xyz = cb2[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = cb0[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
  p1.xy = v2.xy;
  o2.xy = v3.xy;
  r0.xyzw = cb0[13].xyzw * v0.yyyy;
  r0.xyzw = cb0[12].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[14].xyzw * v0.zzzz + r0.xyzw;
  o3.xyzw = cb0[15].xyzw * v0.wwww + r0.xyzw;
  o4.xyzw = v4.xyzw;
  return;
}"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_ON" "LIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "DIRLIGHTMAP_SEPARATE" "LIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"// hash: 40bd68ffe3e049b9
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float2 w1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[6].xy + cb0[6].zw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[5].xyz * r0.xyz;
  r1.xyz = r0.xyz * v4.xyz + float3(-0.0399999991,-0.0399999991,-0.0399999991);
  r0.xyz = v4.xyz * r0.xyz;
  r1.xyz = cb0[7].xxx * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = cb0[7].yyy * r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) * r1.xyz;
  r0.w = -cb0[7].x * 0.959999979 + 0.959999979;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[4].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[4].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
}
}
}
Fallback "Diffuse"
}