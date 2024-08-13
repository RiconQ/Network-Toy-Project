//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-PrePassLighting" {
Properties {
_LightTexture0 ("", any) = "" { }
_LightTextureB0 ("", 2D) = "" { }
_ShadowMapTexture ("", any) = "" { }
}
SubShader {
 Pass {
  Tags { "SHADOWSUPPORT" = "true" }
  Blend DstColor Zero, DstColor Zero
  ZClip Off
  ZWrite Off
  GpuProgramID 13514
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
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: 97f9ed6dd946fb94
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t2.Sample(s2_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r1.z = dot(r2.xyw, r2.xyw);
  r1.z = sqrt(r1.z);
  r1.x = -r1.w * r1.x + r1.z;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r2.yzw = r4.xyz * r1.www;
  r1.yzw = -r3.xyz * r1.yyy + -r2.yzw;
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = rsqrt(r3.x);
  r1.yzw = r3.xxx * r1.yzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = rsqrt(r3.x);
  r0.xyz = r3.xxx * r0.xyz;
  r1.y = dot(r1.yzw, r0.xyz);
  r0.x = dot(-r2.yzw, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r2.x;
  r2.x = saturate(r2.x);
  r3.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.y);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r2.x;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r3.w = r0.x * r0.y;
  r0.xyzw = r3.xyzw * r1.xxxx;
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
"// hash: f6dab80da9035030
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r2.xyw = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = sqrt(r1.y);
  r1.x = -r1.w * r1.x + r1.y;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.y = dot(r2.xyw, r2.xyw);
  r1.y = rsqrt(r1.y);
  r1.yzw = -r2.xyw * r1.yyy + -cb0[3].xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r1.y = dot(r1.yzw, r0.xyz);
  r0.x = dot(-cb0[3].xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.y);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 9d98f827aa284cec
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = cb0[4].xyz + -r2.xyw;
  r1.z = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r5.xyzw = t2.Sample(s1_s, r1.zz).xyzw;
  r4.xyz = r4.xyz * r3.www;
  r3.xyz = -r3.xyz * r1.yyy + r4.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(r4.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r3.xyz = cb0[8].xyw * r2.yyy;
  r3.xyz = cb0[7].xyw * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyw * r2.www + r3.xyz;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.z = dot(r2.xyw, r2.xyw);
  r0.z = sqrt(r0.z);
  r0.z = -r1.w * r1.x + r0.z;
  r0.z = cb3[25].w * r0.z + r2.z;
  r0.z = r0.z * cb0[6].z + cb0[6].w;
  r0.z = saturate(1 + -r0.z);
  r1.xyz = cb0[10].xyw + r3.xyz;
  r1.xy = r1.xy / r1.zz;
  r0.w = cmp(r1.z < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r1.xyzw = t1.SampleBias(s2_s, r1.xy, -8).xyzw;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * r5.x;
  r1.x = saturate(r0.w);
  r0.x = r0.x * r0.w;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r1.x * r0.y;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r0.zzzz;
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
"// hash: de4851ca5abccd8e
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r1.z = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r5.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r4.xyz = r4.xyz * r3.www;
  r3.xyz = -r3.xyz * r1.yyy + -r4.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-r4.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r3.xyz = cb0[8].xyz * r2.yyy;
  r3.xyz = cb0[7].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r2.www + r3.xyz;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.z = dot(r2.xyw, r2.xyw);
  r0.z = sqrt(r0.z);
  r0.z = -r1.w * r1.x + r0.z;
  r0.z = cb3[25].w * r0.z + r2.z;
  r0.z = r0.z * cb0[6].z + cb0[6].w;
  r0.z = saturate(1 + -r0.z);
  r1.xyz = cb0[10].xyz + r3.xyz;
  r1.xyzw = t2.SampleBias(s2_s, r1.xyz, -8).xyzw;
  r0.w = r5.x * r1.w;
  r1.x = saturate(r0.w);
  r0.x = r0.x * r0.w;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r1.x * r0.y;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r0.zzzz;
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
"// hash: 4c6e69fba5d00802
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t2.Sample(s2_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = -r3.xyz * r1.yyy + -cb0[3].xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-cb0[3].xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.zw = cb0[8].xy * r2.yy;
  r0.zw = cb0[7].xy * r2.xx + r0.zw;
  r0.zw = cb0[9].xy * r2.ww + r0.zw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r1.y = dot(r2.xyw, r2.xyw);
  r1.y = sqrt(r1.y);
  r1.x = -r1.w * r1.x + r1.y;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r0.zw = cb0[10].xy + r0.zw;
  r2.xyzw = t1.SampleBias(s1_s, r0.zw, -8).xyzw;
  r0.z = saturate(r2.w);
  r0.x = r2.w * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r0.y * r0.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: ef9d4895318f3476
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.yz = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
  r0.yz = r0.yz * cb0[11].xy + cb0[11].zw;
  r2.xyzw = t3.Sample(s4_s, r0.yz).xyzw;
  r0.y = cb1[7].x * r1.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = cb1[5].z / v2.z;
  r1.xyz = v2.xyz * r0.zzz;
  r1.xyw = r1.xyz * r0.yyy;
  r3.xyz = cb2[19].xyz * r1.yyy;
  r3.xyz = cb2[18].xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[20].xyz * r1.www + r3.xyz;
  r3.xyz = cb2[21].xyz + r3.xyz;
  r4.xyzw = cb3[9].xyzw * r3.yyyy;
  r4.xyzw = cb3[8].xyzw * r3.xxxx + r4.xyzw;
  r4.xyzw = cb3[10].xyzw * r3.zzzz + r4.xyzw;
  r4.xyzw = cb3[11].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r0.z = t4.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r0.x = r0.z * r0.x + cb3[24].x;
  r4.xyz = -cb3[25].xyz + r3.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = sqrt(r0.z);
  r0.y = -r1.z * r0.y + r0.z;
  r0.y = cb3[25].w * r0.y + r1.w;
  r0.z = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.y = r0.y * cb0[6].z + cb0[6].w;
  r0.y = saturate(1 + -r0.y);
  r0.x = saturate(r0.x + r0.z);
  r1.xyz = cb0[8].xyw * r3.yyy;
  r1.xyz = cb0[7].xyw * r3.xxx + r1.xyz;
  r1.xyz = cb0[9].xyw * r3.zzz + r1.xyz;
  r1.xyz = cb0[10].xyw + r1.xyz;
  r0.zw = r1.xy / r1.zz;
  r1.x = cmp(r1.z < 0);
  r1.x = r1.x ? 1.000000 : 0;
  r4.xyzw = t1.SampleBias(s2_s, r0.zw, -8).xyzw;
  r0.z = r4.w * r1.x;
  r1.xyz = cb0[4].xyz + -r3.xyz;
  r3.xyz = -cb1[4].xyz + r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r4.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r0.z = r4.x * r0.z;
  r0.x = r0.z * r0.x;
  r0.z = saturate(r0.x);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r2.w;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = dot(r3.xyz, r2.xyz);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = max(0, r1.x);
  r0.x = r1.x * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.z;
  r0.xyzw = r2.xyzw * r0.yyyy;
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
"// hash: 90c797739cfe3b0e
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
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
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = -r3.xyz * r0.yyy + -cb0[3].xyz;
  r1.z = dot(r0.yzw, r0.yzw);
  r1.z = rsqrt(r1.z);
  r0.yzw = r1.zzz * r0.yzw;
  r1.zw = r1.xy * cb0[11].xy + cb0[11].zw;
  r2.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r1.xyzw = t2.Sample(s2_s, r1.zw).xyzw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = 128 * r1.w;
  r2.y = dot(r1.xyz, r1.xyz);
  r2.y = rsqrt(r2.y);
  r1.xyz = r2.yyy * r1.xyz;
  r0.y = dot(r0.yzw, r1.xyz);
  r0.z = dot(-cb0[3].xyz, r1.xyz);
  r0.yz = max(float2(0,0), r0.yz);
  r0.y = log2(r0.y);
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.w = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.x = r0.x * cb0[6].z + cb0[6].w;
  r0.x = saturate(1 + -r0.x);
  r0.w = saturate(r2.x + r0.w);
  r0.yz = r0.yz * r0.ww;
  r1.xyz = cb0[5].xyz * r0.zzz;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r1.w = r0.y * r0.z;
  r0.xyzw = r1.xyzw * r0.xxxx;
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
"// hash: 4cdadd19a931ff1e
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
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
  r0.y = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.x = r0.x * cb0[6].z + cb0[6].w;
  r0.x = saturate(1 + -r0.x);
  r3.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r0.zw = r1.xy * cb0[11].xy + cb0[11].zw;
  r1.xyzw = t3.Sample(s3_s, r0.zw).xyzw;
  r0.y = saturate(r3.x + r0.y);
  r0.zw = cb0[8].xy * r2.yy;
  r0.zw = cb0[7].xy * r2.xx + r0.zw;
  r0.zw = cb0[9].xy * r2.ww + r0.zw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.zw = cb0[10].xy + r0.zw;
  r3.xyzw = t2.SampleBias(s1_s, r0.zw, -8).xyzw;
  r0.y = r3.w * r0.y;
  r0.z = saturate(r0.y);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r1.w;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = dot(r2.xyz, r1.xyz);
  r1.x = dot(-cb0[3].xyz, r1.xyz);
  r1.x = max(0, r1.x);
  r0.y = r1.x * r0.y;
  r2.xyz = cb0[5].xyz * r0.yyy;
  r0.y = max(0, r1.w);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.y * r0.z;
  r0.xyzw = r2.xyzw * r0.xxxx;
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
"// hash: 971d9332a41ccc1b
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r1.z = dot(r2.xyw, r2.xyw);
  r1.z = sqrt(r1.z);
  r1.x = -r1.w * r1.x + r1.z;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.z);
  r2.xyz = r4.xyz * r1.www;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.xyz = -r3.xyz * r1.yyy + -r2.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-r2.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.z = sqrt(r1.z);
  r0.w = cb0[4].w * r1.z;
  r2.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.z = cb3[1].w * r0.z;
  r0.z = 0.970000029 * r0.z;
  r0.z = cmp(r4.x < r0.z);
  r0.z = r0.z ? cb4[24].x : 1;
  r0.z = r2.x * r0.z;
  r0.w = saturate(r0.z);
  r0.x = r0.x * r0.z;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r0.y * r0.w;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 389a032ed6c625ac
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

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t4.Sample(s4_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = cb0[8].xyz * r2.yyy;
  r3.xyz = cb0[7].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r2.www + r3.xyz;
  r3.xyz = cb0[10].xyz + r3.xyz;
  r3.xyzw = t3.SampleBias(s2_s, r3.xyz, -8).xyzw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r1.z = cmp(r4.x < r1.z);
  r1.z = r1.z ? cb4[24].x : 1;
  r4.x = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r4.xx).xyzw;
  r1.y = r4.x * r1.z;
  r1.y = r1.y * r3.w;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 384c71970e141255
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[16];
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

  r0.x = 1 + -cb3[24].x;
  r0.yz = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
  r0.yz = r0.yz * cb0[15].xy + cb0[15].zw;
  r2.xyzw = t3.Sample(s4_s, r0.yz).xyzw;
  r0.y = cb1[7].x * r1.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = cb1[5].z / v2.z;
  r1.xyz = v2.xyz * r0.zzz;
  r1.xyw = r1.xyz * r0.yyy;
  r3.xyz = cb2[19].xyz * r1.yyy;
  r3.xyz = cb2[18].xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[20].xyz * r1.www + r3.xyz;
  r3.xyz = cb2[21].xyz + r3.xyz;
  r4.xyzw = cb3[9].xyzw * r3.yyyy;
  r4.xyzw = cb3[8].xyzw * r3.xxxx + r4.xyzw;
  r4.xyzw = cb3[10].xyzw * r3.zzzz + r4.xyzw;
  r4.xyzw = cb3[11].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r5.xyz = cb0[11].xyz + r4.xyz;
  r5.x = t4.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r6.xyz = cb0[12].xyz + r4.xyz;
  r5.y = t4.SampleCmpLevelZero(s3_s, r6.xy, r6.z).x;
  r6.xyz = cb0[13].xyz + r4.xyz;
  r4.xyz = cb0[14].xyz + r4.xyz;
  r5.w = t4.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r5.z = t4.SampleCmpLevelZero(s3_s, r6.xy, r6.z).x;
  r4.xyzw = r5.xyzw * r0.xxxx + cb3[24].xxxx;
  r0.x = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r4.xyz = -cb3[25].xyz + r3.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = sqrt(r0.z);
  r0.y = -r1.z * r0.y + r0.z;
  r0.y = cb3[25].w * r0.y + r1.w;
  r0.z = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.y = r0.y * cb0[6].z + cb0[6].w;
  r0.y = saturate(1 + -r0.y);
  r0.x = saturate(r0.x + r0.z);
  r1.xyz = cb0[8].xyw * r3.yyy;
  r1.xyz = cb0[7].xyw * r3.xxx + r1.xyz;
  r1.xyz = cb0[9].xyw * r3.zzz + r1.xyz;
  r1.xyz = cb0[10].xyw + r1.xyz;
  r0.zw = r1.xy / r1.zz;
  r1.x = cmp(r1.z < 0);
  r1.x = r1.x ? 1.000000 : 0;
  r4.xyzw = t1.SampleBias(s2_s, r0.zw, -8).xyzw;
  r0.z = r4.w * r1.x;
  r1.xyz = cb0[4].xyz + -r3.xyz;
  r3.xyz = -cb1[4].xyz + r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r4.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r0.z = r4.x * r0.z;
  r0.x = r0.z * r0.x;
  r0.z = saturate(r0.x);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r2.w;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = dot(r3.xyz, r2.xyz);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = max(0, r1.x);
  r0.x = r1.x * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.z;
  r0.xyzw = r2.xyzw * r0.yyyy;
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
"// hash: 1fb1a1aeffe91a95
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) + r3.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r5.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.y = r5.x;
  r5.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.z = r5.x;
  r5.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.w = r5.x;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r4.xyzw = cmp(r4.xyzw < r1.zzzz);
  r4.xyzw = r4.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.w = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r3.ww).xyzw;
  r1.y = r4.x * r1.z;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 7203ec40b19e122a
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

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t4.Sample(s4_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) + r3.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r5.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.y = r5.x;
  r5.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.z = r5.x;
  r5.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.w = r5.x;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r4.xyzw = cmp(r4.xyzw < r1.zzzz);
  r4.xyzw = r4.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.w = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r3.ww).xyzw;
  r1.y = r4.x * r1.z;
  r4.xyz = cb0[8].xyz * r2.yyy;
  r4.xyz = cb0[7].xyz * r2.xxx + r4.xyz;
  r4.xyz = cb0[9].xyz * r2.www + r4.xyz;
  r4.xyz = cb0[10].xyz + r4.xyz;
  r4.xyzw = t3.SampleBias(s2_s, r4.xyz, -8).xyzw;
  r1.y = r4.w * r1.y;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  r0.xyzw = r2.xyzw * r1.xxxx;
  o0.xyzw = exp2(-r0.xyzw);
  return;
}"
}
}
}
 Pass {
  Tags { "SHADOWSUPPORT" = "true" }
  Blend One One, One One
  ZClip Off
  ZWrite Off
  GpuProgramID 86331
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
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "POINT" }
"// hash: b167fe30a699e3e7
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t2.Sample(s2_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r1.z = dot(r2.xyw, r2.xyw);
  r1.z = sqrt(r1.z);
  r1.x = -r1.w * r1.x + r1.z;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r2.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r2.yzw = r4.xyz * r1.www;
  r1.yzw = -r3.xyz * r1.yyy + -r2.yzw;
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = rsqrt(r3.x);
  r1.yzw = r3.xxx * r1.yzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r3.x = dot(r0.xyz, r0.xyz);
  r3.x = rsqrt(r3.x);
  r0.xyz = r3.xxx * r0.xyz;
  r1.y = dot(r1.yzw, r0.xyz);
  r0.x = dot(-r2.yzw, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r2.x;
  r2.x = saturate(r2.x);
  r3.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.y);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r2.x;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r3.w = r0.x * r0.y;
  o0.xyzw = r3.xyzw * r1.xxxx;
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
"// hash: 18c036b039b2289c
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb3[25].xyz + r2.xyw;
  r2.xyw = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = sqrt(r1.y);
  r1.x = -r1.w * r1.x + r1.y;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.y = dot(r2.xyw, r2.xyw);
  r1.y = rsqrt(r1.y);
  r1.yzw = -r2.xyw * r1.yyy + -cb0[3].xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r1.y = dot(r1.yzw, r0.xyz);
  r0.x = dot(-cb0[3].xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.y);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: eccf359a6bae36c1
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = cb0[4].xyz + -r2.xyw;
  r1.z = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r5.xyzw = t2.Sample(s1_s, r1.zz).xyzw;
  r4.xyz = r4.xyz * r3.www;
  r3.xyz = -r3.xyz * r1.yyy + r4.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(r4.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r3.xyz = cb0[8].xyw * r2.yyy;
  r3.xyz = cb0[7].xyw * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyw * r2.www + r3.xyz;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.z = dot(r2.xyw, r2.xyw);
  r0.z = sqrt(r0.z);
  r0.z = -r1.w * r1.x + r0.z;
  r0.z = cb3[25].w * r0.z + r2.z;
  r0.z = r0.z * cb0[6].z + cb0[6].w;
  r0.z = saturate(1 + -r0.z);
  r1.xyz = cb0[10].xyw + r3.xyz;
  r1.xy = r1.xy / r1.zz;
  r0.w = cmp(r1.z < 0);
  r0.w = r0.w ? 1.000000 : 0;
  r1.xyzw = t1.SampleBias(s2_s, r1.xy, -8).xyzw;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * r5.x;
  r1.x = saturate(r0.w);
  r0.x = r0.x * r0.w;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r1.x * r0.y;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r0.zzzz;
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
"// hash: a23977d95b7a90bf
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r1.z = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r1.z);
  r1.z = cb0[4].w * r1.z;
  r5.xyzw = t1.Sample(s1_s, r1.zz).xyzw;
  r4.xyz = r4.xyz * r3.www;
  r3.xyz = -r3.xyz * r1.yyy + -r4.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-r4.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r3.xyz = cb0[8].xyz * r2.yyy;
  r3.xyz = cb0[7].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r2.www + r3.xyz;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r0.z = dot(r2.xyw, r2.xyw);
  r0.z = sqrt(r0.z);
  r0.z = -r1.w * r1.x + r0.z;
  r0.z = cb3[25].w * r0.z + r2.z;
  r0.z = r0.z * cb0[6].z + cb0[6].w;
  r0.z = saturate(1 + -r0.z);
  r1.xyz = cb0[10].xyz + r3.xyz;
  r1.xyzw = t2.SampleBias(s2_s, r1.xyz, -8).xyzw;
  r0.w = r5.x * r1.w;
  r1.x = saturate(r0.w);
  r0.x = r0.x * r0.w;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r1.x * r0.y;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r0.zzzz;
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
"// hash: 9b0a201ef71e0dae
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t2.Sample(s2_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = -r3.xyz * r1.yyy + -cb0[3].xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-cb0[3].xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.zw = cb0[8].xy * r2.yy;
  r0.zw = cb0[7].xy * r2.xx + r0.zw;
  r0.zw = cb0[9].xy * r2.ww + r0.zw;
  r2.xyw = -cb3[25].xyz + r2.xyw;
  r1.y = dot(r2.xyw, r2.xyw);
  r1.y = sqrt(r1.y);
  r1.x = -r1.w * r1.x + r1.y;
  r1.x = cb3[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r0.zw = cb0[10].xy + r0.zw;
  r2.xyzw = t1.SampleBias(s1_s, r0.zw, -8).xyzw;
  r0.z = saturate(r2.w);
  r0.x = r2.w * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r0.y * r0.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 7377e0b3833b945e
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + -cb3[24].x;
  r0.yz = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
  r0.yz = r0.yz * cb0[11].xy + cb0[11].zw;
  r2.xyzw = t3.Sample(s4_s, r0.yz).xyzw;
  r0.y = cb1[7].x * r1.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = cb1[5].z / v2.z;
  r1.xyz = v2.xyz * r0.zzz;
  r1.xyw = r1.xyz * r0.yyy;
  r3.xyz = cb2[19].xyz * r1.yyy;
  r3.xyz = cb2[18].xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[20].xyz * r1.www + r3.xyz;
  r3.xyz = cb2[21].xyz + r3.xyz;
  r4.xyzw = cb3[9].xyzw * r3.yyyy;
  r4.xyzw = cb3[8].xyzw * r3.xxxx + r4.xyzw;
  r4.xyzw = cb3[10].xyzw * r3.zzzz + r4.xyzw;
  r4.xyzw = cb3[11].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r0.z = t4.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r0.x = r0.z * r0.x + cb3[24].x;
  r4.xyz = -cb3[25].xyz + r3.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = sqrt(r0.z);
  r0.y = -r1.z * r0.y + r0.z;
  r0.y = cb3[25].w * r0.y + r1.w;
  r0.z = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.y = r0.y * cb0[6].z + cb0[6].w;
  r0.y = saturate(1 + -r0.y);
  r0.x = saturate(r0.x + r0.z);
  r1.xyz = cb0[8].xyw * r3.yyy;
  r1.xyz = cb0[7].xyw * r3.xxx + r1.xyz;
  r1.xyz = cb0[9].xyw * r3.zzz + r1.xyz;
  r1.xyz = cb0[10].xyw + r1.xyz;
  r0.zw = r1.xy / r1.zz;
  r1.x = cmp(r1.z < 0);
  r1.x = r1.x ? 1.000000 : 0;
  r4.xyzw = t1.SampleBias(s2_s, r0.zw, -8).xyzw;
  r0.z = r4.w * r1.x;
  r1.xyz = cb0[4].xyz + -r3.xyz;
  r3.xyz = -cb1[4].xyz + r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r4.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r0.z = r4.x * r0.z;
  r0.x = r0.z * r0.x;
  r0.z = saturate(r0.x);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r2.w;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = dot(r3.xyz, r2.xyz);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = max(0, r1.x);
  r0.x = r1.x * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.z;
  o0.xyzw = r2.xyzw * r0.yyyy;
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
"// hash: 315de40b7c80c354
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
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
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = -r3.xyz * r0.yyy + -cb0[3].xyz;
  r1.z = dot(r0.yzw, r0.yzw);
  r1.z = rsqrt(r1.z);
  r0.yzw = r1.zzz * r0.yzw;
  r1.zw = r1.xy * cb0[11].xy + cb0[11].zw;
  r2.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r1.xyzw = t2.Sample(s2_s, r1.zw).xyzw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = 128 * r1.w;
  r2.y = dot(r1.xyz, r1.xyz);
  r2.y = rsqrt(r2.y);
  r1.xyz = r2.yyy * r1.xyz;
  r0.y = dot(r0.yzw, r1.xyz);
  r0.z = dot(-cb0[3].xyz, r1.xyz);
  r0.yz = max(float2(0,0), r0.yz);
  r0.y = log2(r0.y);
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.w = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.x = r0.x * cb0[6].z + cb0[6].w;
  r0.x = saturate(1 + -r0.x);
  r0.w = saturate(r2.x + r0.w);
  r0.yz = r0.yz * r0.ww;
  r1.xyz = cb0[5].xyz * r0.zzz;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r1.w = r0.y * r0.z;
  o0.xyzw = r1.xyzw * r0.xxxx;
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
"// hash: 66ef175b4351c298
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
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
  r0.y = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.x = r0.x * cb0[6].z + cb0[6].w;
  r0.x = saturate(1 + -r0.x);
  r3.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r0.zw = r1.xy * cb0[11].xy + cb0[11].zw;
  r1.xyzw = t3.Sample(s3_s, r0.zw).xyzw;
  r0.y = saturate(r3.x + r0.y);
  r0.zw = cb0[8].xy * r2.yy;
  r0.zw = cb0[7].xy * r2.xx + r0.zw;
  r0.zw = cb0[9].xy * r2.ww + r0.zw;
  r2.xyz = -cb1[4].xyz + r2.xyw;
  r0.zw = cb0[10].xy + r0.zw;
  r3.xyzw = t2.SampleBias(s1_s, r0.zw, -8).xyzw;
  r0.y = r3.w * r0.y;
  r0.z = saturate(r0.y);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www + -cb0[3].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r1.w;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = dot(r2.xyz, r1.xyz);
  r1.x = dot(-cb0[3].xyz, r1.xyz);
  r1.x = max(0, r1.x);
  r0.y = r1.x * r0.y;
  r2.xyz = cb0[5].xyz * r0.yyy;
  r0.y = max(0, r1.w);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.y * r0.z;
  o0.xyzw = r2.xyzw * r0.xxxx;
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
"// hash: b020a590e63b8309
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb1[4].xyz + r2.xyw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -cb0[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r1.z = dot(r2.xyw, r2.xyw);
  r1.z = sqrt(r1.z);
  r1.x = -r1.w * r1.x + r1.z;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.z);
  r2.xyz = r4.xyz * r1.www;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r3.xyz = -r3.xyz * r1.yyy + -r2.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = dot(r3.xyz, r0.xyz);
  r0.x = dot(-r2.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.y = max(0, r1.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.z = sqrt(r1.z);
  r0.w = cb0[4].w * r1.z;
  r2.xyzw = t1.Sample(s1_s, r0.ww).xyzw;
  r0.z = cb3[1].w * r0.z;
  r0.z = 0.970000029 * r0.z;
  r0.z = cmp(r4.x < r0.z);
  r0.z = r0.z ? cb4[24].x : 1;
  r0.z = r2.x * r0.z;
  r0.w = saturate(r0.z);
  r0.x = r0.x * r0.z;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = r0.y * r0.w;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: cbacb245c7c66cf8
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

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t4.Sample(s4_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = cb0[8].xyz * r2.yyy;
  r3.xyz = cb0[7].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb0[9].xyz * r2.www + r3.xyz;
  r3.xyz = cb0[10].xyz + r3.xyz;
  r3.xyzw = t3.SampleBias(s2_s, r3.xyz, -8).xyzw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyzw = t2.Sample(s3_s, r3.xyz).xyzw;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r1.z = cmp(r4.x < r1.z);
  r1.z = r1.z ? cb4[24].x : 1;
  r4.x = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r4.xx).xyzw;
  r1.y = r4.x * r1.z;
  r1.y = r1.y * r3.w;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 9ec197e9881c98b1
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[16];
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

  r0.x = 1 + -cb3[24].x;
  r0.yz = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
  r0.yz = r0.yz * cb0[15].xy + cb0[15].zw;
  r2.xyzw = t3.Sample(s4_s, r0.yz).xyzw;
  r0.y = cb1[7].x * r1.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = cb1[5].z / v2.z;
  r1.xyz = v2.xyz * r0.zzz;
  r1.xyw = r1.xyz * r0.yyy;
  r3.xyz = cb2[19].xyz * r1.yyy;
  r3.xyz = cb2[18].xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[20].xyz * r1.www + r3.xyz;
  r3.xyz = cb2[21].xyz + r3.xyz;
  r4.xyzw = cb3[9].xyzw * r3.yyyy;
  r4.xyzw = cb3[8].xyzw * r3.xxxx + r4.xyzw;
  r4.xyzw = cb3[10].xyzw * r3.zzzz + r4.xyzw;
  r4.xyzw = cb3[11].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r5.xyz = cb0[11].xyz + r4.xyz;
  r5.x = t4.SampleCmpLevelZero(s3_s, r5.xy, r5.z).x;
  r6.xyz = cb0[12].xyz + r4.xyz;
  r5.y = t4.SampleCmpLevelZero(s3_s, r6.xy, r6.z).x;
  r6.xyz = cb0[13].xyz + r4.xyz;
  r4.xyz = cb0[14].xyz + r4.xyz;
  r5.w = t4.SampleCmpLevelZero(s3_s, r4.xy, r4.z).x;
  r5.z = t4.SampleCmpLevelZero(s3_s, r6.xy, r6.z).x;
  r4.xyzw = r5.xyzw * r0.xxxx + cb3[24].xxxx;
  r0.x = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r4.xyz = -cb3[25].xyz + r3.xyz;
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = sqrt(r0.z);
  r0.y = -r1.z * r0.y + r0.z;
  r0.y = cb3[25].w * r0.y + r1.w;
  r0.z = saturate(r0.y * cb3[24].z + cb3[24].w);
  r0.y = r0.y * cb0[6].z + cb0[6].w;
  r0.y = saturate(1 + -r0.y);
  r0.x = saturate(r0.x + r0.z);
  r1.xyz = cb0[8].xyw * r3.yyy;
  r1.xyz = cb0[7].xyw * r3.xxx + r1.xyz;
  r1.xyz = cb0[9].xyw * r3.zzz + r1.xyz;
  r1.xyz = cb0[10].xyw + r1.xyz;
  r0.zw = r1.xy / r1.zz;
  r1.x = cmp(r1.z < 0);
  r1.x = r1.x ? 1.000000 : 0;
  r4.xyzw = t1.SampleBias(s2_s, r0.zw, -8).xyzw;
  r0.z = r4.w * r1.x;
  r1.xyz = cb0[4].xyz + -r3.xyz;
  r3.xyz = -cb1[4].xyz + r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = cb0[4].w * r0.w;
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r4.xyzw = t2.Sample(s1_s, r1.ww).xyzw;
  r0.z = r4.x * r0.z;
  r0.x = r0.z * r0.x;
  r0.z = saturate(r0.x);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r2.w;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = dot(r3.xyz, r2.xyz);
  r1.x = dot(r1.xyz, r2.xyz);
  r1.x = max(0, r1.x);
  r0.x = r1.x * r0.x;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r0.z;
  r0.z = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.z;
  o0.xyzw = r2.xyzw * r0.yyyy;
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
"// hash: d624ed6097f5fcc0
Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) + r3.xyz;
  r4.xyzw = t2.Sample(s2_s, r4.xyz).xyzw;
  r5.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.y = r5.x;
  r5.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.z = r5.x;
  r5.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s2_s, r5.xyz).xyzw;
  r4.w = r5.x;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r4.xyzw = cmp(r4.xyzw < r1.zzzz);
  r4.xyzw = r4.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.w = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r3.ww).xyzw;
  r1.y = r4.x * r1.z;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
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
"// hash: 2d66c26d846db612
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

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
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
  float4 cb0[12];
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

  r0.xy = v1.xy / v1.ww;
  r1.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xyzw = t4.Sample(s4_s, r0.xy).xyzw;
  r1.x = cb1[7].x * r1.x + cb1[7].y;
  r1.x = 1 / r1.x;
  r1.y = cb1[5].z / v2.z;
  r1.yzw = v2.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r3.xyz = cb2[19].xyz * r2.yyy;
  r2.xyw = cb2[18].xyz * r2.xxx + r3.xyz;
  r2.xyw = cb2[20].xyz * r2.zzz + r2.xyw;
  r2.xyw = cb2[21].xyz + r2.xyw;
  r3.xyz = -cb0[4].xyz + r2.xyw;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) + r3.xyz;
  r4.xyzw = t2.Sample(s3_s, r4.xyz).xyzw;
  r5.xyz = float3(-0.0078125,-0.0078125,0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.y = r5.x;
  r5.xyz = float3(-0.0078125,0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.z = r5.x;
  r5.xyz = float3(0.0078125,-0.0078125,-0.0078125) + r3.xyz;
  r5.xyzw = t2.Sample(s3_s, r5.xyz).xyzw;
  r4.w = r5.x;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r1.y);
  r1.z = cb3[1].w * r1.z;
  r1.z = 0.970000029 * r1.z;
  r4.xyzw = cmp(r4.xyzw < r1.zzzz);
  r4.xyzw = r4.xyzw ? cb4[24].xxxx : float4(1,1,1,1);
  r1.z = dot(r4.xyzw, float4(0.25,0.25,0.25,0.25));
  r3.w = cb0[4].w * r1.y;
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy;
  r4.xyzw = t1.Sample(s1_s, r3.ww).xyzw;
  r1.y = r4.x * r1.z;
  r4.xyz = cb0[8].xyz * r2.yyy;
  r4.xyz = cb0[7].xyz * r2.xxx + r4.xyz;
  r4.xyz = cb0[9].xyz * r2.www + r4.xyz;
  r4.xyz = cb0[10].xyz + r4.xyz;
  r4.xyzw = t3.SampleBias(s2_s, r4.xyz, -8).xyzw;
  r1.y = r4.w * r1.y;
  r1.z = saturate(r1.y);
  r4.xyz = -cb1[4].xyz + r2.xyw;
  r2.xyw = -cb4[25].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r1.x = -r1.w * r1.x + r2.x;
  r1.x = cb4[25].w * r1.x + r2.z;
  r1.x = r1.x * cb0[6].z + cb0[6].w;
  r1.x = saturate(1 + -r1.x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r4.xyz * r1.www + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 128 * r0.w;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(-r3.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = r0.x * r1.y;
  r2.xyz = cb0[5].xyz * r0.xxx;
  r0.x = max(0, r1.w);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * r1.z;
  r0.y = dot(cb0[5].xyz, float3(0.0396819152,0.45802179,0.00609653955));
  r2.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw * r1.xxxx;
  return;
}"
}
}
}
}
}