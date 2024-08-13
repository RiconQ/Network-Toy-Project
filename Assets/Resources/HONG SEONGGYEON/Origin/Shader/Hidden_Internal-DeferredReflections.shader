//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-DeferredReflections" {
Properties {
_SrcBlend ("", Float) = 1
_DstBlend ("", Float) = 1
}
SubShader {
 Pass {
  Blend Zero Zero, Zero Zero
  ZClip Off
  ZWrite Off
  GpuProgramID 2208
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
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
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 483482b29c6f2e
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
  float4 cb2[7];
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
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[5].z / v2.z;
  r0.xyz = v2.xyz * r0.xxx;
  r1.xy = v1.xy / v1.ww;
  r2.xyzw = t0.Sample(s1_s, r1.xy).xyzw;
  r0.w = cb0[7].x * r2.x + cb0[7].y;
  r0.w = 1 / r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[19].xyz * r0.yyy;
  r0.xyw = cb1[18].xyz * r0.xxx + r2.xyz;
  r0.xyz = cb1[20].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[21].xyz + r0.xyz;
  r2.xyzw = t1.Sample(s2_s, r1.xy).xyzw;
  r3.xyzw = t2.Sample(s3_s, r1.xy).xyzw;
  r1.xyzw = t3.Sample(s4_s, r1.xy).xyzw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = -cb0[4].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = max(r3.x, r3.y);
  r0.w = max(r0.w, r3.z);
  r0.w = 1 + -r0.w;
  r1.w = 1 + -r3.w;
  r4.x = dot(r2.xyz, r1.xyz);
  r4.x = r4.x + r4.x;
  r4.xyz = r1.xyz * -r4.xxx + r2.xyz;
  r4.w = cmp(0 < cb2[2].w);
  if (r4.w != 0) {
    r5.xyz = -cb2[6].www + cb2[1].xyz;
    r6.xyz = cb2[6].www + cb2[0].xyz;
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r7.xyz = r4.xyz * r4.www;
    r6.xyz = r6.xyz + -r0.xyz;
    r6.xyz = r6.xyz / r7.xyz;
    r5.xyz = r5.xyz + -r0.xyz;
    r5.xyz = r5.xyz / r7.xyz;
    r8.xyz = cmp(float3(0,0,0) < r7.xyz);
    r5.xyz = r8.xyz ? r6.xyz : r5.xyz;
    r4.w = min(r5.x, r5.y);
    r4.w = min(r4.w, r5.z);
    r5.xyz = -cb2[2].xyz + r0.xyz;
    r4.xyz = r7.xyz * r4.www + r5.xyz;
  }
  r4.w = -r1.w * 0.699999988 + 1.70000005;
  r4.w = r4.w * r1.w;
  r4.w = 6 * r4.w;
  r4.xyzw = t4.SampleLevel(s0_s, r4.xyz, r4.w).xyzw;
  r5.x = cmp(cb2[3].w == 1.000000);
  r4.w = log2(r4.w);
  r4.w = cb2[3].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r5.x ? r4.w : 1;
  r4.w = cb2[3].x * r4.w;
  r4.xyz = r4.www * r4.xyz;
  r4.xyz = r4.xyz * r2.www;
  r1.x = dot(r1.xyz, -r2.xyz);
  r1.y = r1.w * r1.w;
  r1.y = r1.y * r1.y + 1;
  r1.y = 1 / r1.y;
  r0.w = r3.w + -r0.w;
  r0.w = saturate(1 + r0.w);
  r1.yzw = r1.yyy * r4.xyz;
  r1.x = 1 + -abs(r1.x);
  r2.x = r1.x * r1.x;
  r2.x = r2.x * r2.x;
  r1.x = r2.x * r1.x;
  r2.xyz = r0.www + -r3.xyz;
  r2.xyz = r1.xxx * r2.xyz + r3.xyz;
  o0.xyz = r2.xyz * r1.yzw;
  r1.xyz = -cb2[0].xyz + r0.xyz;
  r0.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = max(r1.xyz, r0.xyz);
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb2[6].w;
  o0.w = saturate(1 + -r0.x);
  return;
}"
}
}
}
 Pass {
  Blend Zero Zero, Zero Zero
  ZClip Off
  ZTest Always
  ZWrite Off
  GpuProgramID 128161
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 9d9da7e93fc0b8d9
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.x;
  r1.xz = float2(0.5,0.5) * r0.xw;
  o1.xyzw = r0.xyzw;
  o0.xy = r1.xw + r1.zz;
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
"// hash: 9d9da7e93fc0b8d9
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float2 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[1].xyzw * v0.yyyy;
  r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.x;
  r1.xz = float2(0.5,0.5) * r0.xw;
  o1.xyzw = r0.xyzw;
  o0.xy = r1.xw + r1.zz;
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
"// hash: 53a60d32a7f3e21e
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  o0.xyz = exp2(-r0.xyz);
  o0.w = 0;
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
"// hash: 8e8bb802642c4bca
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}"
}
}
}
}
}