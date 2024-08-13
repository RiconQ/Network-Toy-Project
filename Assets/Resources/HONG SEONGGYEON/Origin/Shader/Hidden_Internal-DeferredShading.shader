//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-DeferredShading" {
Properties {
_LightTexture0 ("", any) = "" { }
_LightTextureB0 ("", 2D) = "" { }
_ShadowMapTexture ("", any) = "" { }
_SrcBlend ("", Float) = 1
_DstBlend ("", Float) = 1
}
SubShader {
 Pass {
  Tags { "SHADOWSUPPORT" = "true" }
  Blend Zero Zero, Zero Zero
  ZClip Off
  ZWrite Off
  GpuProgramID 26031
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: 4a87a6742ed6d7a9
cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r0.y = cb1[5].x * r0.y;
  r1.xzw = float3(0.5,0.5,0.5) * r0.xwy;
  o1.zw = r0.zw;
  o1.xy = r1.xw + r1.zz;
  r0.xyz = cb2[5].xyz * v0.yyy;
  r0.xyz = cb2[4].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb2[6].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb2[7].xyz + r0.xyz;
  r1.xyz = float3(-1,-1,1) * r0.xyz;
  r0.xyz = -r0.xyz * float3(-1,-1,1) + v1.xyz;
  o2.xyz = cb0[2].xxx * r0.xyz + r1.xyz;
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
"// hash: d02b8f0a2f3dd97f
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r3.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r3.xyz = cb0[5].xyz * r3.xxx;
  r4.xyz = -r0.xyz * r1.zzz + -r2.xyz;
  r0.xyz = r1.zzz * r0.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r0.xyz, r4.xyz));
  r0.x = saturate(dot(r5.xyz, -r0.xyz));
  r0.y = dot(r5.xyz, -r2.xyz);
  r2.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.z = r5.x * r5.x;
  r1.x = r0.z * r0.z;
  r1.y = r0.w * r1.x + -r0.w;
  r0.w = r1.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.x = 0.318309873 * r1.x;
  r0.w = r1.x / r0.w;
  r1.x = -r5.x * r5.x + 1;
  r1.y = abs(r0.y) * r1.x + r0.z;
  r0.z = r0.x * r1.x + r0.z;
  r0.z = abs(r0.y) * r0.z;
  r0.y = 1 + -abs(r0.y);
  r0.z = r0.x * r1.y + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r0.x;
  r0.z = max(0, r0.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r1.xyw = r0.zzz * r3.xyz;
  r0.z = 1 + -r1.z;
  r0.w = r1.z * r1.z;
  r0.w = dot(r0.ww, r5.xx);
  r0.w = -0.5 + r0.w;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r2.xyz = r5.yzw * r0.zzz + r2.xyz;
  r1.xyz = r2.xyz * r1.xyw;
  r0.z = r0.y * r0.y;
  r0.z = r0.z * r0.z;
  r0.y = r0.z * r0.y;
  r0.y = r0.w * r0.y + 1;
  r0.z = 1 + -r0.x;
  r1.w = r0.z * r0.z;
  r1.w = r1.w * r1.w;
  r0.z = r1.w * r0.z;
  r0.z = r0.w * r0.z + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  r0.xyz = r4.xyz * r0.xyz + r1.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: c0ad3ca8af129241
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r0.xyz * r0.www + -cb0[3].xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r2.xyz));
  r2.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r4.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = saturate(dot(r3.xyz, -cb0[3].xyz));
  r0.z = -r5.x * r5.x + 1;
  r1.y = abs(r0.x) * r0.z + r1.x;
  r0.z = r0.y * r0.z + r1.x;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r0.y * r1.y + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r0.y;
  r0.z = max(0, r0.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r1.xyw = cb0[5].xyz * r0.zzz;
  r0.z = 1 + -r1.z;
  r0.w = r1.z * r1.z;
  r0.w = dot(r0.ww, r5.xx);
  r0.w = -0.5 + r0.w;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r2.xyz = r5.yzw * r0.zzz + r2.xyz;
  r1.xyz = r2.xyz * r1.xyw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.w * r0.x + 1;
  r0.z = 1 + -r0.y;
  r1.w = r0.z * r0.z;
  r1.w = r1.w * r1.w;
  r0.z = r1.w * r0.z;
  r0.z = r0.w * r0.z + 1;
  r0.x = r0.z * r0.x;
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r0.xyz = r4.xyz * r0.xyz + r1.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: 4746fb7729e88f4d
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = cb0[4].xyz + -r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r4.yzw = r3.xyz * r1.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r1.zzz;
  r0.w = dot(r4.yzw, r4.yzw);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.yzw = r4.yzw * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.yzw));
  r1.z = saturate(dot(r3.xyz, r4.yzw));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.w * r1.y + -r0.w;
  r0.w = r2.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = cb0[8].xyw * r0.yyy;
  r2.xyz = cb0[7].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyw + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.z = cmp(r0.z < 0);
  r0.z = r0.z ? 1.000000 : 0;
  r2.xyzw = t1.SampleBias(s2_s, r0.xy, -8).xyzw;
  r0.x = r2.w * r0.z;
  r0.x = r0.x * r4.x;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: 1c0afdbace436119
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r4.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r4.yzw = -r3.xyz * r1.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r1.zzz;
  r0.w = dot(r4.yzw, r4.yzw);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.yzw = r4.yzw * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.yzw));
  r1.z = saturate(dot(-r3.xyz, r4.yzw));
  r1.w = saturate(dot(r5.xyz, -r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.w * r1.y + -r0.w;
  r0.w = r2.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = cb0[8].xyz * r0.yyy;
  r2.xyz = cb0[7].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyz + r0.xyz;
  r2.xyzw = t2.SampleBias(s2_s, r0.xyz, -8).xyzw;
  r0.x = r4.x * r2.w;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: cef0ff595c00900a
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r3.xyz));
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r5.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = dot(r4.xyz, -r2.xyz);
  r1.w = saturate(dot(r4.xyz, -cb0[3].xyz));
  r2.x = -r6.x * r6.x + 1;
  r2.y = abs(r1.y) * r2.x + r1.x;
  r1.x = r1.w * r2.x + r1.x;
  r1.x = abs(r1.y) * r1.x;
  r1.y = 1 + -abs(r1.y);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xy = cb0[8].xy * r0.yy;
  r0.xy = cb0[7].xy * r0.xx + r2.xy;
  r0.xy = cb0[9].xy * r0.zz + r0.xy;
  r0.xy = cb0[10].xy + r0.xy;
  r2.xyzw = t1.SampleBias(s1_s, r0.xy, -8).xyzw;
  r0.xyz = cb0[5].xyz * r2.www;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: 686258ad1a28eee6
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerComparisonState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.z = cb1[7].x * r2.x + cb1[7].y;
  r1.z = 1 / r1.z;
  r2.xyz = r1.zzz * r0.yzw;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyzw = cb3[9].xyzw * r2.yyyy;
  r3.xyzw = cb3[8].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb3[10].xyzw * r2.wwww + r3.xyzw;
  r3.xyzw = cb3[11].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r0.y = t6.SampleCmpLevelZero(s3_s, r3.xy, r3.z).x;
  r0.x = r0.y * r0.x + cb3[24].x;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.w * r1.z + r0.y;
  r0.y = cb3[25].w * r0.y + r2.z;
  r0.y = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.x = saturate(r0.x + r0.y);
  r0.yzw = cb0[8].xyw * r2.yyy;
  r0.yzw = cb0[7].xyw * r2.xxx + r0.yzw;
  r0.yzw = cb0[9].xyw * r2.www + r0.yzw;
  r0.yzw = cb0[10].xyw + r0.yzw;
  r0.yz = r0.yz / r0.ww;
  r0.w = cmp(r0.w < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r3.xyzw = t1.SampleBias(s2_s, r0.yz, -8).xyzw;
  r0.y = r3.w * r0.w;
  r3.xyz = cb0[4].xyz + -r2.xyw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = cb0[4].w * r0.z;
  r0.z = rsqrt(r0.z);
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r0.y = r4.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyw = cb0[5].xyz * r0.xxx;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r4.xyz = r3.xyz * r0.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = max(0.00100000005, r0.z);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r5.xyzw = t5.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(r3.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.z * r1.y + -r0.z;
  r0.z = r2.y * r0.z + 1;
  r0.z = r0.z * r0.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.z = r1.y / r0.z;
  r1.y = -r5.x * r5.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.z = r1.x * r0.z;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.w;
  r0.z = max(0, r0.z);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.z = r1.x * r0.z;
  r2.xyz = r0.zzz * r0.xyw;
  r0.z = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r5.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r3.xyz = r5.yzw * r0.zzz + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.z = r1.y * r1.y;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.y;
  r0.z = r1.x * r0.z + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * r1.w;
  r0.xyz = r0.xyw * r0.zzz;
  r0.xyz = r4.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: f4df7c8abf91206e
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
  float4 cb3[26];
}

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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.x = dot(r2.xyw, r2.xyw);
  r0.x = sqrt(r0.x);
  r0.x = -r0.z * r0.w + r0.x;
  r0.x = cb3[25].w * r0.x + r2.z;
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = -r3.xyz * r0.yyy + -cb0[3].xyz;
  r0.yzw = r3.xyz * r0.yyy;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = max(0.00100000005, r1.z);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(-cb0[3].xyz, r2.xyz));
  r2.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r2.w = r4.x * r4.x;
  r3.w = r2.w * r2.w;
  r5.x = r1.z * r3.w + -r1.z;
  r1.z = r5.x * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r3.w = 0.318309873 * r3.w;
  r1.z = r3.w / r1.z;
  r0.y = dot(r3.xyz, -r0.yzw);
  r0.z = saturate(dot(r3.xyz, -cb0[3].xyz));
  r0.w = -r4.x * r4.x + 1;
  r3.x = abs(r0.y) * r0.w + r2.w;
  r0.w = r0.z * r0.w + r2.w;
  r0.w = abs(r0.y) * r0.w;
  r0.y = 1 + -abs(r0.y);
  r0.w = r0.z * r3.x + r0.w;
  r0.w = 9.99999975e-06 + r0.w;
  r0.w = 0.5 / r0.w;
  r0.w = r0.w * r1.z;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r0.z;
  r0.w = max(0, r0.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r3.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r5.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r0.x = saturate(r3.x + r0.x);
  r1.xyz = cb0[5].xyz * r0.xxx;
  r3.xyz = r1.xyz * r0.www;
  r0.x = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.w = dot(r0.ww, r4.xx);
  r0.w = -0.5 + r0.w;
  r1.w = r0.x * r0.x;
  r1.w = r1.w * r1.w;
  r0.x = r1.w * r0.x;
  r2.xyz = r4.yzw * r0.xxx + r2.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.x = r0.y * r0.y;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.y;
  r0.x = r0.w * r0.x + 1;
  r0.y = 1 + -r0.z;
  r1.w = r0.y * r0.y;
  r1.w = r1.w * r1.w;
  r0.y = r1.w * r0.y;
  r0.y = r0.w * r0.y + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r0.z;
  r0.xyz = r1.xyz * r0.xxx;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: a7b9898df4ddd0bd
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

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -r0.z * r0.w + r0.x;
  r0.x = cb3[25].w * r0.x + r2.z;
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r3.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r0.x = saturate(r3.x + r0.x);
  r0.yz = cb0[8].xy * r2.yy;
  r0.yz = cb0[7].xy * r2.xx + r0.yz;
  r0.yz = cb0[9].xy * r2.ww + r0.yz;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.yz = cb0[10].xy + r0.yz;
  r3.xyzw = t2.SampleBias(s1_s, r0.yz, -8).xyzw;
  r0.x = r3.w * r0.x;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r3.xyz));
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = dot(r4.xyz, -r2.xyz);
  r1.w = saturate(dot(r4.xyz, -cb0[3].xyz));
  r2.x = -r6.x * r6.x + 1;
  r2.y = abs(r1.y) * r2.x + r1.x;
  r1.x = r1.w * r2.x + r1.x;
  r1.x = abs(r1.y) * r1.x;
  r1.y = 1 + -abs(r1.y);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: 8492dc20762d8518
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r0.w);
  r3.xyz = -r0.xyz * r1.zzz + -r2.xyz;
  r4.xyz = r1.zzz * r0.xyz;
  r5.xyzw = t2.Sample(s2_s, r0.xyz).xyzw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = max(0.00100000005, r0.x);
  r0.x = rsqrt(r0.x);
  r0.xyz = r3.xyz * r0.xxx;
  r3.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = saturate(dot(r3.xyz, r0.xyz));
  r0.x = saturate(dot(-r4.xyz, r0.xyz));
  r0.y = saturate(dot(r3.xyz, -r4.xyz));
  r0.z = dot(r3.xyz, -r2.xyz);
  r2.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r1.x = r4.x * r4.x;
  r1.y = r1.x * r1.x;
  r1.w = r1.z * r1.y + -r1.z;
  r1.z = r1.w * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r4.x * r4.x + 1;
  r1.w = abs(r0.z) * r1.z + r1.x;
  r1.x = r0.y * r1.z + r1.x;
  r1.x = r1.x * abs(r0.z);
  r0.z = 1 + -abs(r0.z);
  r1.x = r0.y * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.y;
  r1.x = max(0, r1.x);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = cmp(r1.y != 0.000000);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.x * r1.y;
  r1.y = sqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r6.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.w = cb3[1].w * r1.y;
  r0.w = 0.970000029 * r0.w;
  r0.w = cmp(r5.x < r0.w);
  r0.w = r0.w ? cb4[24].x : 1;
  r0.w = r6.x * r0.w;
  r1.yzw = cb0[5].xyz * r0.www;
  r5.xyz = r1.xxx * r1.yzw;
  r0.w = 1 + -r0.x;
  r0.x = r0.x * r0.x;
  r0.x = dot(r0.xx, r4.xx);
  r0.x = -0.5 + r0.x;
  r1.x = r0.w * r0.w;
  r1.x = r1.x * r1.x;
  r0.w = r1.x * r0.w;
  r2.xyz = r4.yzw * r0.www + r2.xyz;
  r2.xyz = r5.xyz * r2.xyz;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.z = r0.x * r0.z + 1;
  r0.w = 1 + -r0.y;
  r1.x = r0.w * r0.w;
  r1.x = r1.x * r1.x;
  r0.w = r1.x * r0.w;
  r0.x = r0.x * r0.w + 1;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r0.xyz = r1.yzw * r0.xxx;
  r0.xyz = r3.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: 4e96ab422fa2cd68
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r4.xyz = -r3.xyz * r1.zzz + -r2.xyz;
  r5.xyz = r3.xyz * r1.zzz;
  r3.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = max(0.00100000005, r1.z);
  r1.z = rsqrt(r1.z);
  r3.yzw = r4.xyz * r1.zzz;
  r4.xyzw = t6.Sample(s6_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r1.z = saturate(dot(r4.xyz, r3.yzw));
  r1.w = saturate(dot(-r5.xyz, r3.yzw));
  r2.w = saturate(dot(r4.xyz, -r5.xyz));
  r2.x = dot(r4.xyz, -r2.xyz);
  r4.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r4.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r1.z * r1.y + -r1.z;
  r1.z = r2.y * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.z + r1.x;
  r1.x = r2.w * r1.z + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.z = 1 + -abs(r2.x);
  r1.x = r2.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r2.w;
  r1.x = max(0, r1.x);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = cmp(r1.y != 0.000000);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.x * r1.y;
  r2.xyz = cb0[8].xyz * r0.yyy;
  r2.xyz = cb0[7].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyz + r0.xyz;
  r7.xyzw = t3.SampleBias(s2_s, r0.xyz, -8).xyzw;
  r0.x = sqrt(r0.w);
  r0.y = cb0[4].w * r0.w;
  r8.xyzw = t1.Sample(s1_s, r0.yy).xyzw;
  r0.x = cb3[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.x = cmp(r3.x < r0.x);
  r0.x = r0.x ? cb4[24].x : 1;
  r0.x = r8.x * r0.x;
  r0.x = r0.x * r7.w;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r1.xxx * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.x = r1.w * r1.w;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r3.xyz = r6.yzw * r0.www + r4.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.z * r1.z;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.z;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r2.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: f9469346e19a0780
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerComparisonState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.z = cb1[7].x * r2.x + cb1[7].y;
  r1.z = 1 / r1.z;
  r2.xyz = r1.zzz * r0.yzw;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyzw = cb3[9].xyzw * r2.yyyy;
  r3.xyzw = cb3[8].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb3[10].xyzw * r2.wwww + r3.xyzw;
  r3.xyzw = cb3[11].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = cb0[11].xyz + r3.xyz;
  r4.x = t6.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r5.xyz = cb0[12].xyz + r3.xyz;
  r4.y = t6.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r5.xyz = cb0[13].xyz + r3.xyz;
  r3.xyz = cb0[14].xyz + r3.xyz;
  r4.w = t6.SampleCmpLevelZero(s3_s, r3.xy, r3.z).x;
  r4.z = t6.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r3.xyzw = r4.xyzw * r0.xxxx + cb3[24].xxxx;
  r0.x = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.w * r1.z + r0.y;
  r0.y = cb3[25].w * r0.y + r2.z;
  r0.y = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.x = saturate(r0.x + r0.y);
  r0.yzw = cb0[8].xyw * r2.yyy;
  r0.yzw = cb0[7].xyw * r2.xxx + r0.yzw;
  r0.yzw = cb0[9].xyw * r2.www + r0.yzw;
  r0.yzw = cb0[10].xyw + r0.yzw;
  r0.yz = r0.yz / r0.ww;
  r0.w = cmp(r0.w < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r3.xyzw = t1.SampleBias(s2_s, r0.yz, -8).xyzw;
  r0.y = r3.w * r0.w;
  r3.xyz = cb0[4].xyz + -r2.xyw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = cb0[4].w * r0.z;
  r0.z = rsqrt(r0.z);
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r0.y = r4.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyw = cb0[5].xyz * r0.xxx;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r4.xyz = r3.xyz * r0.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = max(0.00100000005, r0.z);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r5.xyzw = t5.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(r3.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.z * r1.y + -r0.z;
  r0.z = r2.y * r0.z + 1;
  r0.z = r0.z * r0.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.z = r1.y / r0.z;
  r1.y = -r5.x * r5.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.z = r1.x * r0.z;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.w;
  r0.z = max(0, r0.z);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.z = r1.x * r0.z;
  r2.xyz = r0.zzz * r0.xyw;
  r0.z = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r5.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r3.xyz = r5.yzw * r0.zzz + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.z = r1.y * r1.y;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.y;
  r0.z = r1.x * r0.z + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * r1.w;
  r0.xyz = r0.xyw * r0.zzz;
  r0.xyz = r4.xyz * r0.xyz + r2.xyz;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: c71bf419f582a97
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb0[4].xyz + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) + r2.xyz;
  r3.xyzw = t2.Sample(s2_s, r3.xyz).xyzw;
  r4.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.y = r4.x;
  r4.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.z = r4.x;
  r4.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.w = r4.x;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r0.w);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r3.xyzw = cmp(r3.xyzw < r1.zzzz);
  r3.xyzw = r3.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r3.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r3.x * r1.z;
  r3.xyz = cb0[5].xyz * r1.zzz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = -r2.xyz * r0.www + -r0.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r2.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, -r2.xyz));
  r0.x = dot(r5.xyz, -r0.xyz);
  r2.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.y = r5.x * r5.x;
  r0.z = r0.y * r0.y;
  r1.x = r0.w * r0.z + -r0.w;
  r0.w = r1.x * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r0.z = 0.318309873 * r0.z;
  r0.z = r0.z / r0.w;
  r0.w = -r5.x * r5.x + 1;
  r1.x = abs(r0.x) * r0.w + r0.y;
  r0.y = r1.w * r0.w + r0.y;
  r0.y = abs(r0.x) * r0.y;
  r0.x = 1 + -abs(r0.x);
  r0.y = r1.w * r1.x + r0.y;
  r0.y = 9.99999975e-06 + r0.y;
  r0.y = 0.5 / r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 3.14159274 * r0.y;
  r0.y = r0.y * r1.w;
  r0.y = max(0, r0.y);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = cmp(r0.z != 0.000000);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.z;
  r0.yzw = r0.yyy * r3.xyz;
  r1.x = 1 + -r1.z;
  r1.y = r1.z * r1.z;
  r1.y = dot(r1.yy, r5.xx);
  r1.y = -0.5 + r1.y;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r2.xyz = r5.yzw * r1.xxx + r2.xyz;
  r0.yzw = r2.xyz * r0.yzw;
  r1.x = r0.x * r0.x;
  r1.x = r1.x * r1.x;
  r0.x = r1.x * r0.x;
  r0.x = r1.y * r0.x + 1;
  r1.x = 1 + -r1.w;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.x = r1.x * r0.x;
  r0.x = r0.x * r1.w;
  r1.xyz = r3.xyz * r0.xxx;
  r0.xyz = r4.xyz * r1.xyz + r0.yzw;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
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
"// hash: e4090d50b3c5c0b6
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb0[4].xyz + r0.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) + r2.xyz;
  r3.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r4.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.y = r4.x;
  r4.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.z = r4.x;
  r4.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.w = r4.x;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r0.w);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r3.xyzw = cmp(r3.xyzw < r1.zzzz);
  r3.xyzw = r3.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r3.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r3.x * r1.z;
  r3.xyz = cb0[8].xyz * r0.yyy;
  r3.xyz = cb0[7].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r0.zzz + r3.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r3.xyz = cb0[10].xyz + r3.xyz;
  r3.xyzw = t3.SampleBias(s2_s, r3.xyz, -8).xyzw;
  r1.z = r3.w * r1.z;
  r3.xyz = cb0[5].xyz * r1.zzz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = -r2.xyz * r0.www + -r0.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t6.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r2.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, -r2.xyz));
  r0.x = dot(r5.xyz, -r0.xyz);
  r2.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.y = r5.x * r5.x;
  r0.z = r0.y * r0.y;
  r1.x = r0.w * r0.z + -r0.w;
  r0.w = r1.x * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r0.z = 0.318309873 * r0.z;
  r0.z = r0.z / r0.w;
  r0.w = -r5.x * r5.x + 1;
  r1.x = abs(r0.x) * r0.w + r0.y;
  r0.y = r1.w * r0.w + r0.y;
  r0.y = abs(r0.x) * r0.y;
  r0.x = 1 + -abs(r0.x);
  r0.y = r1.w * r1.x + r0.y;
  r0.y = 9.99999975e-06 + r0.y;
  r0.y = 0.5 / r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 3.14159274 * r0.y;
  r0.y = r0.y * r1.w;
  r0.y = max(0, r0.y);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = cmp(r0.z != 0.000000);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.z;
  r0.yzw = r0.yyy * r3.xyz;
  r1.x = 1 + -r1.z;
  r1.y = r1.z * r1.z;
  r1.y = dot(r1.yy, r5.xx);
  r1.y = -0.5 + r1.y;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r2.xyz = r5.yzw * r1.xxx + r2.xyz;
  r0.yzw = r2.xyz * r0.yzw;
  r1.x = r0.x * r0.x;
  r1.x = r1.x * r1.x;
  r0.x = r1.x * r0.x;
  r0.x = r1.y * r0.x + 1;
  r1.x = 1 + -r1.w;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.x = r1.x * r0.x;
  r0.x = r0.x * r1.w;
  r1.xyz = r3.xyz * r0.xxx;
  r0.xyz = r4.xyz * r1.xyz + r0.yzw;
  r0.w = 1;
  o0.xyzw = exp2(-r0.xyzw);
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_HDR_ON" }
"// hash: 8dc8e5a37324c45d
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r3.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r3.xyz = cb0[5].xyz * r3.xxx;
  r4.xyz = -r0.xyz * r1.zzz + -r2.xyz;
  r0.xyz = r1.zzz * r0.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r0.xyz, r4.xyz));
  r0.x = saturate(dot(r5.xyz, -r0.xyz));
  r0.y = dot(r5.xyz, -r2.xyz);
  r2.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.z = r5.x * r5.x;
  r1.x = r0.z * r0.z;
  r1.y = r0.w * r1.x + -r0.w;
  r0.w = r1.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.x = 0.318309873 * r1.x;
  r0.w = r1.x / r0.w;
  r1.x = -r5.x * r5.x + 1;
  r1.y = abs(r0.y) * r1.x + r0.z;
  r0.z = r0.x * r1.x + r0.z;
  r0.z = abs(r0.y) * r0.z;
  r0.y = 1 + -abs(r0.y);
  r0.z = r0.x * r1.y + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r0.x;
  r0.z = max(0, r0.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r1.xyw = r0.zzz * r3.xyz;
  r0.z = 1 + -r1.z;
  r0.w = r1.z * r1.z;
  r0.w = dot(r0.ww, r5.xx);
  r0.w = -0.5 + r0.w;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r2.xyz = r5.yzw * r0.zzz + r2.xyz;
  r1.xyz = r2.xyz * r1.xyw;
  r0.z = r0.y * r0.y;
  r0.z = r0.z * r0.z;
  r0.y = r0.z * r0.y;
  r0.y = r0.w * r0.y + 1;
  r0.z = 1 + -r0.x;
  r1.w = r0.z * r0.z;
  r1.w = r1.w * r1.w;
  r0.z = r1.w * r0.z;
  r0.z = r0.w * r0.z + 1;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyz = r3.xyz * r0.xxx;
  o0.xyz = r4.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_HDR_ON" }
"// hash: 37b92768ed05edc5
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r0.xyz * r0.www + -cb0[3].xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = saturate(dot(r3.xyz, r2.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r2.xyz));
  r2.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r4.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r0.x = dot(r3.xyz, -r0.xyz);
  r0.y = saturate(dot(r3.xyz, -cb0[3].xyz));
  r0.z = -r5.x * r5.x + 1;
  r1.y = abs(r0.x) * r0.z + r1.x;
  r0.z = r0.y * r0.z + r1.x;
  r0.z = abs(r0.x) * r0.z;
  r0.x = 1 + -abs(r0.x);
  r0.z = r0.y * r1.y + r0.z;
  r0.z = 9.99999975e-06 + r0.z;
  r0.z = 0.5 / r0.z;
  r0.z = r0.z * r0.w;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r0.y;
  r0.z = max(0, r0.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = cmp(r0.w != 0.000000);
  r0.w = r0.w ? 1.000000 : 0;
  r0.z = r0.z * r0.w;
  r1.xyw = cb0[5].xyz * r0.zzz;
  r0.z = 1 + -r1.z;
  r0.w = r1.z * r1.z;
  r0.w = dot(r0.ww, r5.xx);
  r0.w = -0.5 + r0.w;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r2.xyz = r5.yzw * r0.zzz + r2.xyz;
  r1.xyz = r2.xyz * r1.xyw;
  r0.z = r0.x * r0.x;
  r0.z = r0.z * r0.z;
  r0.x = r0.z * r0.x;
  r0.x = r0.w * r0.x + 1;
  r0.z = 1 + -r0.y;
  r1.w = r0.z * r0.z;
  r1.w = r1.w * r1.w;
  r0.z = r1.w * r0.z;
  r0.z = r0.w * r0.z + 1;
  r0.x = r0.z * r0.x;
  r0.x = r0.x * r0.y;
  r0.xyz = cb0[5].xyz * r0.xxx;
  o0.xyz = r4.xyz * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_HDR_ON" }
"// hash: fb1c8a24d77369ef
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = cb0[4].xyz + -r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r4.yzw = r3.xyz * r1.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r1.zzz;
  r0.w = dot(r4.yzw, r4.yzw);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.yzw = r4.yzw * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.yzw));
  r1.z = saturate(dot(r3.xyz, r4.yzw));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.w * r1.y + -r0.w;
  r0.w = r2.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = cb0[8].xyw * r0.yyy;
  r2.xyz = cb0[7].xyw * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyw * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyw + r0.xyz;
  r0.xy = r0.xy / r0.zz;
  r0.z = cmp(r0.z < 0);
  r0.z = r0.z ? 1.000000 : 0;
  r2.xyzw = t1.SampleBias(s2_s, r0.xy, -8).xyzw;
  r0.x = r2.w * r0.z;
  r0.x = r0.x * r4.x;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_HDR_ON" }
