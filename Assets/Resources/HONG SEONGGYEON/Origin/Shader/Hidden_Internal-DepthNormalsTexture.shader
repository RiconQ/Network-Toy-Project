//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-DepthNormalsTexture" {
Properties {
_MainTex ("", 2D) = "white" { }
_Cutoff ("", Float) = 0.5
_Color ("", Color) = (1,1,1,1)
}
SubShader {
 Tags { "RenderType" = "Opaque" }
 Pass {
  Tags { "RenderType" = "Opaque" }
  ZClip Off
  GpuProgramID 14949
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 92046c024f9e6f5f
cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  r0.x = cb1[5].z * v0.y;
  r0.x = cb1[4].z * v0.x + r0.x;
  r0.x = cb1[6].z * v0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o1.w = -r0.x;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: f6f2d872cdb3194e
cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  r0.x = cb1[5].z * v0.y;
  r0.x = cb1[4].z * v0.x + r0.x;
  r0.x = cb1[6].z * v0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o1.w = -r0.x;
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
"// hash: 60fe34f3b8743388



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v1.z;
  r0.xy = v1.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v1.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 58fc5ce26885f338



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v1.z;
  r0.xy = v1.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v1.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "TransparentCutout" }
 Pass {
  Tags { "RenderType" = "TransparentCutout" }
  ZClip Off
  GpuProgramID 108096
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: e99565733d8c1105
cbuffer cb2 : register(b2)
{
  float4 cb2[11];
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
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v2.xy * cb0[2].xy + cb0[2].zw;
  r0.xyz = cb2[9].xyz * v1.yyy;
  r0.xyz = cb2[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb2[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.x = cb2[5].z * v0.y;
  r0.x = cb2[4].z * v0.x + r0.x;
  r0.x = cb2[6].z * v0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 4817cc85d0a6d683
cbuffer cb2 : register(b2)
{
  float4 cb2[11];
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
  float4 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb2[3].xyzw + r0.xyzw;
  o1.xy = v2.xy * cb0[2].xy + cb0[2].zw;
  r0.xyz = cb2[9].xyz * v1.yyy;
  r0.xyz = cb2[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb2[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  r0.x = cb2[5].z * v0.y;
  r0.x = cb2[4].z * v0.x + r0.x;
  r0.x = cb2[6].z * v0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
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
"// hash: e8780e7ffb7de98c
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
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = r0.w * cb0[4].w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8a8537d855a91dc
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
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = r0.w * cb0[4].w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "TreeBark" }
 Pass {
  Tags { "RenderType" = "TreeBark" }
  ZClip Off
  GpuProgramID 191435
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: eb79dc5995a461d7
cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

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
  float4 cb0[5];
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
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(cb2[15].xyz, float3(1,1,1));
  r0.y = v7.x + r0.x;
  r0.z = v7.y + r0.y;
  r1.xyz = cb3[6].xyz * v0.xyz;
  r0.x = dot(r1.xyz, r0.zzz);
  r0.xyzw = cb1[0].yyyy + r0.xxyy;
  r0.xyzw = float4(1.97500002,0.792999983,0.375,0.193000004) * r0.xyzw;
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-0.5,-0.5,-0.5,-0.5);
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.xyzw = abs(r0.xyzw) * abs(r0.xyzw);
  r0.xyzw = -abs(r0.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
  r0.xyzw = r2.xyzw * r0.xyzw;
  r0.xy = r0.xz + r0.yw;
  r2.xyz = cb0[4].xyz * r0.yyy;
  r2.xyz = v4.yyy * r2.xyz;
  r3.y = v4.y * r0.y;
  r0.y = 0.100000001 * v7.y;
  r3.xz = v2.xz * r0.yy;
  r0.z = 0.300000012;
  r0.xyz = r0.xzx * r3.xyz + r2.xyz;
  r0.xyz = r0.xyz * cb0[4].www + r1.xyz;
  r0.xyz = v4.xxx * cb0[4].xyz + r0.xyz;
  r0.w = dot(cb3[11].xyz, r0.xyz);
  r0.w = cb3[11].w + r0.w;
  r1.xyz = -r0.www * cb3[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb3[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb2[1].xyzw * r0.yyyy;
  r1.xyzw = cb2[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb2[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb2[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb2[5].z * r0.y;
  r0.x = cb2[4].z * r0.x + r0.y;
  r0.x = cb2[6].z * r0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.xyz = cb2[9].xyz * r0.yyy;
  r0.xyw = cb2[8].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[10].xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: fbc746ca72699384
cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

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
  float4 cb0[5];
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
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(cb2[15].xyz, float3(1,1,1));
  r0.y = v7.x + r0.x;
  r0.z = v7.y + r0.y;
  r1.xyz = cb3[6].xyz * v0.xyz;
  r0.x = dot(r1.xyz, r0.zzz);
  r0.xyzw = cb1[0].yyyy + r0.xxyy;
  r0.xyzw = float4(1.97500002,0.792999983,0.375,0.193000004) * r0.xyzw;
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-0.5,-0.5,-0.5,-0.5);
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.xyzw = abs(r0.xyzw) * abs(r0.xyzw);
  r0.xyzw = -abs(r0.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
  r0.xyzw = r2.xyzw * r0.xyzw;
  r0.xy = r0.xz + r0.yw;
  r2.xyz = cb0[4].xyz * r0.yyy;
  r2.xyz = v4.yyy * r2.xyz;
  r3.y = v4.y * r0.y;
  r0.y = 0.100000001 * v7.y;
  r3.xz = v2.xz * r0.yy;
  r0.z = 0.300000012;
  r0.xyz = r0.xzx * r3.xyz + r2.xyz;
  r0.xyz = r0.xyz * cb0[4].www + r1.xyz;
  r0.xyz = v4.xxx * cb0[4].xyz + r0.xyz;
  r0.w = dot(cb3[11].xyz, r0.xyz);
  r0.w = cb3[11].w + r0.w;
  r1.xyz = -r0.www * cb3[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb3[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb2[1].xyzw * r0.yyyy;
  r1.xyzw = cb2[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb2[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb2[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb2[5].z * r0.y;
  r0.x = cb2[4].z * r0.x + r0.y;
  r0.x = cb2[6].z * r0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v2.xyz * r0.xxx;
  r1.xyz = cb2[9].xyz * r0.yyy;
  r0.xyw = cb2[8].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[10].xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
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
"// hash: a54f34dd58d03f32



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 92703f1d25ad333d



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "TreeLeaf" }
 Pass {
  Tags { "RenderType" = "TreeLeaf" }
  ZClip Off
  GpuProgramID 203420
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: d5352a0c51c2f6b
cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

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
  float4 cb0[5];
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
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xy, cb2[8].xy);
  r0.y = dot(v2.xy, cb2[9].xy);
  r0.z = dot(v2.xy, cb2[10].xy);
  r0.w = 1 + -abs(v1.w);
  r0.xyz = r0.xyz * r0.www + v0.xyz;
  r0.xyz = cb3[6].xyz * r0.xyz;
  r1.x = dot(cb2[15].xyz, float3(1,1,1));
  r1.y = v7.x + r1.x;
  r1.z = v7.y + r1.y;
  r1.x = dot(r0.xyz, r1.zzz);
  r1.xyzw = cb1[0].yyyy + r1.xxyy;
  r1.xyzw = float4(1.97500002,0.792999983,0.375,0.193000004) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-0.5,-0.5,-0.5,-0.5);
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.xyzw = abs(r1.xyzw) * abs(r1.xyzw);
  r1.xyzw = -abs(r1.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r1.xy = r1.xz + r1.yw;
  r2.xyz = cb0[4].xyz * r1.yyy;
  r2.xyz = v4.yyy * r2.xyz;
  r3.y = v4.y * r1.y;
  r4.w = dot(v2.xyz, cb2[11].xyz);
  r4.x = dot(v2.xyz, cb2[8].xyz);
  r4.y = dot(v2.xyz, cb2[9].xyz);
  r4.z = dot(v2.xyz, cb2[10].xyz);
  r1.y = dot(r4.xyzw, r4.xyzw);
  r1.y = rsqrt(r1.y);
  r4.xyz = r4.xyz * r1.yyy + -v2.xyz;
  r4.xyz = r0.www * r4.xyz + v2.xyz;
  r0.w = 0.100000001 * v7.y;
  r3.xz = r0.ww * r4.xz;
  r1.z = 0.300000012;
  r1.xyz = r1.xzx * r3.xyz + r2.xyz;
  r0.xyz = r1.xyz * cb0[4].www + r0.xyz;
  r0.xyz = v4.xxx * cb0[4].xyz + r0.xyz;
  r0.w = dot(cb3[11].xyz, r0.xyz);
  r0.w = cb3[11].w + r0.w;
  r1.xyz = -r0.www * cb3[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb3[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb2[1].xyzw * r0.yyyy;
  r1.xyzw = cb2[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb2[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb2[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r4.xyz * r0.www;
  r2.xyz = cb2[9].xyz * r1.yyy;
  r1.xyw = cb2[8].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[10].xyz * r1.zzz + r1.xyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.y = cb2[5].z * r0.y;
  r0.x = cb2[4].z * r0.x + r0.y;
  r0.x = cb2[6].z * r0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 2e11e8b04f93c9ea
cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

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
  float4 cb0[5];
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
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xy, cb2[8].xy);
  r0.y = dot(v2.xy, cb2[9].xy);
  r0.z = dot(v2.xy, cb2[10].xy);
  r0.w = 1 + -abs(v1.w);
  r0.xyz = r0.xyz * r0.www + v0.xyz;
  r0.xyz = cb3[6].xyz * r0.xyz;
  r1.x = dot(cb2[15].xyz, float3(1,1,1));
  r1.y = v7.x + r1.x;
  r1.z = v7.y + r1.y;
  r1.x = dot(r0.xyz, r1.zzz);
  r1.xyzw = cb1[0].yyyy + r1.xxyy;
  r1.xyzw = float4(1.97500002,0.792999983,0.375,0.193000004) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-0.5,-0.5,-0.5,-0.5);
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.xyzw = abs(r1.xyzw) * abs(r1.xyzw);
  r1.xyzw = -abs(r1.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r1.xy = r1.xz + r1.yw;
  r2.xyz = cb0[4].xyz * r1.yyy;
  r2.xyz = v4.yyy * r2.xyz;
  r3.y = v4.y * r1.y;
  r4.w = dot(v2.xyz, cb2[11].xyz);
  r4.x = dot(v2.xyz, cb2[8].xyz);
  r4.y = dot(v2.xyz, cb2[9].xyz);
  r4.z = dot(v2.xyz, cb2[10].xyz);
  r1.y = dot(r4.xyzw, r4.xyzw);
  r1.y = rsqrt(r1.y);
  r4.xyz = r4.xyz * r1.yyy + -v2.xyz;
  r4.xyz = r0.www * r4.xyz + v2.xyz;
  r0.w = 0.100000001 * v7.y;
  r3.xz = r0.ww * r4.xz;
  r1.z = 0.300000012;
  r1.xyz = r1.xzx * r3.xyz + r2.xyz;
  r0.xyz = r1.xyz * cb0[4].www + r0.xyz;
  r0.xyz = v4.xxx * cb0[4].xyz + r0.xyz;
  r0.w = dot(cb3[11].xyz, r0.xyz);
  r0.w = cb3[11].w + r0.w;
  r1.xyz = -r0.www * cb3[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb3[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb2[1].xyzw * r0.yyyy;
  r1.xyzw = cb2[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb2[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb2[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r4.xyz * r0.www;
  r2.xyz = cb2[9].xyz * r1.yyy;
  r1.xyw = cb2[8].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[10].xyz * r1.zzz + r1.xyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r1.xyz * r0.www;
  r0.y = cb2[5].z * r0.y;
  r0.x = cb2[4].z * r0.x + r0.y;
  r0.x = cb2[6].z * r0.z + r0.x;
  r0.x = cb2[7].z + r0.x;
  r0.x = cb1[5].w * r0.x;
  o2.w = -r0.x;
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
"// hash: 206d094787c06b0f
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[7].y + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 3a1ac3192df9753
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[7].y + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "DisableBatching" = "true" "RenderType" = "TreeOpaque" }
 Pass {
  Tags { "DisableBatching" = "true" "RenderType" = "TreeOpaque" }
  ZClip Off
  GpuProgramID 325870
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: bac1e0a5294097a7
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o1.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: d352470cc14e21ad
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o1.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
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
"// hash: 60fe34f3b8743388



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v1.z;
  r0.xy = v1.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v1.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 58fc5ce26885f338



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 + v1.z;
  r0.xy = v1.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v1.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "DisableBatching" = "true" "RenderType" = "TreeTransparentCutout" }
 Pass {
  Tags { "DisableBatching" = "true" "RenderType" = "TreeTransparentCutout" }
  ZClip Off
  GpuProgramID 370694
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 3ec964e26bdb8b0a
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: ffd686edd3dd3a22
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o2.xyz = r0.xyz * r0.www;
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
"// hash: dd97fcf4ac8181e8
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[3].x + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 4e569e3f5f482670
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[3].x + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
 Pass {
  Tags { "DisableBatching" = "true" "RenderType" = "TreeTransparentCutout" }
  ZClip Off
  Cull Front
  GpuProgramID 443367
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 8e5795e6b888e346
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = -r0.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 11f2f36db558dae9
cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[6].xyz * v0.xyz;
  r1.xyz = cb2[8].xyz * r0.yyy;
  r1.xyz = cb2[7].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[9].xyz * r0.zzz + r1.xyz;
  r1.xyz = -v0.xyz * cb2[6].xyz + r1.xyz;
  r0.xyz = v2.www * r1.xyz + r0.xyz;
  r0.w = dot(cb2[11].xyz, r0.xyz);
  r0.w = cb2[11].w + r0.w;
  r1.xyz = -r0.www * cb2[11].xyz + r0.xyz;
  r0.xyz = -r1.xyz + r0.xyz;
  r0.xyz = cb2[12].xxx * r0.xyz + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  o1.xy = v3.xy;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  r0.xyz = cb1[9].xyz * v1.yyy;
  r0.xyz = cb1[8].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v1.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  o2.xyz = -r0.xyz;
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
"// hash: dd97fcf4ac8181e8
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[3].x + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 4e569e3f5f482670
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -cb0[3].x + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "TreeBillboard" }
 Pass {
  Tags { "RenderType" = "TreeBillboard" }
  ZClip Off
  Cull Off
  GpuProgramID 511096
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 5f6cdc10e56a97e7
cbuffer cb2 : register(b2)
{
  float4 cb2[17];
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -cb2[15].xyz + v0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cmp(cb2[16].x < r0.x);
  r1.xy = v3.xy;
  r1.z = v2.y;
  r0.xyz = r0.xxx ? float3(0,0,0) : r1.xyz;
  r0.z = r0.z + -r0.y;
  r0.y = cb2[15].w * r0.z + r0.y;
  r1.xyz = cb2[12].yzw * r0.xxx + v0.xyz;
  r0.xzw = cb2[14].xyz * abs(r0.xxx);
  r1.xyz = cb2[13].xyz * r0.yyy + r1.xyz;
  r0.xyz = r0.xzw * cb2[13].www + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.w = cmp(0 < v2.y);
  o1.y = r0.w ? 1.000000 : 0;
  o1.x = v2.x;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  o2.xyz = float3(0,0,1);
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: a2a713178f3b9dc0
cbuffer cb2 : register(b2)
{
  float4 cb2[17];
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float2 v3 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float4 o2 : TEXCOORD1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -cb2[15].xyz + v0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cmp(cb2[16].x < r0.x);
  r1.xy = v3.xy;
  r1.z = v2.y;
  r0.xyz = r0.xxx ? float3(0,0,0) : r1.xyz;
  r0.z = r0.z + -r0.y;
  r0.y = cb2[15].w * r0.z + r0.y;
  r1.xyz = cb2[12].yzw * r0.xxx + v0.xyz;
  r0.xzw = cb2[14].xyz * abs(r0.xxx);
  r1.xyz = cb2[13].xyz * r0.yyy + r1.xyz;
  r0.xyz = r0.xzw * cb2[13].www + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.w = cmp(0 < v2.y);
  o1.y = r0.w ? 1.000000 : 0;
  o1.x = v2.x;
  r0.y = cb1[5].z * r0.y;
  r0.x = cb1[4].z * r0.x + r0.y;
  r0.x = cb1[6].z * r0.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o2.w = -r0.x;
  o2.xyz = float3(0,0,1);
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
"// hash: e454bf87739d7de5
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -0.00100000005 + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 34b7a6a048f44f84
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.x = -0.00100000005 + r0.w;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v2.z;
  r0.xy = v2.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v2.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "GrassBillboard" }
 Pass {
  Tags { "RenderType" = "GrassBillboard" }
  ZClip Off
  Cull Off
  GpuProgramID 566126
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: c9de970a94c71b3a
cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -cb2[2].xyz + v0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cmp(cb2[1].w < r0.x);
  r0.xy = r0.xx ? float2(0,0) : v1.xy;
  r0.xzw = r0.xxx * cb2[3].xyz + v0.xyz;
  r0.xyz = r0.yyy * cb2[4].xyz + r0.xzw;
  r1.xy = cb2[1].yy * r0.xz;
  r2.xyzw = float4(0.00600000005,0.0199999996,0.0199999996,0.0500000007) * r1.yyyy;
  r1.xyzw = r1.xxxx * float4(0.0120000001,0.0199999996,0.0599999987,0.0240000002) + r2.xyzw;
  r1.xyzw = cb2[1].xxxx * float4(1.20000005,2,1.60000002,4.80000019) + r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(6.40884876,6.40884876,6.40884876,6.40884876) + float4(-3.14159274,-3.14159274,-3.14159274,-3.14159274);
  r2.xyzw = r1.xyzw * r1.xyzw;
  r3.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = r3.xyzw * float4(-0.161616161,-0.161616161,-0.161616161,-0.161616161) + r1.xyzw;
  r3.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r1.xyzw = r3.xyzw * float4(0.00833330024,0.00833330024,0.00833330024,0.00833330024) + r1.xyzw;
  r1.xyzw = r2.xyzw * float4(-0.000198409994,-0.000198409994,-0.000198409994,-0.000198409994) + r1.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw;
  r2.xyzw = v1.yyyy * r1.xyzw;
  r0.w = dot(r1.xyzw, float4(0.674199879,0.674199879,0.269679934,0.134839967));
  r0.w = 0.699999988 * r0.w;
  r1.x = dot(r2.xyzw, float4(0.0240000002,0.0399999991,-0.119999997,0.0960000008));
  r1.z = dot(r2.xyzw, float4(0.00600000005,0.0199999996,-0.0199999996,0.100000001));
  r0.xz = -r1.xz * cb2[1].zz + r0.xz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r1.x = cb1[5].z * r0.y;
  r1.x = cb1[4].z * r0.x + r1.x;
  r1.x = cb1[6].z * r0.z + r1.x;
  r0.xyz = -cb2[2].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cb2[1].w + -r0.x;
  o1.w = saturate(dot(cb2[2].ww, r0.xx));
  r0.x = cb1[7].z + r1.x;
  r0.x = cb0[5].w * r0.x;
  o3.w = -r0.x;
  r0.xyz = float3(-0.5,-0.5,-0.5) + cb2[0].xyz;
  r0.xyz = r0.www * r0.xyz + float3(0.5,0.5,0.5);
  r0.xyz = r0.xyz + r0.xyz;
  o1.xyz = v7.xyz * r0.xyz;
  o2.xy = v3.xy;
  r0.xyz = cb1[9].xyz * v2.yyy;
  r0.xyz = cb1[8].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v2.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: a95b291ba2e72d00
cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -cb2[2].xyz + v0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cmp(cb2[1].w < r0.x);
  r0.xy = r0.xx ? float2(0,0) : v1.xy;
  r0.xzw = r0.xxx * cb2[3].xyz + v0.xyz;
  r0.xyz = r0.yyy * cb2[4].xyz + r0.xzw;
  r1.xy = cb2[1].yy * r0.xz;
  r2.xyzw = float4(0.00600000005,0.0199999996,0.0199999996,0.0500000007) * r1.yyyy;
  r1.xyzw = r1.xxxx * float4(0.0120000001,0.0199999996,0.0599999987,0.0240000002) + r2.xyzw;
  r1.xyzw = cb2[1].xxxx * float4(1.20000005,2,1.60000002,4.80000019) + r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(6.40884876,6.40884876,6.40884876,6.40884876) + float4(-3.14159274,-3.14159274,-3.14159274,-3.14159274);
  r2.xyzw = r1.xyzw * r1.xyzw;
  r3.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = r3.xyzw * float4(-0.161616161,-0.161616161,-0.161616161,-0.161616161) + r1.xyzw;
  r3.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r1.xyzw = r3.xyzw * float4(0.00833330024,0.00833330024,0.00833330024,0.00833330024) + r1.xyzw;
  r1.xyzw = r2.xyzw * float4(-0.000198409994,-0.000198409994,-0.000198409994,-0.000198409994) + r1.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw;
  r1.xyzw = r1.xyzw * r1.xyzw;
  r2.xyzw = v1.yyyy * r1.xyzw;
  r0.w = dot(r1.xyzw, float4(0.674199879,0.674199879,0.269679934,0.134839967));
  r0.w = 0.699999988 * r0.w;
  r1.x = dot(r2.xyzw, float4(0.0240000002,0.0399999991,-0.119999997,0.0960000008));
  r1.z = dot(r2.xyzw, float4(0.00600000005,0.0199999996,-0.0199999996,0.100000001));
  r0.xz = -r1.xz * cb2[1].zz + r0.xz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = cb1[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[2].xyzw * r0.zzzz + r1.xyzw;
  o0.xyzw = cb1[3].xyzw + r1.xyzw;
  r1.x = cb1[5].z * r0.y;
  r1.x = cb1[4].z * r0.x + r1.x;
  r1.x = cb1[6].z * r0.z + r1.x;
  r0.xyz = -cb2[2].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cb2[1].w + -r0.x;
  o1.w = saturate(dot(cb2[2].ww, r0.xx));
  r0.x = cb1[7].z + r1.x;
  r0.x = cb0[5].w * r0.x;
  o3.w = -r0.x;
  r0.xyz = float3(-0.5,-0.5,-0.5) + cb2[0].xyz;
  r0.xyz = r0.www * r0.xyz + float3(0.5,0.5,0.5);
  r0.xyz = r0.xyz + r0.xyz;
  o1.xyz = v7.xyz * r0.xyz;
  o2.xy = v3.xy;
  r0.xyz = cb1[9].xyz * v2.yyy;
  r0.xyz = cb1[8].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v2.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r0.xyz * r0.www;
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
"// hash: ed5ef82f90d21ada
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.x = r0.w * v1.w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v3.z;
  r0.xy = v3.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v3.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: c2df5a9afb153aa3
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.x = r0.w * v1.w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v3.z;
  r0.xy = v3.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v3.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
SubShader {
 Tags { "RenderType" = "Grass" }
 Pass {
  Tags { "RenderType" = "Grass" }
  ZClip Off
  Cull Off
  GpuProgramID 606273
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: fa64fc4f68c228b1
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb2[1].yy * v0.xz;
  r1.xyzw = float4(0.00600000005,0.0199999996,0.0199999996,0.0500000007) * r0.yyyy;
  r0.xyzw = r0.xxxx * float4(0.0120000001,0.0199999996,0.0599999987,0.0240000002) + r1.xyzw;
  r0.xyzw = cb2[1].xxxx * float4(1.20000005,2,1.60000002,4.80000019) + r0.xyzw;
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(6.40884876,6.40884876,6.40884876,6.40884876) + float4(-3.14159274,-3.14159274,-3.14159274,-3.14159274);
  r1.xyzw = r0.xyzw * r0.xyzw;
  r2.xyzw = r1.xyzw * r0.xyzw;
  r0.xyzw = r2.xyzw * float4(-0.161616161,-0.161616161,-0.161616161,-0.161616161) + r0.xyzw;
  r2.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = r2.xyzw * float4(0.00833330024,0.00833330024,0.00833330024,0.00833330024) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(-0.000198409994,-0.000198409994,-0.000198409994,-0.000198409994) + r0.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw;
  r1.x = cb2[1].z * v7.w;
  r1.xyzw = r1.xxxx * r0.xyzw;
  r0.x = dot(r0.xyzw, float4(0.674199879,0.674199879,0.269679934,0.134839967));
  r0.x = 0.699999988 * r0.x;
  r2.x = dot(r1.xyzw, float4(0.0240000002,0.0399999991,-0.119999997,0.0960000008));
  r2.z = dot(r1.xyzw, float4(0.00600000005,0.0199999996,-0.0199999996,0.100000001));
  r1.xz = -r2.xz * cb2[1].zz + v0.xz;
  r2.xyzw = cb1[1].xyzw * v0.yyyy;
  r2.xyzw = cb1[0].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb1[2].xyzw * r1.zzzz + r2.xyzw;
  o0.xyzw = cb1[3].xyzw + r2.xyzw;
  r0.yzw = float3(-0.5,-0.5,-0.5) + cb2[0].xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(0.5,0.5,0.5);
  r0.xyz = v7.xyz * r0.xyz;
  o1.xyz = r0.xyz + r0.xyz;
  r1.y = v0.y;
  r0.xyz = -cb2[2].xyz + r1.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cb2[1].w + -r0.x;
  r0.x = r0.x + r0.x;
  o1.w = saturate(cb2[2].w * r0.x);
  o2.xy = v3.xy;
  r0.x = cb1[5].z * v0.y;
  r0.x = cb1[4].z * r1.x + r0.x;
  r0.x = cb1[6].z * r1.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o3.w = -r0.x;
  r0.xyz = cb1[9].xyz * v2.yyy;
  r0.xyz = cb1[8].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v2.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r0.xyz * r0.www;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 839e872a1b47e6c6
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb2[1].yy * v0.xz;
  r1.xyzw = float4(0.00600000005,0.0199999996,0.0199999996,0.0500000007) * r0.yyyy;
  r0.xyzw = r0.xxxx * float4(0.0120000001,0.0199999996,0.0599999987,0.0240000002) + r1.xyzw;
  r0.xyzw = cb2[1].xxxx * float4(1.20000005,2,1.60000002,4.80000019) + r0.xyzw;
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * float4(6.40884876,6.40884876,6.40884876,6.40884876) + float4(-3.14159274,-3.14159274,-3.14159274,-3.14159274);
  r1.xyzw = r0.xyzw * r0.xyzw;
  r2.xyzw = r1.xyzw * r0.xyzw;
  r0.xyzw = r2.xyzw * float4(-0.161616161,-0.161616161,-0.161616161,-0.161616161) + r0.xyzw;
  r2.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = r2.xyzw * float4(0.00833330024,0.00833330024,0.00833330024,0.00833330024) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(-0.000198409994,-0.000198409994,-0.000198409994,-0.000198409994) + r0.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw;
  r0.xyzw = r0.xyzw * r0.xyzw;
  r1.x = cb2[1].z * v7.w;
  r1.xyzw = r1.xxxx * r0.xyzw;
  r0.x = dot(r0.xyzw, float4(0.674199879,0.674199879,0.269679934,0.134839967));
  r0.x = 0.699999988 * r0.x;
  r2.x = dot(r1.xyzw, float4(0.0240000002,0.0399999991,-0.119999997,0.0960000008));
  r2.z = dot(r1.xyzw, float4(0.00600000005,0.0199999996,-0.0199999996,0.100000001));
  r1.xz = -r2.xz * cb2[1].zz + v0.xz;
  r2.xyzw = cb1[1].xyzw * v0.yyyy;
  r2.xyzw = cb1[0].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb1[2].xyzw * r1.zzzz + r2.xyzw;
  o0.xyzw = cb1[3].xyzw + r2.xyzw;
  r0.yzw = float3(-0.5,-0.5,-0.5) + cb2[0].xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(0.5,0.5,0.5);
  r0.xyz = v7.xyz * r0.xyz;
  o1.xyz = r0.xyz + r0.xyz;
  r1.y = v0.y;
  r0.xyz = -cb2[2].xyz + r1.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = cb2[1].w + -r0.x;
  r0.x = r0.x + r0.x;
  o1.w = saturate(cb2[2].w * r0.x);
  o2.xy = v3.xy;
  r0.x = cb1[5].z * v0.y;
  r0.x = cb1[4].z * r1.x + r0.x;
  r0.x = cb1[6].z * r1.z + r0.x;
  r0.x = cb1[7].z + r0.x;
  r0.x = cb0[5].w * r0.x;
  o3.w = -r0.x;
  r0.xyz = cb1[9].xyz * v2.yyy;
  r0.xyz = cb1[8].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[10].xyz * v2.zzz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r0.xyz * r0.www;
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
"// hash: ed5ef82f90d21ada
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.x = r0.w * v1.w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v3.z;
  r0.xy = v3.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v3.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: c2df5a9afb153aa3
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.x = r0.w * v1.w + -cb0[3].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = 1 + v3.z;
  r0.xy = v3.xy / r0.xx;
  o0.xy = r0.xy * float2(0.281262308,0.281262308) + float2(0.5,0.5);
  r0.xy = float2(1,255) * v3.ww;
  r0.xy = frac(r0.xy);
  o0.z = -r0.y * 0.00392156886 + r0.x;
  o0.w = r0.y;
  return;
}"
}
}
}
}
}