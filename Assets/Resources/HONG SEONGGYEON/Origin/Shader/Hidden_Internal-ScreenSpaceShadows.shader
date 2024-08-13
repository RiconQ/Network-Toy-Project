//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-ScreenSpaceShadows" {
Properties {
_ShadowMapTexture ("", any) = "" { }
}
SubShader {
 Tags { "ShadowmapFilter" = "HardShadow" }
 Pass {
  Tags { "ShadowmapFilter" = "HardShadow" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 27348
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
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
"// hash: d3bdaad48ce131d3
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cmp(r0.zzzz >= cb2[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(r0.zzzz < cb2[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb1[19].xyzw * r0.yyyy;
  r2.xyzw = cb1[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[20].xyzw * r0.zzzz + r2.xyzw;
  r0.x = saturate(r0.z * cb2[24].z + cb2[24].w);
  r2.xyzw = cb1[21].xyzw + r2.xyzw;
  r0.yzw = cb2[13].xyz * r2.yyy;
  r0.yzw = cb2[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb2[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb2[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb2[9].xyz * r2.yyy;
  r3.xyz = cb2[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb2[17].xyz * r2.yyy;
  r3.xyz = cb2[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r3.xyz = cb2[21].xyz * r2.yyy;
  r3.xyz = cb2[20].xyz * r2.xxx + r3.xyz;
  r2.xyz = cb2[22].xyz * r2.zzz + r3.xyz;
  r2.xyz = cb2[23].xyz * r2.www + r2.xyz;
  r0.yzw = r2.xyz * r1.www + r0.yzw;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r0.w = -r1.x + r0.w;
  r0.w = 1 + r0.w;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8e16973190a24fbd
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cmp(r0.zzzz >= cb2[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(r0.zzzz < cb2[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb1[19].xyzw * r0.yyyy;
  r2.xyzw = cb1[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[20].xyzw * r0.zzzz + r2.xyzw;
  r0.x = saturate(r0.z * cb2[24].z + cb2[24].w);
  r2.xyzw = cb1[21].xyzw + r2.xyzw;
  r0.yzw = cb2[13].xyz * r2.yyy;
  r0.yzw = cb2[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb2[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb2[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb2[9].xyz * r2.yyy;
  r3.xyz = cb2[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb2[17].xyz * r2.yyy;
  r3.xyz = cb2[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r1.xyz = cb2[21].xyz * r2.yyy;
  r1.xyz = cb2[20].xyz * r2.xxx + r1.xyz;
  r1.xyz = cb2[22].xyz * r2.zzz + r1.xyz;
  r1.xyz = cb2[23].xyz * r2.www + r1.xyz;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 2ef8458447f726ad
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[21].xyzw + r0.xyzw;
  r1.xyz = -cb2[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb2[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb2[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyz = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb2[13].xyz * r0.yyy;
  r2.xyz = cb2[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb2[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb2[9].xyz * r0.yyy;
  r3.xyz = cb2[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r3.xyz = cb2[17].xyz * r0.yyy;
  r3.xyz = cb2[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.zzz + r2.xyz;
  r3.xyz = cb2[21].xyz * r0.yyy;
  r3.xyz = cb2[20].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[22].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[23].xyz * r0.www + r3.xyz;
  r0.xyz = -cb2[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb2[24].z + cb2[24].w);
  r0.yzw = r3.xyz * r1.www + r2.xyz;
  r0.w = r0.w + -r1.x;
  r0.w = 1 + r0.w;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 80fe6d20971fb40c
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[21].xyzw + r0.xyzw;
  r1.xyz = -cb2[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb2[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb2[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r1.yzw = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.xyz = cb2[13].xyz * r0.yyy;
  r2.xyz = cb2[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb2[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb2[9].xyz * r0.yyy;
  r3.xyz = cb2[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r3.xyz = cb2[17].xyz * r0.yyy;
  r3.xyz = cb2[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r0.www + r3.xyz;
  r1.xyz = r3.xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[21].xyz * r0.yyy;
  r2.xyz = cb2[20].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb2[22].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb2[23].xyz * r0.www + r2.xyz;
  r0.xyz = -cb2[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb2[24].z + cb2[24].w);
  r0.yzw = r2.xyz * r1.www + r1.xyz;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: d2ee00cffca35f22
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.x = saturate(r0.z * cb2[24].z + cb2[24].w);
  r1.xyzw = cb1[21].xyzw + r1.xyzw;
  r0.yzw = cb2[9].xyz * r1.yyy;
  r0.yzw = cb2[8].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb2[10].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb2[11].xyz * r1.www + r0.yzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: b99244483989f5f9
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.x = saturate(r0.z * cb2[24].z + cb2[24].w);
  r1.xyzw = cb1[21].xyzw + r1.xyzw;
  r0.yzw = cb2[9].xyz * r1.yyy;
  r0.yzw = cb2[8].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb2[10].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb2[11].xyz * r1.www + r0.yzw;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 60272a64264e8227
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[21].xyzw + r0.xyzw;
  r1.xyz = cb2[9].xyz * r0.yyy;
  r1.xyz = cb2[8].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb2[11].xyz * r0.www + r1.xyz;
  r0.xyz = -cb2[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb2[24].z + cb2[24].w);
  r0.y = t1.SampleCmpLevelZero(s1_s, r1.xy, r1.z).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 3b866b2ad13dda55
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb0[7].x * r0.x + cb0[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb0[8].w * r0.z + r0.y;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb0[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[21].xyzw + r0.xyzw;
  r1.xyz = cb2[9].xyz * r0.yyy;
  r1.xyz = cb2[8].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[10].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb2[11].xyz * r0.www + r1.xyz;
  r0.xyz = -cb2[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb2[24].z + cb2[24].w);
  r0.y = t15.SampleCmpLevelZero(s15_s, r1.xy, r1.z).x;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
}
}
}
SubShader {
 Tags { "ShadowmapFilter" = "HardShadow_FORCE_INV_PROJECTION_IN_PS" }
 Pass {
  Tags { "ShadowmapFilter" = "HardShadow_FORCE_INV_PROJECTION_IN_PS" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 127620
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 459a5a7bf4d54f66
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
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
"// hash: e20851859bd7bf8b
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cmp(-r0.zzzz >= cb1[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(-r0.zzzz < cb1[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb0[19].xyzw * r0.yyyy;
  r2.xyzw = cb0[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb0[20].xyzw * -r0.zzzz + r2.xyzw;
  r0.x = saturate(-r0.z * cb1[24].z + cb1[24].w);
  r2.xyzw = cb0[21].xyzw + r2.xyzw;
  r0.yzw = cb1[13].xyz * r2.yyy;
  r0.yzw = cb1[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb1[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb1[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb1[9].xyz * r2.yyy;
  r3.xyz = cb1[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb1[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb1[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb1[17].xyz * r2.yyy;
  r3.xyz = cb1[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb1[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb1[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r3.xyz = cb1[21].xyz * r2.yyy;
  r3.xyz = cb1[20].xyz * r2.xxx + r3.xyz;
  r2.xyz = cb1[22].xyz * r2.zzz + r3.xyz;
  r2.xyz = cb1[23].xyz * r2.www + r2.xyz;
  r0.yzw = r2.xyz * r1.www + r0.yzw;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r0.w = -r1.x + r0.w;
  r0.w = 1 + r0.w;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 1ecdc3f36ac14e7d
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).yzxw;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cmp(-r0.zzzz >= cb1[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(-r0.zzzz < cb1[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb0[19].xyzw * r0.yyyy;
  r2.xyzw = cb0[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb0[20].xyzw * -r0.zzzz + r2.xyzw;
  r0.x = saturate(-r0.z * cb1[24].z + cb1[24].w);
  r2.xyzw = cb0[21].xyzw + r2.xyzw;
  r0.yzw = cb1[13].xyz * r2.yyy;
  r0.yzw = cb1[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb1[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb1[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb1[9].xyz * r2.yyy;
  r3.xyz = cb1[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb1[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb1[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb1[17].xyz * r2.yyy;
  r3.xyz = cb1[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb1[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb1[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r1.xyz = cb1[21].xyz * r2.yyy;
  r1.xyz = cb1[20].xyz * r2.xxx + r1.xyz;
  r1.xyz = cb1[22].xyz * r2.zzz + r1.xyz;
  r1.xyz = cb1[23].xyz * r2.www + r1.xyz;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 2f86dbfc8019fff0
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[21].xyzw + r0.xyzw;
  r1.xyz = -cb1[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb1[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb1[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb1[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb1[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyz = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb1[13].xyz * r0.yyy;
  r2.xyz = cb1[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb1[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb1[9].xyz * r0.yyy;
  r3.xyz = cb1[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb1[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb1[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r3.xyz = cb1[17].xyz * r0.yyy;
  r3.xyz = cb1[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb1[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb1[19].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.zzz + r2.xyz;
  r3.xyz = cb1[21].xyz * r0.yyy;
  r3.xyz = cb1[20].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb1[22].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb1[23].xyz * r0.www + r3.xyz;
  r0.xyz = -cb1[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb1[24].z + cb1[24].w);
  r0.yzw = r3.xyz * r1.www + r2.xyz;
  r0.w = r0.w + -r1.x;
  r0.w = 1 + r0.w;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: e962ffbe6dbcc300
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).yzxw;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[21].xyzw + r0.xyzw;
  r1.xyz = -cb1[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb1[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb1[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb1[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb1[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r1.yzw = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.xyz = cb1[13].xyz * r0.yyy;
  r2.xyz = cb1[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb1[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb1[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb1[9].xyz * r0.yyy;
  r3.xyz = cb1[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb1[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb1[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r3.xyz = cb1[17].xyz * r0.yyy;
  r3.xyz = cb1[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb1[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb1[19].xyz * r0.www + r3.xyz;
  r1.xyz = r3.xyz * r1.zzz + r2.xyz;
  r2.xyz = cb1[21].xyz * r0.yyy;
  r2.xyz = cb1[20].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb1[22].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb1[23].xyz * r0.www + r2.xyz;
  r0.xyz = -cb1[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb1[24].z + cb1[24].w);
  r0.yzw = r2.xyz * r1.www + r1.xyz;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: e2503ae9a7ede80c
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.x = saturate(-r0.z * cb1[24].z + cb1[24].w);
  r1.xyzw = cb0[21].xyzw + r1.xyzw;
  r0.yzw = cb1[9].xyz * r1.yyy;
  r0.yzw = cb1[8].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb1[10].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb1[11].xyz * r1.www + r0.yzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: ae81bda9a1df7ef1
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[25];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).yzxw;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.x = saturate(-r0.z * cb1[24].z + cb1[24].w);
  r1.xyzw = cb0[21].xyzw + r1.xyzw;
  r0.yzw = cb1[9].xyz * r1.yyy;
  r0.yzw = cb1[8].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb1[10].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb1[11].xyz * r1.www + r0.yzw;
  r0.y = t15.SampleCmpLevelZero(s15_s, r0.yz, r0.w).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 3c6fd42b8561de27
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[21].xyzw + r0.xyzw;
  r1.xyz = cb1[9].xyz * r0.yyy;
  r1.xyz = cb1[8].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb1[10].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb1[11].xyz * r0.www + r1.xyz;
  r0.xyz = -cb1[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb1[24].z + cb1[24].w);
  r0.y = t1.SampleCmpLevelZero(s1_s, r1.xy, r1.z).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 4709efcce1978bbd
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s15_s : register(s15);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[26];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).yzxw;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[11].xyzw * r0.yyyy;
  r1.xyzw = cb0[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb0[19].xyzw * r0.yyyy;
  r1.xyzw = cb0[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb0[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.xyzw = cb0[21].xyzw + r0.xyzw;
  r1.xyz = cb1[9].xyz * r0.yyy;
  r1.xyz = cb1[8].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb1[10].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb1[11].xyz * r0.www + r1.xyz;
  r0.xyz = -cb1[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb1[24].z + cb1[24].w);
  r0.y = t15.SampleCmpLevelZero(s15_s, r1.xy, r1.z).x;
  r0.z = 1 + -cb1[24].x;
  r0.y = r0.y * r0.z + cb1[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
}
}
}
SubShader {
 Tags { "ShadowmapFilter" = "PCF_5x5" }
 Pass {
  Tags { "ShadowmapFilter" = "PCF_5x5" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 164474
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
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
"// hash: f6a7bc764241fe4a
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb1[7].x * r0.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb1[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb1[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cmp(r0.zzzz >= cb3[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(r0.zzzz < cb3[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb2[19].xyzw * r0.yyyy;
  r2.xyzw = cb2[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb2[20].xyzw * r0.zzzz + r2.xyzw;
  r0.x = saturate(r0.z * cb3[24].z + cb3[24].w);
  r2.xyzw = cb2[21].xyzw + r2.xyzw;
  r0.yzw = cb3[13].xyz * r2.yyy;
  r0.yzw = cb3[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb3[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb3[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb3[9].xyz * r2.yyy;
  r3.xyz = cb3[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb3[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb3[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb3[17].xyz * r2.yyy;
  r3.xyz = cb3[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb3[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb3[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r3.xyz = cb3[21].xyz * r2.yyy;
  r3.xyz = cb3[20].xyz * r2.xxx + r3.xyz;
  r2.xyz = cb3[22].xyz * r2.zzz + r3.xyz;
  r2.xyz = cb3[23].xyz * r2.www + r2.xyz;
  r0.yzw = r2.xyz * r1.www + r0.yzw;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r0.w = -r1.x + r0.w;
  r0.yz = r0.yz * cb0[3].zw + float2(0.5,0.5);
  r0.w = 1 + r0.w;
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.zw = -r1.xy * float2(3,3) + float2(4,4);
  r2.x = 3 * r1.x;
  r2.xz = r2.xx * float2(-1,1) + float2(4,1);
  r2.y = 7;
  r3.xyz = r2.xyz * r1.www;
  r4.xy = -r1.xy * float2(2,2) + float2(3,3);
  r1.zw = r4.xy / r1.zw;
  r4.xy = float2(-2,-2) + r1.zw;
  r5.z = r4.y;
  r1.zw = r1.xy * float2(3,3) + float2(1,1);
  r6.xy = r1.xy / r1.zw;
  r7.xyz = r2.xyz * r1.www;
  r1.zw = float2(7,7) * r2.xz;
  r1.xy = float2(3,3) + r1.xy;
  r5.xy = cb0[3].xy * r1.xy;
  r1.xy = float2(2,2) + r6.xy;
  r5.w = r1.y;
  r4.w = r1.x;
  r2.xz = cb0[3].yy;
  r2.y = 0.142857149;
  r2.xyz = r5.zyw * r2.xyz;
  r4.z = r5.x;
  r5.w = r2.x;
  r6.xz = cb0[3].xx;
  r6.y = 0.142857149;
  r5.xyz = r6.yxz * r4.zxw;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r1.xy = r0.yz * cb0[3].xy + r5.zw;
  r1.x = t1.SampleCmpLevelZero(s1_s, r1.xy, r0.w).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r2.x = r3.y * r2.x;
  r1.y = r3.x * r1.y + r2.x;
  r1.x = r3.z * r1.x + r1.y;
  r2.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r2.wywz;
  r5.yw = r2.yz;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r1.x = r1.z * r1.y + r1.x;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r0.y = r0.y * 49 + r1.x;
  r0.y = r1.w * r0.z + r0.y;
  r0.y = r7.x * r2.x + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r0.y = r7.y * r0.z + r0.y;
  r0.y = r7.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb3[24].x;
  r0.y = r0.y * r0.z + cb3[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 7473af6bde0245e4
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

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
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb1[7].x * r0.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb1[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb1[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = -cb3[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb3[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb3[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb3[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb3[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyz = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb3[13].xyz * r0.yyy;
  r2.xyz = cb3[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb3[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb3[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb3[9].xyz * r0.yyy;
  r3.xyz = cb3[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb3[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb3[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r3.xyz = cb3[17].xyz * r0.yyy;
  r3.xyz = cb3[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb3[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb3[19].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.zzz + r2.xyz;
  r3.xyz = cb3[21].xyz * r0.yyy;
  r3.xyz = cb3[20].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb3[22].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb3[23].xyz * r0.www + r3.xyz;
  r0.xyz = -cb3[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r0.yzw = r3.xyz * r1.www + r2.xyz;
  r0.yz = r0.yz * cb0[3].zw + float2(0.5,0.5);
  r0.w = r0.w + -r1.x;
  r0.w = 1 + r0.w;
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.zw = -r1.xy * float2(3,3) + float2(4,4);
  r2.x = 3 * r1.x;
  r2.xz = r2.xx * float2(-1,1) + float2(4,1);
  r2.y = 7;
  r3.xyz = r2.xyz * r1.www;
  r4.xy = -r1.xy * float2(2,2) + float2(3,3);
  r1.zw = r4.xy / r1.zw;
  r4.xy = float2(-2,-2) + r1.zw;
  r5.z = r4.y;
  r1.zw = r1.xy * float2(3,3) + float2(1,1);
  r6.xy = r1.xy / r1.zw;
  r7.xyz = r2.xyz * r1.www;
  r1.zw = float2(7,7) * r2.xz;
  r1.xy = float2(3,3) + r1.xy;
  r5.xy = cb0[3].xy * r1.xy;
  r1.xy = float2(2,2) + r6.xy;
  r5.w = r1.y;
  r4.w = r1.x;
  r2.xz = cb0[3].yy;
  r2.y = 0.142857149;
  r2.xyz = r5.zyw * r2.xyz;
  r4.z = r5.x;
  r5.w = r2.x;
  r6.xz = cb0[3].xx;
  r6.y = 0.142857149;
  r5.xyz = r6.yxz * r4.zxw;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r1.xy = r0.yz * cb0[3].xy + r5.zw;
  r1.x = t1.SampleCmpLevelZero(s1_s, r1.xy, r0.w).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r2.x = r3.y * r2.x;
  r1.y = r3.x * r1.y + r2.x;
  r1.x = r3.z * r1.x + r1.y;
  r2.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r2.wywz;
  r5.yw = r2.yz;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r1.x = r1.z * r1.y + r1.x;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r0.y = r0.y * 49 + r1.x;
  r0.y = r1.w * r0.z + r0.y;
  r0.y = r7.x * r2.x + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r0.y = r7.y * r0.z + r0.y;
  r0.y = r7.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb3[24].x;
  r0.y = r0.y * r0.z + cb3[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 4ab05992abb3e978
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb1[7].x * r0.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb1[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb1[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.x = saturate(r0.z * cb3[24].z + cb3[24].w);
  r1.xyzw = cb2[21].xyzw + r1.xyzw;
  r0.yzw = cb3[9].xyz * r1.yyy;
  r0.yzw = cb3[8].xyz * r1.xxx + r0.yzw;
  r0.yzw = cb3[10].xyz * r1.zzz + r0.yzw;
  r0.yzw = cb3[11].xyz * r1.www + r0.yzw;
  r1.xz = cb0[3].yy;
  r1.y = 0.142857149;
  r0.yz = r0.yz * cb0[3].zw + float2(0.5,0.5);
  r2.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r2.zw = -r2.xy * float2(2,2) + float2(3,3);
  r3.xy = -r2.xy * float2(3,3) + float2(4,4);
  r2.zw = r2.zw / r3.xy;
  r4.xy = float2(-2,-2) + r2.zw;
  r5.z = r4.y;
  r2.zw = r2.xy * float2(3,3) + float2(1,1);
  r3.xz = r2.xy / r2.zw;
  r5.xw = float2(2,2) + r3.xz;
  r4.w = r5.x;
  r2.yz = float2(3,3) + r2.xy;
  r1.w = 3 * r2.x;
  r6.xz = r1.ww * float2(-1,1) + float2(4,1);
  r5.xy = cb0[3].xy * r2.yz;
  r1.xyz = r5.zyw * r1.xyz;
  r4.z = r5.x;
  r5.w = r1.x;
  r2.xz = cb0[3].xx;
  r2.y = 0.142857149;
  r5.xyz = r4.zxw * r2.yxz;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r2.xy = r0.yz * cb0[3].xy + r5.zw;
  r1.x = t1.SampleCmpLevelZero(s1_s, r2.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r2.y = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r6.y = 7;
  r3.xyz = r6.xyz * r3.yyy;
  r4.xyz = r6.xyz * r2.www;
  r2.zw = float2(7,7) * r6.xz;
  r2.y = r3.y * r2.y;
  r2.x = r3.x * r2.x + r2.y;
  r1.x = r3.z * r1.x + r2.x;
  r1.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r1.wywz;
  r5.yw = r1.yz;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r1.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r1.x = r2.z * r1.y + r1.x;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r5.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r0.y = r0.y * 49 + r1.x;
  r0.y = r2.w * r0.z + r0.y;
  r0.y = r4.x * r1.z + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r5.xy, r0.w).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r5.zw, r0.w).x;
  r0.y = r4.y * r0.z + r0.y;
  r0.y = r4.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb3[24].x;
  r0.y = r0.y * r0.z + cb3[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 5bdc4c5097cf484e
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

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
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.y = cb1[7].x * r0.x + cb1[7].y;
  r0.y = 1 / r0.y;
  r0.z = r0.x + -r0.y;
  r0.y = cb1[8].w * r0.z + r0.y;
  r0.x = 1 + -r0.x;
  r1.xyz = v3.xyz + -v2.xyz;
  r0.xzw = r0.xxx * r1.xyz + v2.xyz;
  r0.xzw = -v1.xyz * r0.yyy + r0.xzw;
  r1.xyz = v1.xyz * r0.yyy;
  r0.xyz = cb1[8].www * r0.xzw + r1.xyz;
  r1.xyzw = cb2[19].xyzw * r0.yyyy;
  r1.xyzw = cb2[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb2[20].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb2[21].xyzw + r0.xyzw;
  r1.xyz = cb3[9].xyz * r0.yyy;
  r1.xyz = cb3[8].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb3[10].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb3[11].xyz * r0.www + r1.xyz;
  r0.xyz = -cb3[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb3[24].z + cb3[24].w);
  r2.xz = cb0[3].yy;
  r2.y = 0.142857149;
  r0.yz = r1.xy * cb0[3].zw + float2(0.5,0.5);
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r3.xy = -r1.xy * float2(2,2) + float2(3,3);
  r3.zw = -r1.xy * float2(3,3) + float2(4,4);
  r3.xy = r3.xy / r3.zw;
  r4.xy = float2(-2,-2) + r3.xy;
  r5.z = r4.y;
  r3.xy = r1.xy * float2(3,3) + float2(1,1);
  r3.xz = r1.xy / r3.xy;
  r5.xw = float2(2,2) + r3.xz;
  r4.w = r5.x;
  r1.yw = float2(3,3) + r1.xy;
  r0.w = 3 * r1.x;
  r6.xz = r0.ww * float2(-1,1) + float2(4,1);
  r5.xy = cb0[3].xy * r1.yw;
  r2.xyz = r5.zyw * r2.xyz;
  r4.z = r5.x;
  r5.w = r2.x;
  r7.xz = cb0[3].xx;
  r7.y = 0.142857149;
  r5.xyz = r7.yxz * r4.zxw;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r1.xy = r0.yz * cb0[3].xy + r5.zw;
  r0.w = t1.SampleCmpLevelZero(s1_s, r1.xy, r1.z).x;
  r1.x = t1.SampleCmpLevelZero(s1_s, r4.xy, r1.z).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r4.zw, r1.z).x;
  r6.y = 7;
  r3.xzw = r6.xyz * r3.www;
  r4.xyz = r6.xyz * r3.yyy;
  r6.xy = float2(7,7) * r6.xz;
  r1.y = r3.z * r1.y;
  r1.x = r3.x * r1.x + r1.y;
  r0.w = r3.w * r0.w + r1.x;
  r2.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r2.wywz;
  r5.yw = r2.yz;
  r1.x = t1.SampleCmpLevelZero(s1_s, r3.xy, r1.z).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.zw, r1.z).x;
  r0.w = r6.x * r1.x + r0.w;
  r2.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r2.xy, r1.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r2.zw, r1.z).x;
  r0.y = r0.y * 49 + r0.w;
  r0.y = r6.y * r0.z + r0.y;
  r0.y = r4.x * r1.y + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.xy, r1.z).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r3.zw, r1.z).x;
  r0.y = r4.y * r0.z + r0.y;
  r0.y = r4.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb3[24].x;
  r0.y = r0.y * r0.z + cb3[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
}
}
}
SubShader {
 Tags { "ShadowmapFilter" = "PCF_5x5_FORCE_INV_PROJECTION_IN_PS" }
 Pass {
  Tags { "ShadowmapFilter" = "PCF_5x5_FORCE_INV_PROJECTION_IN_PS" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 234566
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 28a7271021d7155a
cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb2[1].xyzw * v0.yyyy;
  r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb2[3].xyzw + r0.xyzw;
  r1.xz = float2(0.5,0.5) * r0.xw;
  r1.y = cb0[5].x * r0.y;
  r1.w = 0.5 * r1.y;
  r2.xyz = cb1[11].xyz * r1.yyy;
  r2.xyz = cb1[10].xyz * r0.xxx + r2.xyz;
  o4.xyzw = r0.xyzw;
  o0.zw = r1.xw + r1.zz;
  o0.xy = v1.xy;
  o1.xyz = v2.xyz;
  r0.xyz = -cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[12].xyz + r2.xyz;
  r1.xyz = cb1[13].xyz + r1.xyz;
  r0.xyz = cb1[13].xyz + r0.xyz;
  r0.w = -r0.z;
  o2.xyz = r0.xyw;
  r1.w = -r1.z;
  o3.xyz = r1.xyw;
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
"// hash: e8b0b750c0498910
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb1[11].xyzw * r0.yyyy;
  r1.xyzw = cb1[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cmp(-r0.zzzz >= cb2[6].xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyzw = cmp(-r0.zzzz < cb2[7].xyzw);
  r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r2.xyzw = cb1[19].xyzw * r0.yyyy;
  r2.xyzw = cb1[18].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[20].xyzw * -r0.zzzz + r2.xyzw;
  r0.x = saturate(-r0.z * cb2[24].z + cb2[24].w);
  r2.xyzw = cb1[21].xyzw + r2.xyzw;
  r0.yzw = cb2[13].xyz * r2.yyy;
  r0.yzw = cb2[12].xyz * r2.xxx + r0.yzw;
  r0.yzw = cb2[14].xyz * r2.zzz + r0.yzw;
  r0.yzw = cb2[15].xyz * r2.www + r0.yzw;
  r0.yzw = r0.yzw * r1.yyy;
  r3.xyz = cb2[9].xyz * r2.yyy;
  r3.xyz = cb2[8].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r3.xyz = cb2[17].xyz * r2.yyy;
  r3.xyz = cb2[16].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r2.www + r3.xyz;
  r0.yzw = r3.xyz * r1.zzz + r0.yzw;
  r3.xyz = cb2[21].xyz * r2.yyy;
  r3.xyz = cb2[20].xyz * r2.xxx + r3.xyz;
  r2.xyz = cb2[22].xyz * r2.zzz + r3.xyz;
  r2.xyz = cb2[23].xyz * r2.www + r2.xyz;
  r0.yzw = r2.xyz * r1.www + r0.yzw;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r0.w = -r1.x + r0.w;
  r0.yz = r0.yz * cb0[3].zw + float2(0.5,0.5);
  r0.w = 1 + r0.w;
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.zw = -r1.xy * float2(3,3) + float2(4,4);
  r2.x = 3 * r1.x;
  r2.xz = r2.xx * float2(-1,1) + float2(4,1);
  r2.y = 7;
  r3.xyz = r2.xyz * r1.www;
  r4.xy = -r1.xy * float2(2,2) + float2(3,3);
  r1.zw = r4.xy / r1.zw;
  r4.xy = float2(-2,-2) + r1.zw;
  r5.z = r4.y;
  r1.zw = r1.xy * float2(3,3) + float2(1,1);
  r6.xy = r1.xy / r1.zw;
  r7.xyz = r2.xyz * r1.www;
  r1.zw = float2(7,7) * r2.xz;
  r1.xy = float2(3,3) + r1.xy;
  r5.xy = cb0[3].xy * r1.xy;
  r1.xy = float2(2,2) + r6.xy;
  r5.w = r1.y;
  r4.w = r1.x;
  r2.xz = cb0[3].yy;
  r2.y = 0.142857149;
  r2.xyz = r5.zyw * r2.xyz;
  r4.z = r5.x;
  r5.w = r2.x;
  r6.xz = cb0[3].xx;
  r6.y = 0.142857149;
  r5.xyz = r6.yxz * r4.zxw;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r1.xy = r0.yz * cb0[3].xy + r5.zw;
  r1.x = t1.SampleCmpLevelZero(s1_s, r1.xy, r0.w).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r2.x = r3.y * r2.x;
  r1.y = r3.x * r1.y + r2.x;
  r1.x = r3.z * r1.x + r1.y;
  r2.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r2.wywz;
  r5.yw = r2.yz;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r1.x = r1.z * r1.y + r1.x;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r0.y = r0.y * 49 + r1.x;
  r0.y = r1.w * r0.z + r0.y;
  r0.y = r7.x * r2.x + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r0.y = r7.y * r0.z + r0.y;
  r0.y = r7.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" }
"// hash: c3947cf574931d30
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.z = 1 + -r0.x;
  r0.xy = v0.zw;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb1[11].xyzw * r0.yyyy;
  r1.xyzw = cb1[10].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[12].xyzw * r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[13].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyzw = cb1[19].xyzw * r0.yyyy;
  r1.xyzw = cb1[18].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb1[20].xyzw * -r0.zzzz + r1.xyzw;
  r0.xyzw = cb1[21].xyzw + r0.xyzw;
  r1.xyz = -cb2[0].xyz + r0.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.xyz = -cb2[1].xyz + r0.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[2].xyz + r0.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r2.xyz = -cb2[3].xyz + r0.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.xyzw = cmp(r1.xyzw < cb2[4].xyzw);
  r2.xyz = r1.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.xyz = r1.yzw + r2.xyz;
  r1.yzw = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb2[13].xyz * r0.yyy;
  r2.xyz = cb2[12].xyz * r0.xxx + r2.xyz;
  r2.xyz = cb2[14].xyz * r0.zzz + r2.xyz;
  r2.xyz = cb2[15].xyz * r0.www + r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r3.xyz = cb2[9].xyz * r0.yyy;
  r3.xyz = cb2[8].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[10].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[11].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r3.xyz = cb2[17].xyz * r0.yyy;
  r3.xyz = cb2[16].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[18].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[19].xyz * r0.www + r3.xyz;
  r2.xyz = r3.xyz * r1.zzz + r2.xyz;
  r3.xyz = cb2[21].xyz * r0.yyy;
  r3.xyz = cb2[20].xyz * r0.xxx + r3.xyz;
  r3.xyz = cb2[22].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb2[23].xyz * r0.www + r3.xyz;
  r0.xyz = -cb2[25].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb2[24].z + cb2[24].w);
  r0.yzw = r3.xyz * r1.www + r2.xyz;
  r0.yz = r0.yz * cb0[3].zw + float2(0.5,0.5);
  r0.w = r0.w + -r1.x;
  r0.w = 1 + r0.w;
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.zw = -r1.xy * float2(3,3) + float2(4,4);
  r2.x = 3 * r1.x;
  r2.xz = r2.xx * float2(-1,1) + float2(4,1);
  r2.y = 7;
  r3.xyz = r2.xyz * r1.www;
  r4.xy = -r1.xy * float2(2,2) + float2(3,3);
  r1.zw = r4.xy / r1.zw;
  r4.xy = float2(-2,-2) + r1.zw;
  r5.z = r4.y;
  r1.zw = r1.xy * float2(3,3) + float2(1,1);
  r6.xy = r1.xy / r1.zw;
  r7.xyz = r2.xyz * r1.www;
  r1.zw = float2(7,7) * r2.xz;
  r1.xy = float2(3,3) + r1.xy;
  r5.xy = cb0[3].xy * r1.xy;
  r1.xy = float2(2,2) + r6.xy;
  r5.w = r1.y;
  r4.w = r1.x;
  r2.xz = cb0[3].yy;
  r2.y = 0.142857149;
  r2.xyz = r5.zyw * r2.xyz;
  r4.z = r5.x;
  r5.w = r2.x;
  r6.xz = cb0[3].xx;
  r6.y = 0.142857149;
  r5.xyz = r6.yxz * r4.zxw;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.ywxw;
  r1.xy = r0.yz * cb0[3].xy + r5.zw;
  r1.x = t1.SampleCmpLevelZero(s1_s, r1.xy, r0.w).x;
  r1.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r2.x = r3.y * r2.x;
  r1.y = r3.x * r1.y + r2.x;
  r1.x = r3.z * r1.x + r1.y;
  r2.w = r5.y;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r2.wywz;
  r5.yw = r2.yz;
  r1.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r2.x = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r1.x = r1.z * r1.y + r1.x;
  r3.xyzw = r0.yzyz * cb0[3].xyxy + r5.xyzy;
  r4.xyzw = r0.yzyz * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r0.w).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r0.w).x;
  r0.y = r0.y * 49 + r1.x;
  r0.y = r1.w * r0.z + r0.y;
  r0.y = r7.x * r2.x + r0.y;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.xy, r0.w).x;
  r0.w = t1.SampleCmpLevelZero(s1_s, r4.zw, r0.w).x;
  r0.y = r7.y * r0.z + r0.y;
  r0.y = r7.z * r0.w + r0.y;
  r0.y = 0.0069444445 * r0.y;
  r0.z = 1 + -cb2[24].x;
  r0.y = r0.y * r0.z + cb2[24].x;
  o0.xyzw = r0.yyyy + r0.xxxx;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SINGLE_CASCADE" }
"// hash: 826e13c2520d78f9
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = cb0[3].yy;
  r0.y = 0.142857149;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.z = 1 + -r1.x;
  r1.xy = v0.zw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyzw = cb1[11].xyzw * r1.yyyy;
  r2.xyzw = cb1[10].xyzw * r1.xxxx + r2.xyzw;
  r1.xyzw = cb1[12].xyzw * r1.zzzz + r2.xyzw;
  r1.xyzw = cb1[13].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyzw = cb1[19].xyzw * r1.yyyy;
  r2.xyzw = cb1[18].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb1[20].xyzw * -r1.zzzz + r2.xyzw;
  r0.w = saturate(-r1.z * cb2[24].z + cb2[24].w);
  r1.xyzw = cb1[21].xyzw + r2.xyzw;
  r2.xyz = cb2[9].xyz * r1.yyy;
  r2.xyz = cb2[8].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[10].xyz * r1.zzz + r2.xyz;
  r1.xyz = cb2[11].xyz * r1.www + r1.xyz;
  r1.xy = r1.xy * cb0[3].zw + float2(0.5,0.5);
  r2.xy = frac(r1.xy);
  r1.xy = floor(r1.xy);
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r2.zw = -r2.xy * float2(2,2) + float2(3,3);
  r3.xy = -r2.xy * float2(3,3) + float2(4,4);
  r2.zw = r2.zw / r3.xy;
  r4.xy = float2(-2,-2) + r2.zw;
  r5.z = r4.y;
  r2.zw = r2.xy * float2(3,3) + float2(1,1);
  r3.xz = r2.xy / r2.zw;
  r5.xw = float2(2,2) + r3.xz;
  r4.w = r5.x;
  r2.yz = float2(3,3) + r2.xy;
  r1.w = 3 * r2.x;
  r6.xz = r1.ww * float2(-1,1) + float2(4,1);
  r5.xy = cb0[3].xy * r2.yz;
  r7.xyz = r5.zyw * r0.xyz;
  r4.z = r5.x;
  r5.w = r7.x;
  r0.xz = cb0[3].xx;
  r0.y = 0.142857149;
  r5.xyz = r4.zxw * r0.yxz;
  r4.xyzw = r1.xyxy * cb0[3].xyxy + r5.ywxw;
  r0.xy = r1.xy * cb0[3].xy + r5.zw;
  r0.x = t1.SampleCmpLevelZero(s1_s, r0.xy, r1.z).x;
  r0.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r1.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.zw, r1.z).x;
  r6.y = 7;
  r2.xyz = r6.xyz * r3.yyy;
  r3.xyz = r6.xyz * r2.www;
  r4.xy = float2(7,7) * r6.xz;
  r0.z = r2.y * r0.z;
  r0.y = r2.x * r0.y + r0.z;
  r0.x = r2.z * r0.x + r0.y;
  r7.w = r5.y;
  r2.xyzw = r1.xyxy * cb0[3].xyxy + r7.wywz;
  r5.yw = r7.yz;
  r0.y = t1.SampleCmpLevelZero(s1_s, r2.xy, r1.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r2.zw, r1.z).x;
  r0.x = r4.x * r0.y + r0.x;
  r2.xyzw = r1.xyxy * cb0[3].xyxy + r5.xyzy;
  r5.xyzw = r1.xyxy * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r2.xy, r1.z).x;
  r1.x = t1.SampleCmpLevelZero(s1_s, r2.zw, r1.z).x;
  r0.x = r0.y * 49 + r0.x;
  r0.x = r4.y * r1.x + r0.x;
  r0.x = r3.x * r0.z + r0.x;
  r0.y = t1.SampleCmpLevelZero(s1_s, r5.xy, r1.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r5.zw, r1.z).x;
  r0.x = r3.y * r0.y + r0.x;
  r0.x = r3.z * r0.z + r0.x;
  r0.x = 0.0069444445 * r0.x;
  r0.y = 1 + -cb2[24].x;
  r0.x = r0.x * r0.y + cb2[24].x;
  o0.xyzw = r0.xxxx + r0.wwww;
  return;
}"
}
SubProgram "d3d9 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SPLIT_SPHERES" "SHADOWS_SINGLE_CASCADE" }
"// hash: 76b344af5891992e
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = cb0[3].yy;
  r0.y = 0.142857149;
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.z = 1 + -r1.x;
  r1.xy = v0.zw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyzw = cb1[11].xyzw * r1.yyyy;
  r2.xyzw = cb1[10].xyzw * r1.xxxx + r2.xyzw;
  r1.xyzw = cb1[12].xyzw * r1.zzzz + r2.xyzw;
  r1.xyzw = cb1[13].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyzw = cb1[19].xyzw * r1.yyyy;
  r2.xyzw = cb1[18].xyzw * r1.xxxx + r2.xyzw;
  r1.xyzw = cb1[20].xyzw * -r1.zzzz + r2.xyzw;
  r1.xyzw = cb1[21].xyzw + r1.xyzw;
  r2.xyz = cb2[9].xyz * r1.yyy;
  r2.xyz = cb2[8].xyz * r1.xxx + r2.xyz;
  r2.xyz = cb2[10].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[11].xyz * r1.www + r2.xyz;
  r1.xyz = -cb2[25].xyz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * cb2[24].z + cb2[24].w);
  r1.xy = r2.xy * cb0[3].zw + float2(0.5,0.5);
  r1.zw = frac(r1.xy);
  r1.xy = floor(r1.xy);
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r2.xy = -r1.zw * float2(2,2) + float2(3,3);
  r3.xy = -r1.zw * float2(3,3) + float2(4,4);
  r2.xy = r2.xy / r3.xy;
  r4.xy = float2(-2,-2) + r2.xy;
  r5.z = r4.y;
  r2.xy = r1.zw * float2(3,3) + float2(1,1);
  r2.xw = r1.zw / r2.xy;
  r5.xw = float2(2,2) + r2.xw;
  r4.w = r5.x;
  r2.xw = float2(3,3) + r1.zw;
  r1.z = 3 * r1.z;
  r6.xz = r1.zz * float2(-1,1) + float2(4,1);
  r5.xy = cb0[3].xy * r2.xw;
  r7.xyz = r5.zyw * r0.xyz;
  r4.z = r5.x;
  r5.w = r7.x;
  r0.xz = cb0[3].xx;
  r0.y = 0.142857149;
  r5.xyz = r4.zxw * r0.yxz;
  r4.xyzw = r1.xyxy * cb0[3].xyxy + r5.ywxw;
  r0.xy = r1.xy * cb0[3].xy + r5.zw;
  r0.x = t1.SampleCmpLevelZero(s1_s, r0.xy, r2.z).x;
  r0.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r2.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.zw, r2.z).x;
  r6.y = 7;
  r3.xyz = r6.xyz * r3.yyy;
  r2.xyw = r6.xyz * r2.yyy;
  r1.zw = float2(7,7) * r6.xz;
  r0.z = r3.y * r0.z;
  r0.y = r3.x * r0.y + r0.z;
  r0.x = r3.z * r0.x + r0.y;
  r7.w = r5.y;
  r3.xyzw = r1.xyxy * cb0[3].xyxy + r7.wywz;
  r5.yw = r7.yz;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r2.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r3.zw, r2.z).x;
  r0.x = r1.z * r0.y + r0.x;
  r3.xyzw = r1.xyxy * cb0[3].xyxy + r5.xyzy;
  r4.xyzw = r1.xyxy * cb0[3].xyxy + r5.xwzw;
  r0.y = t1.SampleCmpLevelZero(s1_s, r3.xy, r2.z).x;
  r1.x = t1.SampleCmpLevelZero(s1_s, r3.zw, r2.z).x;
  r0.x = r0.y * 49 + r0.x;
  r0.x = r1.w * r1.x + r0.x;
  r0.x = r2.x * r0.z + r0.x;
  r0.y = t1.SampleCmpLevelZero(s1_s, r4.xy, r2.z).x;
  r0.z = t1.SampleCmpLevelZero(s1_s, r4.zw, r2.z).x;
  r0.x = r2.y * r0.y + r0.x;
  r0.x = r2.w * r0.z + r0.x;
  r0.x = 0.0069444445 * r0.x;
  r0.y = 1 + -cb2[24].x;
  r0.x = r0.x * r0.y + cb2[24].x;
  o0.xyzw = r0.xxxx + r0.wwww;
  return;
}"
}
}
}
}
}