"// hash: f47570d567216940
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r4.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r4.yzw = -r3.xyz * r1.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r1.zzz;
  r0.w = dot(r4.yzw, r4.yzw);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.yzw = r4.yzw * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.yzw));
  r1.z = saturate(dot(-r3.xyz, r4.yzw));
  r1.w = saturate(dot(r5.xyz, -r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.w * r1.y + -r0.w;
  r0.w = r2.y * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = cb0[8].xyz * r0.yyy;
  r2.xyz = cb0[7].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyz + r0.xyz;
  r2.xyzw = t2.SampleBias(s2_s, r0.xyz, -8).xyzw;
  r0.x = r4.x * r2.w;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_HDR_ON" }
"// hash: f0f58f03833249ba
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
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r3.xyz));
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r5.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = dot(r4.xyz, -r2.xyz);
  r1.w = saturate(dot(r4.xyz, -cb0[3].xyz));
  r2.x = -r6.x * r6.x + 1;
  r2.y = abs(r1.y) * r2.x + r1.x;
  r1.x = r1.w * r2.x + r1.x;
  r1.x = abs(r1.y) * r1.x;
  r1.y = 1 + -abs(r1.y);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xy = cb0[8].xy * r0.yy;
  r0.xy = cb0[7].xy * r0.xx + r2.xy;
  r0.xy = cb0[9].xy * r0.zz + r0.xy;
  r0.xy = cb0[10].xy + r0.xy;
  r2.xyzw = t1.SampleBias(s1_s, r0.xy, -8).xyzw;
  r0.xyz = cb0[5].xyz * r2.www;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_HDR_ON" }
