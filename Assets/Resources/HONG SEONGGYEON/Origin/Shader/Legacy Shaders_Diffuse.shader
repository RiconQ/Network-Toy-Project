//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Legacy Shaders/Diffuse" {
Properties {
_Color ("Main Color", Color) = (1,1,1,1)
_MainTex ("Base (RGB)", 2D) = "white" { }
}
SubShader {
 LOD 200
 Tags { "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 200
  Tags { "LIGHTMODE" = "ForwardBase" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 28004
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// hash: 6a2ba1d229c37f75
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o4.xyz = max(float3(0,0,0), r0.xyz);
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 420e09d1e081fc23
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o4.xyz = max(float3(0,0,0), r0.xyz);
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
"// hash: 1f786eabcd0a63f2
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"// hash: 10b632866c809c2a
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o3.xyz = r1.xyz;
  r1.w = r0.y * r0.y;
  r1.w = r0.x * r0.x + -r1.w;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r2.xyz = cb1[44].xyz * r1.www + r3.xyz;
  r0.w = 1;
  r3.x = dot(cb1[38].xyzw, r0.xyzw);
  r3.y = dot(cb1[39].xyzw, r0.xyzw);
  r3.z = dot(cb1[40].xyzw, r0.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb1[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r0.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb1[2].xyzw + -r1.xxxx;
  r1.xyzw = cb1[4].xyzw + -r1.zzzz;
  r4.xyzw = r5.xyzw * r0.xxxx + r4.xyzw;
  r0.xyzw = r1.xyzw * r0.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r3.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r3.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb1[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r1.xyzw;
  r1.xyz = cb1[7].xyz * r0.yyy;
  r1.xyz = cb1[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb1[9].xyz * r0.www + r0.xyz;
  o4.xyz = r0.xyz + r2.xyz;
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
"// hash: 1f786eabcd0a63f2
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: 777d685256d622cc
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb3[16].xyz);
  r1.y = dot(v2.xyz, cb3[17].xyz);
  r1.z = dot(v2.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o2.xyz = r1.xyz;
  r2.xyz = cb3[13].xyz * v0.yyy;
  r2.xyz = cb3[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb3[14].xyz * v0.zzz + r2.xyz;
  o3.xyz = cb3[15].xyz * v0.www + r2.xyz;
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
  o4.xyz = max(float3(0,0,0), r1.xyz);
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o5.zw = r0.zw;
  o5.xy = r1.xw + r1.zz;
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
"// hash: f419ed4721b27bb2
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb2[16].xyz);
  r1.y = dot(v2.xyz, cb2[17].xyz);
  r1.z = dot(v2.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o4.zw = r0.zw;
  o4.xy = r1.xw + r1.zz;
  o5.zw = v5.xy * cb3[1].xy + cb3[1].zw;
  o5.xy = float2(0,0);
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
"// hash: f419ed4721b27bb2
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb2[16].xyz);
  r1.y = dot(v2.xyz, cb2[17].xyz);
  r1.z = dot(v2.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o4.zw = r0.zw;
  o4.xy = r1.xw + r1.zz;
  o5.zw = v5.xy * cb3[1].xy + cb3[1].zw;
  o5.xy = float2(0,0);
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
"// hash: 7dfafce2cec82c58
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float3 o4 : TEXCOORD3)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  r1.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o3.xyz = r1.xyz;
  r1.w = r0.y * r0.y;
  r1.w = r0.x * r0.x + -r1.w;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r2.xyz = cb1[44].xyz * r1.www + r3.xyz;
  r0.w = 1;
  r3.x = dot(cb1[38].xyzw, r0.xyzw);
  r3.y = dot(cb1[39].xyzw, r0.xyzw);
  r3.z = dot(cb1[40].xyzw, r0.xyzw);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.xyzw = cb1[3].xyzw + -r1.yyyy;
  r4.xyzw = r3.xyzw * r0.yyyy;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r5.xyzw = cb1[2].xyzw + -r1.xxxx;
  r1.xyzw = cb1[4].xyzw + -r1.zzzz;
  r4.xyzw = r5.xyzw * r0.xxxx + r4.xyzw;
  r0.xyzw = r1.xyzw * r0.zzzz + r4.xyzw;
  r3.xyzw = r5.xyzw * r5.xyzw + r3.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw + r3.xyzw;
  r1.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r1.xyzw);
  r3.xyzw = rsqrt(r1.xyzw);
  r1.xyzw = r1.xyzw * cb1[5].xyzw + float4(1,1,1,1);
  r1.xyzw = float4(1,1,1,1) / r1.xyzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * r1.xyzw;
  r1.xyz = cb1[7].xyz * r0.yyy;
  r1.xyz = cb1[6].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[8].xyz * r0.zzz + r1.xyz;
  r0.xyz = cb1[9].xyz * r0.www + r0.xyz;
  o4.xyz = r0.xyz + r2.xyz;
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
"// hash: 1f786eabcd0a63f2
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: 1f786eabcd0a63f2
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD6)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: 17e5fca452057bc0
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb3[16].xyz);
  r1.y = dot(v2.xyz, cb3[17].xyz);
  r1.z = dot(v2.xyz, cb3[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  o2.xyz = r1.xyz;
  r2.xyz = cb3[13].xyz * v0.yyy;
  r2.xyz = cb3[12].xyz * v0.xxx + r2.xyz;
  r2.xyz = cb3[14].xyz * v0.zzz + r2.xyz;
  r2.xyz = cb3[15].xyz * v0.www + r2.xyz;
  o3.xyz = r2.xyz;
  r2.w = r1.y * r1.y;
  r2.w = r1.x * r1.x + -r2.w;
  r3.xyzw = r1.xyzz * r1.yzzx;
  r4.x = dot(cb2[41].xyzw, r3.xyzw);
  r4.y = dot(cb2[42].xyzw, r3.xyzw);
  r4.z = dot(cb2[43].xyzw, r3.xyzw);
  r3.xyz = cb2[44].xyz * r2.www + r4.xyz;
  r1.w = 1;
  r4.x = dot(cb2[38].xyzw, r1.xyzw);
  r4.y = dot(cb2[39].xyzw, r1.xyzw);
  r4.z = dot(cb2[40].xyzw, r1.xyzw);
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r4.xyzw = cb2[3].xyzw + -r2.yyyy;
  r5.xyzw = r4.xyzw * r1.yyyy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = cb2[2].xyzw + -r2.xxxx;
  r2.xyzw = cb2[4].xyzw + -r2.zzzz;
  r5.xyzw = r6.xyzw * r1.xxxx + r5.xyzw;
  r1.xyzw = r2.xyzw * r1.zzzz + r5.xyzw;
  r4.xyzw = r6.xyzw * r6.xyzw + r4.xyzw;
  r2.xyzw = r2.xyzw * r2.xyzw + r4.xyzw;
  r2.xyzw = max(float4(9.99999997e-07,9.99999997e-07,9.99999997e-07,9.99999997e-07), r2.xyzw);
  r4.xyzw = rsqrt(r2.xyzw);
  r2.xyzw = r2.xyzw * cb2[5].xyzw + float4(1,1,1,1);
  r2.xyzw = float4(1,1,1,1) / r2.xyzw;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * r2.xyzw;
  r2.xyz = cb2[7].xyz * r1.yyy;
  r2.xyz = cb2[6].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[8].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[9].xyz * r1.www + r1.xyz;
  o4.xyz = r1.xyz + r3.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o5.zw = r0.zw;
  o5.xy = r1.xw + r1.zz;
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
"// hash: f419ed4721b27bb2
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb2[16].xyz);
  r1.y = dot(v2.xyz, cb2[17].xyz);
  r1.z = dot(v2.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o4.zw = r0.zw;
  o4.xy = r1.xw + r1.zz;
  o5.zw = v5.xy * cb3[1].xy + cb3[1].zw;
  o5.xy = float2(0,0);
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
"// hash: f419ed4721b27bb2
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.x = dot(v2.xyz, cb2[16].xyz);
  r1.y = dot(v2.xyz, cb2[17].xyz);
  r1.z = dot(v2.xyz, cb2[18].xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  o2.xyz = r1.xyz * r1.www;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o4.zw = r0.zw;
  o4.xy = r1.xw + r1.zz;
  o5.zw = v5.xy * cb3[1].xy + cb3[1].zw;
  o5.xy = float2(0,0);
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
"// hash: f7ef48ece004b9be
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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

  r0.x = dot(v2.xyz, cb1[0].xyz);
  r0.x = max(0, r0.x);
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz;
  r1.xyz = cb0[2].xyz * r0.yzw;
  r0.yzw = v4.xyz * r0.yzw;
  o0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: b5d1f02edfac663c
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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

  r0.x = dot(v2.xyz, cb1[0].xyz);
  r0.x = max(0, r0.x);
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.yzw = cb0[4].xyz * r1.xyz;
  r1.xyz = cb0[2].xyz * r0.yzw;
  r0.yzw = v4.xyz * r0.yzw;
  o0.xyz = r1.xyz * r0.xxx + r0.yzw;
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
"// hash: 423d34cde78911aa
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb0[2].xyz * r1.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r1.xyz * r0.www + r0.xyz;
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
"// hash: d4cb703ea6d3c382
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r0.w = max(9.99999975e-05, r1.w);
  r1.x = dot(v2.xyz, r1.xyz);
  r1.x = 0.5 + r1.x;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb0[2].xyz * r1.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r1.xyz * r0.www + r0.xyz;
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
"// hash: ca05745e2fb4b89
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v5.xy / v5.ww;
  r0.xyzw = t1.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = v4.xyz * r1.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www + r1.xyz;
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
"// hash: 93edff60a199b23c
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v5.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r2.xy = v4.xy / v4.ww;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xyz = r2.xyz * r1.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r1.xyz * r0.www + r0.xyz;
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
"// hash: a7a9829589b52fca
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD6,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v5.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyzw = t3.Sample(s0_s, v5.zw).xyzw;
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r0.w = max(9.99999975e-05, r1.w);
  r1.x = dot(v2.xyz, r1.xyz);
  r1.x = 0.5 + r1.x;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r2.xy = v4.xy / v4.ww;
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r1.xyz = r2.xyz * r1.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r1.xyz * r0.www + r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "FORWARD"
  LOD 200
  Tags { "LIGHTMODE" = "ForwardAdd" "RenderType" = "Opaque" }
  Blend One One, One One
  ZClip Off
  ZWrite Off
  GpuProgramID 101543
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 81704042adbcc18e
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: ab6702a583553edb
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: ca95e116e56838cf
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 48788fcb7b17c734
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: 81704042adbcc18e
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: ab6702a583553edb
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: 81704042adbcc18e
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" }
"// hash: ab6702a583553edb
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: 81704042adbcc18e
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: ab6702a583553edb
cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float3 o3 : TEXCOORD2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: 670af7fd89b525b8
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[5].xyz * v3.yyy;
  r0.xyz = cb0[4].xyz * v3.xxx + r0.xyz;
  r0.xyz = cb0[6].xyz * v3.zzz + r0.xyz;
  r0.xyz = cb0[7].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.xyzw = t1.Sample(s0_s, r0.xx).xyzw;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT" }
"// hash: 8103f1c2ada67b42
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[5].xyz * v3.yyy;
  r0.xyz = cb0[4].xyz * v3.xxx + r0.xyz;
  r0.xyz = cb0[6].xyz * v3.zzz + r0.xyz;
  r0.xyz = cb0[7].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.xyzw = t1.Sample(s0_s, r0.xx).xyzw;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
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
"// hash: 97828dc4cdef84d7
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[2].xyz * r0.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL" }
"// hash: 8285d3260e365e4e
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = cb0[2].xyz * r0.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
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
"// hash: 90d2f061b0fc9d97
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[5].xyzw * v3.yyyy;
  r0.xyzw = cb0[4].xyzw * v3.xxxx + r0.xyzw;
  r0.xyzw = cb0[6].xyzw * v3.zzzz + r0.xyzw;
  r0.xyzw = cb0[7].xyzw + r0.xyzw;
  r1.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = cmp(0 < r0.z);
  r0.x = dot(r0.xyz, r0.xyz);
  r2.xyzw = t2.Sample(s1_s, r0.xx).xyzw;
  r0.x = r0.w ? 1.000000 : 0;
  r0.x = r0.x * r1.w;
  r0.x = r0.x * r2.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SPOT" }
"// hash: dbfa7f95855c74dc
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[5].xyzw * v3.yyyy;
  r0.xyzw = cb0[4].xyzw * v3.xxxx + r0.xyzw;
  r0.xyzw = cb0[6].xyzw * v3.zzzz + r0.xyzw;
  r0.xyzw = cb0[7].xyzw + r0.xyzw;
  r1.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.w = cmp(0 < r0.z);
  r0.x = dot(r0.xyz, r0.xyz);
  r2.xyzw = t2.Sample(s1_s, r0.xx).xyzw;
  r0.x = r0.w ? 1.000000 : 0;
  r0.x = r0.x * r1.w;
  r0.x = r0.x * r2.x;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
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
"// hash: 96aa1f89a8d7f0a8
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[5].xyz * v3.yyy;
  r0.xyz = cb0[4].xyz * v3.xxx + r0.xyz;
  r0.xyz = cb0[6].xyz * v3.zzz + r0.xyz;
  r0.xyz = cb0[7].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.xyzw = t2.Sample(s0_s, r0.xyz).xyzw;
  r0.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.x = r0.x * r1.w;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "POINT_COOKIE" }
"// hash: 73578bfdc55d511
TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[5].xyz * v3.yyy;
  r0.xyz = cb0[4].xyz * v3.xxx + r0.xyz;
  r0.xyz = cb0[6].xyz * v3.zzz + r0.xyz;
  r0.xyz = cb0[7].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.xyzw = t2.Sample(s0_s, r0.xyz).xyzw;
  r0.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.x = r0.x * r1.w;
  r0.xyz = cb0[2].xyz * r0.xxx;
  r1.xyzw = t0.Sample(s2_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = cb1[0].xyz + -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(v2.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
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
"// hash: 3ddb2168fd20c54
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[5].xy * v3.yy;
  r0.xy = cb0[4].xy * v3.xx + r0.xy;
  r0.xy = cb0[6].xy * v3.zz + r0.xy;
  r0.xy = cb0[7].xy + r0.xy;
  r0.xyzw = t1.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[2].xyz * r0.www;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "DIRECTIONAL_COOKIE" }
"// hash: e29663a19307f6a1
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[5].xy * v3.yy;
  r0.xy = cb0[4].xy * v3.xx + r0.xy;
  r0.xy = cb0[6].xy * v3.zz + r0.xy;
  r0.xy = cb0[7].xy + r0.xy;
  r0.xyzw = t1.Sample(s0_s, r0.xy).xyzw;
  r0.xyz = cb0[2].xyz * r0.www;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[8].xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = dot(v2.xyz, cb1[0].xyz);
  r0.w = max(0, r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "PREPASS"
  LOD 200
  Tags { "LIGHTMODE" = "PrePassBase" "RenderType" = "Opaque" }
  ZClip Off
  GpuProgramID 141524
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: e6ff2aef81e571b1
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.x = dot(v2.xyz, cb0[16].xyz);
  r0.y = dot(v2.xyz, cb0[17].xyz);
  r0.z = dot(v2.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  r0.xyz = cb0[13].xyz * v0.yyy;
  r0.xyz = cb0[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb0[14].xyz * v0.zzz + r0.xyz;
  o2.xyz = cb0[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 1984318d3037d8d3
cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  r0.x = dot(v2.xyz, cb0[16].xyz);
  r0.y = dot(v2.xyz, cb0[17].xyz);
  r0.z = dot(v2.xyz, cb0[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  r0.xyz = cb0[13].xyz * v0.yyy;
  r0.xyz = cb0[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb0[14].xyz * v0.zzz + r0.xyz;
  o2.xyz = cb0[15].xyz * v0.www + r0.xyz;
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
"// hash: c772ec06f24df2fb



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  o0.xyz = v1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 66128cb4c1610580



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  o0.xyz = v1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0;
  return;
}"
}
}
}
 Pass {
  Name "PREPASS"
  LOD 200
  Tags { "LIGHTMODE" = "PrePassFinal" "RenderType" = "Opaque" }
  ZClip Off
  ZWrite Off
  GpuProgramID 258383
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 76acccab61acd99f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: b97ef165766d7fe
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = max(float3(0,0,0), r0.xyz);
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
"// hash: 396fa7d578d69a
cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.zw = v5.xy * cb4[1].xy + cb4[1].zw;
  o4.xy = float2(0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
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
"// hash: 396fa7d578d69a
cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.zw = v5.xy * cb4[1].xy + cb4[1].zw;
  o4.xy = float2(0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
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
"// hash: 76acccab61acd99f
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_HDR_ON" }
"// hash: b97ef165766d7fe
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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.xyzw = float4(0,0,0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = max(float3(0,0,0), r0.xyz);
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
"// hash: 396fa7d578d69a
cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.zw = v5.xy * cb4[1].xy + cb4[1].zw;
  o4.xy = float2(0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
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
"// hash: 396fa7d578d69a
cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

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
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb3[1].xyzw * v0.yyyy;
  r0.xyzw = cb3[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb3[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb3[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r1.xyz = cb3[13].xyz * v0.yyy;
  r1.xyz = cb3[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb3[14].xyz * v0.zzz + r1.xyz;
  o2.xyz = cb3[15].xyz * v0.www + r1.xyz;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o3.zw = r0.zw;
  o3.xy = r1.xw + r1.zz;
  o4.zw = v5.xy * cb4[1].xy + cb4[1].zw;
  o4.xy = float2(0,0);
  r0.x = dot(v2.xyz, cb3[16].xyz);
  r0.y = dot(v2.xyz, cb3[17].xyz);
  r0.z = dot(v2.xyz, cb3[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
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
  o5.xyz = r2.xyz + r1.xyz;
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
"// hash: 3a66757824d5105b
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.xyz = log2(r0.xyz);
  r0.xyz = v5.xyz + -r0.xyz;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 52e77be205c60889
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = v5.xyz + -r0.xyz;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
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
"// hash: d37a7d88bbe25efe
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xy = v3.xy / v3.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = log2(r1.xyz);
  r1.xyz = v5.xyz + -r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
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
"// hash: d37a7d88bbe25efe
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xy = v3.xy / v3.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = log2(r1.xyz);
  r1.xyz = v5.xyz + -r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
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
"// hash: d30c598dee08fd6d
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.xyz = v5.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_HDR_ON" }
"// hash: a6c4902b11c2d037
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy / v3.ww;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r0.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r0.xyz);
  r0.xyz = v5.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
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
"// hash: 3fbede6338fbf28a
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xy = v3.xy / v3.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = v5.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
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
"// hash: 3fbede6338fbf28a
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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xy = v3.xy / v3.ww;
  r1.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r1.xyz = v5.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = cb0[4].xyz * r1.xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "DEFERRED"
  LOD 200
  Tags { "LIGHTMODE" = "Deferred" "RenderType" = "Opaque" }
  ZClip Off
  GpuProgramID 290589
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 2e82fa251e9d3330
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o5.xyz = max(float3(0,0,0), r0.xyz);
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: edacb907f78b08e7
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o5.xyz = max(float3(0,0,0), r0.xyz);
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
"// hash: a5b45a3f3671c5fb
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: a5b45a3f3671c5fb
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: 2e82fa251e9d3330
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  o5.xyz = max(float3(0,0,0), r0.xyz);
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_HDR_ON" }
"// hash: edacb907f78b08e7
cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[45];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : TEXCOORD4)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb2[16].xyz);
  r0.y = dot(v2.xyz, cb2[17].xyz);
  r0.z = dot(v2.xyz, cb2[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = r0.xyz;
  r1.xyz = cb2[13].xyz * v0.yyy;
  r1.xyz = cb2[12].xyz * v0.xxx + r1.xyz;
  r1.xyz = cb2[14].xyz * v0.zzz + r1.xyz;
  o3.xyz = cb2[15].xyz * v0.www + r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  r1.x = r0.y * r0.y;
  r1.x = r0.x * r0.x + -r1.x;
  r2.xyzw = r0.xyzz * r0.yzzx;
  r3.x = dot(cb1[41].xyzw, r2.xyzw);
  r3.y = dot(cb1[42].xyzw, r2.xyzw);
  r3.z = dot(cb1[43].xyzw, r2.xyzw);
  r1.xyz = cb1[44].xyz * r1.xxx + r3.xyz;
  r0.w = 1;
  r2.x = dot(cb1[38].xyzw, r0.xyzw);
  r2.y = dot(cb1[39].xyzw, r0.xyzw);
  r2.z = dot(cb1[40].xyzw, r0.xyzw);
  r0.xyz = r2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  o5.xyz = max(float3(0,0,0), r0.xyz);
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
"// hash: a5b45a3f3671c5fb
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: a5b45a3f3671c5fb
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
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.x = dot(v2.xyz, cb1[16].xyz);
  r0.y = dot(v2.xyz, cb1[17].xyz);
  r0.z = dot(v2.xyz, cb1[18].xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o3.xyz = cb1[15].xyz * v0.www + r0.xyz;
  o4.zw = v5.xy * cb2[1].xy + cb2[1].zw;
  o4.xy = float2(0,0);
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
"// hash: b001ffc13cfda12
Texture2D<float4> t0 : register(t0);

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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  r0.xyz = v5.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 2018937851420f5e
Texture2D<float4> t0 : register(t0);

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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  r0.xyz = v5.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
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
"// hash: edb6538cd0457512
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r1.w;
  r1.xyz = r0.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
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
"// hash: 5745bcc31b873bbe
Texture2D<float4> t2 : register(t2);

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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r1.w;
  r1.xyz = r0.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r0.w = max(9.99999975e-05, r2.w);
  r1.w = dot(v2.xyz, r2.xyz);
  r1.w = 0.5 + r1.w;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz / r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  o3.xyz = exp2(-r0.xyz);
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
"// hash: bde348296894e6e6
Texture2D<float4> t0 : register(t0);

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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o3.xyz = v5.xyz * r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  o3.w = 1;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_HDR_ON" }
"// hash: 8cd94e1c1a225896
Texture2D<float4> t0 : register(t0);

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
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o3.xyz = v5.xyz * r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
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
"// hash: 50cfc504933fbd39
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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r1.w;
  r1.xyz = r0.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  o3.xyz = r1.xyz * r0.xyz;
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
"// hash: 535ec0f7976d9e95
Texture2D<float4> t2 : register(t2);

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
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  o1.xyzw = float4(0,0,0,0);
  o2.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o2.w = 1;
  r1.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r0.w = cb0[1].x * r1.w;
  r1.xyz = r0.www * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[1].yyy * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyzw = t2.Sample(s0_s, v4.zw).xyzw;
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r0.w = max(9.99999975e-05, r2.w);
  r1.w = dot(v2.xyz, r2.xyz);
  r1.w = 0.5 + r1.w;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz / r0.www;
  o3.xyz = r1.xyz * r0.xyz;
  o3.w = 1;
  return;
}"
}
}
}
 Pass {
  Name "META"
  LOD 200
  Tags { "LIGHTMODE" = "Meta" "RenderType" = "Opaque" }
  ZClip Off
  Cull Off
  GpuProgramID 390883
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 98e09866839573a1
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
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v4.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v5.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o2.xyz = cb1[15].xyz * v0.www + r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: df78a29a481c0eff
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
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : TANGENT0,
  float3 v2 : NORMAL0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < v0.z);
  r0.z = r0.x ? 0.000100 : 0;
  r0.xy = v4.xy * cb2[0].xy + cb2[0].zw;
  r0.xyz = cb3[0].xxx ? r0.xyz : v0.xyz;
  r0.w = cmp(0 < r0.z);
  r1.z = r0.w ? 0.000100 : 0;
  r1.xy = v5.xy * cb2[1].xy + cb2[1].zw;
  r0.xyz = cb3[0].yyy ? r1.xyz : r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xy = v3.xy * cb0[6].xy + cb0[6].zw;
  r0.xyz = cb1[13].xyz * v0.yyy;
  r0.xyz = cb1[12].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb1[14].xyz * v0.zzz + r0.xyz;
  o2.xyz = cb1[15].xyz * v0.www + r0.xyz;
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
"// hash: e6530d7c80392e88
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[5].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[5].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 718504b594c4d58f
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = cb0[4].xyz * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.w = saturate(cb0[5].x);
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = min(cb0[5].yyy, r0.xyz);
  r0.w = 1;
  r0.xyzw = cb1[1].xxxx ? r0.xyzw : float4(0,0,0,0);
  o0.xyzw = cb1[1].yyyy ? float4(0,0,0,0.0235294122) : r0.xyzw;
  return;
}"
}
}
}
}
Fallback "Legacy Shaders/VertexLit"
}