//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Sprites/Default" {
Properties {
[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" { }
_Color ("Tint", Color) = (1,1,1,1)
[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
}
SubShader {
 Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend One OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 24070
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: f41c125be84daa78
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6f2720cf199a20d1
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// hash: f41c125be84daa78
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// hash: 6f2720cf199a20d1
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
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb1[3].xyzw + r0.xyzw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "PIXELSNAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "PIXELSNAP_ON" }
"// hash: 17f43f56693bb2f2
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) * cb1[6].xy;
  r0.xy = r1.xy * r0.xy;
  r0.xy = round(r0.xy);
  r0.xy = r0.xy / r1.xy;
  o0.xy = r0.xy * r0.ww;
  o0.zw = r0.zw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "PIXELSNAP_ON" }
"// hash: 5c66aa8cf1b7cdb
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) * cb1[6].xy;
  r0.xy = r1.xy * r0.xy;
  r0.xy = round(r0.xy);
  r0.xy = r0.xy / r1.xy;
  o0.xy = r0.xy * r0.ww;
  o0.zw = r0.zw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// hash: 17f43f56693bb2f2
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) * cb1[6].xy;
  r0.xy = r1.xy * r0.xy;
  r0.xy = round(r0.xy);
  r0.xy = r0.xy / r1.xy;
  o0.xy = r0.xy * r0.ww;
  o0.zw = r0.zw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// hash: 5c66aa8cf1b7cdb
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float2 o2 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = float2(0.5,0.5) * cb1[6].xy;
  r0.xy = r1.xy * r0.xy;
  r0.xy = round(r0.xy);
  r0.xy = r0.xy / r1.xy;
  o0.xy = r0.xy * r0.ww;
  o0.zw = r0.zw;
  o1.xyzw = cb0[2].xyzw * v1.xyzw;
  o2.xy = v2.xy;
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
"// hash: f73b4e715a508828
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: c83af9269674b538
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// hash: 87ad3f0534f31f56
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.w = r1.x;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "ETC1_EXTERNAL_ALPHA" }
"// hash: 1a0069499583f923
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.w = r1.x;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "PIXELSNAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "PIXELSNAP_ON" }
"// hash: f73b4e715a508828
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "PIXELSNAP_ON" }
"// hash: c83af9269674b538
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// hash: 87ad3f0534f31f56
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.w = r1.x;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "ETC1_EXTERNAL_ALPHA" "PIXELSNAP_ON" }
"// hash: 1a0069499583f923
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  r0.w = r1.x;
  r0.xyzw = v1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}"
}
}
}
}
}