"// hash: e2d34643fae37583
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerComparisonState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.z = cb1[7].x * r2.x + cb1[7].y;
  r1.z = 1 / r1.z;
  r2.xyz = r1.zzz * r0.yzw;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyzw = cb3[9].xyzw * r2.yyyy;
  r3.xyzw = cb3[8].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb3[10].xyzw * r2.wwww + r3.xyzw;
  r3.xyzw = cb3[11].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r0.y = t6.SampleCmpLevelZero(s3_s, r3.xy, r3.z).x;
  r0.x = r0.y * r0.x + cb3[24].x;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.w * r1.z + r0.y;
  r0.y = cb3[25].w * r0.y + r2.z;
  r0.y = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.x = saturate(r0.x + r0.y);
  r0.yzw = cb0[8].xyw * r2.yyy;
  r0.yzw = cb0[7].xyw * r2.xxx + r0.yzw;
  r0.yzw = cb0[9].xyw * r2.www + r0.yzw;
  r0.yzw = cb0[10].xyw + r0.yzw;
  r0.yz = r0.yz / r0.ww;
  r0.w = cmp(r0.w < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r3.xyzw = t1.SampleBias(s2_s, r0.yz, -8).xyzw;
  r0.y = r3.w * r0.w;
  r3.xyz = cb0[4].xyz + -r2.xyw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = cb0[4].w * r0.z;
  r0.z = rsqrt(r0.z);
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r0.y = r4.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyw = cb0[5].xyz * r0.xxx;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r4.xyz = r3.xyz * r0.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = max(0.00100000005, r0.z);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r5.xyzw = t5.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(r3.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.z * r1.y + -r0.z;
  r0.z = r2.y * r0.z + 1;
  r0.z = r0.z * r0.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.z = r1.y / r0.z;
  r1.y = -r5.x * r5.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.z = r1.x * r0.z;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.w;
  r0.z = max(0, r0.z);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.z = r1.x * r0.z;
  r2.xyz = r0.zzz * r0.xyw;
  r0.z = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r5.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r3.xyz = r5.yzw * r0.zzz + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.z = r1.y * r1.y;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.y;
  r0.z = r1.x * r0.z + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * r1.w;
  r0.xyz = r0.xyw * r0.zzz;
  o0.xyz = r4.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// hash: dc9fe1bfaccc84b3
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
  float4 cb3[26];
}

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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.x = dot(r2.xyw, r2.xyw);
  r0.x = sqrt(r0.x);
  r0.x = -r0.z * r0.w + r0.x;
  r0.x = cb3[25].w * r0.x + r2.z;
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = -r3.xyz * r0.yyy + -cb0[3].xyz;
  r0.yzw = r3.xyz * r0.yyy;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = max(0.00100000005, r1.z);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = saturate(dot(r3.xyz, r2.xyz));
  r1.w = saturate(dot(-cb0[3].xyz, r2.xyz));
  r2.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r2.w = r4.x * r4.x;
  r3.w = r2.w * r2.w;
  r5.x = r1.z * r3.w + -r1.z;
  r1.z = r5.x * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r3.w = 0.318309873 * r3.w;
  r1.z = r3.w / r1.z;
  r0.y = dot(r3.xyz, -r0.yzw);
  r0.z = saturate(dot(r3.xyz, -cb0[3].xyz));
  r0.w = -r4.x * r4.x + 1;
  r3.x = abs(r0.y) * r0.w + r2.w;
  r0.w = r0.z * r0.w + r2.w;
  r0.w = abs(r0.y) * r0.w;
  r0.y = 1 + -abs(r0.y);
  r0.w = r0.z * r3.x + r0.w;
  r0.w = 9.99999975e-06 + r0.w;
  r0.w = 0.5 / r0.w;
  r0.w = r0.w * r1.z;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r0.z;
  r0.w = max(0, r0.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = cmp(r1.z != 0.000000);
  r1.z = r1.z ? 1.000000 : 0;
  r0.w = r1.z * r0.w;
  r3.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r5.xyzw = t2.Sample(s2_s, r1.xy).xyzw;
  r0.x = saturate(r3.x + r0.x);
  r1.xyz = cb0[5].xyz * r0.xxx;
  r3.xyz = r1.xyz * r0.www;
  r0.x = 1 + -r1.w;
  r0.w = r1.w * r1.w;
  r0.w = dot(r0.ww, r4.xx);
  r0.w = -0.5 + r0.w;
  r1.w = r0.x * r0.x;
  r1.w = r1.w * r1.w;
  r0.x = r1.w * r0.x;
  r2.xyz = r4.yzw * r0.xxx + r2.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.x = r0.y * r0.y;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.y;
  r0.x = r0.w * r0.x + 1;
  r0.y = 1 + -r0.z;
  r1.w = r0.y * r0.y;
  r1.w = r1.w * r1.w;
  r0.y = r1.w * r0.y;
  r0.y = r0.w * r0.y + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r0.z;
  r0.xyz = r1.xyz * r0.xxx;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_HDR_ON" }
"// hash: 916ecd5e4d6c5e05
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

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -r0.z * r0.w + r0.x;
  r0.x = cb3[25].w * r0.x + r2.z;
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r3.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r0.x = saturate(r3.x + r0.x);
  r0.yz = cb0[8].xy * r2.yy;
  r0.yz = cb0[7].xy * r2.xx + r0.yz;
  r0.yz = cb0[9].xy * r2.ww + r0.yz;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.yz = cb0[10].xy + r0.yz;
  r3.xyzw = t2.SampleBias(s1_s, r0.yz, -8).xyzw;
  r0.x = r3.w * r0.x;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = saturate(dot(r4.xyz, r3.xyz));
  r1.z = saturate(dot(-cb0[3].xyz, r3.xyz));
  r3.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r1.w = r0.w * r1.y + -r0.w;
  r0.w = r1.w * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.w = r1.y / r0.w;
  r1.y = dot(r4.xyz, -r2.xyz);
  r1.w = saturate(dot(r4.xyz, -cb0[3].xyz));
  r2.x = -r6.x * r6.x + 1;
  r2.y = abs(r1.y) * r2.x + r1.x;
  r1.x = r1.w * r2.x + r1.x;
  r1.x = abs(r1.y) * r1.x;
  r1.y = 1 + -abs(r1.y);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.w = r1.x * r0.w;
  r0.w = 3.14159274 * r0.w;
  r0.w = r0.w * r1.w;
  r0.w = max(0, r0.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r1.x * r0.w;
  r2.xyz = r0.www * r0.xyz;
  r0.w = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.w * r0.w;
  r1.z = r1.z * r1.z;
  r0.w = r1.z * r0.w;
  r3.xyz = r6.yzw * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.y * r1.y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.y;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// hash: e692795142b1ca92
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r0.w);
  r3.xyz = -r0.xyz * r1.zzz + -r2.xyz;
  r4.xyz = r1.zzz * r0.xyz;
  r5.xyzw = t2.Sample(s2_s, r0.xyz).xyzw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = max(0.00100000005, r0.x);
  r0.x = rsqrt(r0.x);
  r0.xyz = r3.xyz * r0.xxx;
  r3.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = saturate(dot(r3.xyz, r0.xyz));
  r0.x = saturate(dot(-r4.xyz, r0.xyz));
  r0.y = saturate(dot(r3.xyz, -r4.xyz));
  r0.z = dot(r3.xyz, -r2.xyz);
  r2.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r3.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r4.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r1.x = r4.x * r4.x;
  r1.y = r1.x * r1.x;
  r1.w = r1.z * r1.y + -r1.z;
  r1.z = r1.w * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r4.x * r4.x + 1;
  r1.w = abs(r0.z) * r1.z + r1.x;
  r1.x = r0.y * r1.z + r1.x;
  r1.x = r1.x * abs(r0.z);
  r0.z = 1 + -abs(r0.z);
  r1.x = r0.y * r1.w + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r0.y;
  r1.x = max(0, r1.x);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = cmp(r1.y != 0.000000);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.x * r1.y;
  r1.y = sqrt(r0.w);
  r0.w = cb0[4].w * r0.w;
  r6.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.w = cb3[1].w * r1.y;
  r0.w = 0.970000029 * r0.w;
  r0.w = cmp(r5.x < r0.w);
  r0.w = r0.w ? cb4[24].x : 1;
  r0.w = r6.x * r0.w;
  r1.yzw = cb0[5].xyz * r0.www;
  r5.xyz = r1.xxx * r1.yzw;
  r0.w = 1 + -r0.x;
  r0.x = r0.x * r0.x;
  r0.x = dot(r0.xx, r4.xx);
  r0.x = -0.5 + r0.x;
  r1.x = r0.w * r0.w;
  r1.x = r1.x * r1.x;
  r0.w = r1.x * r0.w;
  r2.xyz = r4.yzw * r0.www + r2.xyz;
  r2.xyz = r5.xyz * r2.xyz;
  r0.w = r0.z * r0.z;
  r0.w = r0.w * r0.w;
  r0.z = r0.w * r0.z;
  r0.z = r0.x * r0.z + 1;
  r0.w = 1 + -r0.y;
  r1.x = r0.w * r0.w;
  r1.x = r1.x * r1.x;
  r0.w = r1.x * r0.w;
  r0.x = r0.x * r0.w + 1;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r0.xyz = r1.yzw * r0.xxx;
  o0.xyz = r3.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_HDR_ON" }
"// hash: d80242c768124d85
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb1[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r0.w);
  r4.xyz = -r3.xyz * r1.zzz + -r2.xyz;
  r5.xyz = r3.xyz * r1.zzz;
  r3.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = max(0.00100000005, r1.z);
  r1.z = rsqrt(r1.z);
  r3.yzw = r4.xyz * r1.zzz;
  r4.xyzw = t6.Sample(s6_s, r1.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r1.z = saturate(dot(r4.xyz, r3.yzw));
  r1.w = saturate(dot(-r5.xyz, r3.yzw));
  r2.w = saturate(dot(r4.xyz, -r5.xyz));
  r2.x = dot(r4.xyz, -r2.xyz);
  r4.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r6.xyzw = float4(1,1,1,1) + -r4.wxyz;
  r1.x = r6.x * r6.x;
  r1.y = r1.x * r1.x;
  r2.y = r1.z * r1.y + -r1.z;
  r1.z = r2.y * r1.z + 1;
  r1.z = r1.z * r1.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r1.y = r1.y / r1.z;
  r1.z = -r6.x * r6.x + 1;
  r2.y = abs(r2.x) * r1.z + r1.x;
  r1.x = r2.w * r1.z + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.z = 1 + -abs(r2.x);
  r1.x = r2.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r1.x = r1.x * r1.y;
  r1.x = 3.14159274 * r1.x;
  r1.x = r1.x * r2.w;
  r1.x = max(0, r1.x);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = cmp(r1.y != 0.000000);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.x * r1.y;
  r2.xyz = cb0[8].xyz * r0.yyy;
  r2.xyz = cb0[7].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb0[9].xyz * r0.zzz + r2.xyz;
  r0.xyz = cb0[10].xyz + r0.xyz;
  r7.xyzw = t3.SampleBias(s2_s, r0.xyz, -8).xyzw;
  r0.x = sqrt(r0.w);
  r0.y = cb0[4].w * r0.w;
  r8.xyzw = t1.Sample(s1_s, r0.yy).xyzw;
  r0.x = cb3[1].w * r0.x;
  r0.x = 0.970000029 * r0.x;
  r0.x = cmp(r3.x < r0.x);
  r0.x = r0.x ? cb4[24].x : 1;
  r0.x = r8.x * r0.x;
  r0.x = r0.x * r7.w;
  r0.xyz = cb0[5].xyz * r0.xxx;
  r2.xyz = r1.xxx * r0.xyz;
  r0.w = 1 + -r1.w;
  r1.x = r1.w * r1.w;
  r1.x = dot(r1.xx, r6.xx);
  r1.x = -0.5 + r1.x;
  r1.y = r0.w * r0.w;
  r1.y = r1.y * r1.y;
  r0.w = r1.y * r0.w;
  r3.xyz = r6.yzw * r0.www + r4.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = r1.z * r1.z;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r1.z;
  r0.w = r1.x * r0.w + 1;
  r1.y = 1 + -r2.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r2.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = r5.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: 65b28f1c9199fe5d
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerComparisonState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

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
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.y = cb1[5].z / v2.z;
  r0.yzw = v2.xyz * r0.yyy;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.z = cb1[7].x * r2.x + cb1[7].y;
  r1.z = 1 / r1.z;
  r2.xyz = r1.zzz * r0.yzw;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyzw = cb3[9].xyzw * r2.yyyy;
  r3.xyzw = cb3[8].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb3[10].xyzw * r2.wwww + r3.xyzw;
  r3.xyzw = cb3[11].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = cb0[11].xyz + r3.xyz;
  r4.x = t6.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r5.xyz = cb0[12].xyz + r3.xyz;
  r4.y = t6.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r5.xyz = cb0[13].xyz + r3.xyz;
  r3.xyz = cb0[14].xyz + r3.xyz;
  r4.w = t6.SampleCmpLevelZero(s3_s, r3.xy, r3.z).x;
  r4.z = t6.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r3.xyzw = r4.xyzw * r0.xxxx + cb3[24].xxxx;
  r0.x = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.w * r1.z + r0.y;
  r0.y = cb3[25].w * r0.y + r2.z;
  r0.y = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.x = saturate(r0.x + r0.y);
  r0.yzw = cb0[8].xyw * r2.yyy;
  r0.yzw = cb0[7].xyw * r2.xxx + r0.yzw;
  r0.yzw = cb0[9].xyw * r2.www + r0.yzw;
  r0.yzw = cb0[10].xyw + r0.yzw;
  r0.yz = r0.yz / r0.ww;
  r0.w = cmp(r0.w < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r3.xyzw = t1.SampleBias(s2_s, r0.yz, -8).xyzw;
  r0.y = r3.w * r0.w;
  r3.xyz = cb0[4].xyz + -r2.xyw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = cb0[4].w * r0.z;
  r0.z = rsqrt(r0.z);
  r4.xyzw = t2.Sample(s1_s, r0.ww).xyzw;
  r0.y = r4.x * r0.y;
  r0.x = r0.y * r0.x;
  r0.xyw = cb0[5].xyz * r0.xxx;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r4.xyz = r3.xyz * r0.zzz + -r2.xyz;
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = max(0.00100000005, r0.z);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r5.xyzw = t5.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(r3.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, r3.xyz));
  r2.x = dot(r5.xyz, -r2.xyz);
  r3.xyzw = t4.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r3.wxyz;
  r1.x = r5.x * r5.x;
  r1.y = r1.x * r1.x;
  r2.y = r0.z * r1.y + -r0.z;
  r0.z = r2.y * r0.z + 1;
  r0.z = r0.z * r0.z + 1.00000001e-07;
  r1.y = 0.318309873 * r1.y;
  r0.z = r1.y / r0.z;
  r1.y = -r5.x * r5.x + 1;
  r2.y = abs(r2.x) * r1.y + r1.x;
  r1.x = r1.w * r1.y + r1.x;
  r1.x = abs(r2.x) * r1.x;
  r1.y = 1 + -abs(r2.x);
  r1.x = r1.w * r2.y + r1.x;
  r1.x = 9.99999975e-06 + r1.x;
  r1.x = 0.5 / r1.x;
  r0.z = r1.x * r0.z;
  r0.z = 3.14159274 * r0.z;
  r0.z = r0.z * r1.w;
  r0.z = max(0, r0.z);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = cmp(r1.x != 0.000000);
  r1.x = r1.x ? 1.000000 : 0;
  r0.z = r1.x * r0.z;
  r2.xyz = r0.zzz * r0.xyw;
  r0.z = 1 + -r1.z;
  r1.x = r1.z * r1.z;
  r1.x = dot(r1.xx, r5.xx);
  r1.x = -0.5 + r1.x;
  r1.z = r0.z * r0.z;
  r1.z = r1.z * r1.z;
  r0.z = r1.z * r0.z;
  r3.xyz = r5.yzw * r0.zzz + r3.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r0.z = r1.y * r1.y;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r1.y;
  r0.z = r1.x * r0.z + 1;
  r1.y = 1 + -r1.w;
  r1.z = r1.y * r1.y;
  r1.z = r1.z * r1.z;
  r1.y = r1.z * r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * r1.w;
  r0.xyz = r0.xyw * r0.zzz;
  o0.xyz = r4.xyz * r0.xyz + r2.xyz;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: c2212f14968f33e
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb0[4].xyz + r0.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) + r2.xyz;
  r3.xyzw = t2.Sample(s2_s, r3.xyz).xyzw;
  r4.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.y = r4.x;
  r4.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.z = r4.x;
  r4.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.w = r4.x;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r0.w);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r3.xyzw = cmp(r3.xyzw < r1.zzzz);
  r3.xyzw = r3.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r3.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r3.x * r1.z;
  r3.xyz = cb0[5].xyz * r1.zzz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = -r2.xyz * r0.www + -r0.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r2.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, -r2.xyz));
  r0.x = dot(r5.xyz, -r0.xyz);
  r2.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r4.xyzw = t3.Sample(s3_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.y = r5.x * r5.x;
  r0.z = r0.y * r0.y;
  r1.x = r0.w * r0.z + -r0.w;
  r0.w = r1.x * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r0.z = 0.318309873 * r0.z;
  r0.z = r0.z / r0.w;
  r0.w = -r5.x * r5.x + 1;
  r1.x = abs(r0.x) * r0.w + r0.y;
  r0.y = r1.w * r0.w + r0.y;
  r0.y = abs(r0.x) * r0.y;
  r0.x = 1 + -abs(r0.x);
  r0.y = r1.w * r1.x + r0.y;
  r0.y = 9.99999975e-06 + r0.y;
  r0.y = 0.5 / r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 3.14159274 * r0.y;
  r0.y = r0.y * r1.w;
  r0.y = max(0, r0.y);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = cmp(r0.z != 0.000000);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.z;
  r0.yzw = r0.yyy * r3.xyz;
  r1.x = 1 + -r1.z;
  r1.y = r1.z * r1.z;
  r1.y = dot(r1.yy, r5.xx);
  r1.y = -0.5 + r1.y;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r2.xyz = r5.yzw * r1.xxx + r2.xyz;
  r0.yzw = r2.xyz * r0.yzw;
  r1.x = r0.x * r0.x;
  r1.x = r1.x * r1.x;
  r0.x = r1.x * r0.x;
  r0.x = r1.y * r0.x + 1;
  r1.x = 1 + -r1.w;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.x = r1.x * r0.x;
  r0.x = r0.x * r1.w;
  r1.xyz = r3.xyz * r0.xxx;
  o0.xyz = r4.xyz * r1.xyz + r0.yzw;
  o0.w = 1;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_HDR_ON" }
"// hash: ab24e34affd71910
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

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
  float4 cb1[8];
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
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r0.w = cb1[7].x * r2.x + cb1[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[19].xyz * r0.yyy;
  r0.xyw = cb2[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb2[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb2[21].xyz + r0.xyz;
  r2.xyz = -cb0[4].xyz + r0.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) + r2.xyz;
  r3.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r4.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.y = r4.x;
  r4.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.z = r4.x;
  r4.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r2.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r3.w = r4.x;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r0.w);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r3.xyzw = cmp(r3.xyzw < r1.zzzz);
  r3.xyzw = r3.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r3.xyzw, float4(0.25,0.25,0.25,0.25));
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r3.xyzw = t1.Sample(s1_s, r1.ww).xyzw;
  r1.z = r3.x * r1.z;
  r3.xyz = cb0[8].xyz * r0.yyy;
  r3.xyz = cb0[7].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r0.zzz + r3.xyz;
  r0.xyz = -cb1[4].xyz + r0.xyz;
  r3.xyz = cb0[10].xyz + r3.xyz;
  r3.xyzw = t3.SampleBias(s2_s, r3.xyz, -8).xyzw;
  r1.z = r3.w * r1.z;
  r3.xyz = cb0[5].xyz * r1.zzz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = -r2.xyz * r0.www + -r0.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = max(0.00100000005, r0.w);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = t6.Sample(s6_s, r1.xy).xyzw;
  r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = saturate(dot(r5.xyz, r4.xyz));
  r1.z = saturate(dot(-r2.xyz, r4.xyz));
  r1.w = saturate(dot(r5.xyz, -r2.xyz));
  r0.x = dot(r5.xyz, -r0.xyz);
  r2.xyzw = t5.Sample(s5_s, r1.xy).xyzw;
  r4.xyzw = t4.Sample(s4_s, r1.xy).xyzw;
  r5.xyzw = float4(1,1,1,1) + -r2.wxyz;
  r0.y = r5.x * r5.x;
  r0.z = r0.y * r0.y;
  r1.x = r0.w * r0.z + -r0.w;
  r0.w = r1.x * r0.w + 1;
  r0.w = r0.w * r0.w + 1.00000001e-07;
  r0.z = 0.318309873 * r0.z;
  r0.z = r0.z / r0.w;
  r0.w = -r5.x * r5.x + 1;
  r1.x = abs(r0.x) * r0.w + r0.y;
  r0.y = r1.w * r0.w + r0.y;
  r0.y = abs(r0.x) * r0.y;
  r0.x = 1 + -abs(r0.x);
  r0.y = r1.w * r1.x + r0.y;
  r0.y = 9.99999975e-06 + r0.y;
  r0.y = 0.5 / r0.y;
  r0.y = r0.y * r0.z;
  r0.y = 3.14159274 * r0.y;
  r0.y = r0.y * r1.w;
  r0.y = max(0, r0.y);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = cmp(r0.z != 0.000000);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y * r0.z;
  r0.yzw = r0.yyy * r3.xyz;
  r1.x = 1 + -r1.z;
  r1.y = r1.z * r1.z;
  r1.y = dot(r1.yy, r5.xx);
  r1.y = -0.5 + r1.y;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r2.xyz = r5.yzw * r1.xxx + r2.xyz;
  r0.yzw = r2.xyz * r0.yzw;
  r1.x = r0.x * r0.x;
  r1.x = r1.x * r1.x;
  r0.x = r1.x * r0.x;
  r0.x = r1.y * r0.x + 1;
  r1.x = 1 + -r1.w;
  r1.z = r1.x * r1.x;
  r1.z = r1.z * r1.z;
  r1.x = r1.z * r1.x;
  r1.x = r1.y * r1.x + 1;
  r0.x = r1.x * r0.x;
  r0.x = r0.x * r1.w;
  r1.xyz = r3.xyz * r0.xxx;
  o0.xyz = r4.xyz * r1.xyz + r0.yzw;
  o0.w = 1;
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
  Stencil {
   ReadMask 0
   CompFront Equal
   PassFront Keep
   FailFront Keep
   ZFailFront Keep
   CompBack Equal
   PassBack Keep
   FailBack Keep
   ZFailBack Keep
  }
  GpuProgramID 103316
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 7ee303b9b6a35c2c
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xy = v1.xy;
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
"// hash: 19989ca756844f98
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyzw = log2(r0.xyzw);
  o0.xyzw = -r0.xyzw;
  return;
}"
}
}
}
}
}