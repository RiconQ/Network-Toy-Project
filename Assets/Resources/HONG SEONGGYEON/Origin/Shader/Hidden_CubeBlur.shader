//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CubeBlur" {
Properties {
_MainTex ("Main", Cube) = "" { }
_Texel ("Texel", Float) = 0.0078125
_Level ("Level", Float) = 0
_Scale ("Scale", Float) = 1
}
SubShader {
 LOD 200
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 200
  Tags { "RenderType" = "Opaque" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 20390
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: dfc14db65a3f7486
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
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
"// hash: 3d62dc0837d582e3
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[2].w;
  r0.yz = float2(3,5);
  r1.xyz = cmp(abs(v1.xyz) == float3(1,1,1));
  r1.xyz = r1.xyz ? float3(1,1,1) : 0;
  r1.xyz = v1.xyz * r1.xyz;
  r2.xyz = float3(1,1,1) + -abs(r1.xyz);
  r2.xyz = v1.xyz * r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = 1 + r0.w;
  r0.w = sqrt(r0.w);
  r0.w = 1 / r0.w;
  r1.w = r0.w * r0.w;
  r2.x = r1.w * r0.w;
  r2.yz = cb0[2].ww * r2.xx;
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = -r0.xyz * r0.xyz;
  r0.xyz = float3(1.44269502,1.44269502,1.44269502) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r2.xyz = r0.xyz * r0.zzz;
  r3.xyz = cb0[2].xxx * r1.zxy;
  r4.xyz = -r3.xyz * float3(1.5,1.5,1.5) + v1.xyz;
  r5.xyz = -r3.zxy * float3(2.5,2.5,2.5) + r4.xyz;
  r6.xyz = max(float3(-1,-1,-1), r5.xyz);
  r6.xyz = min(float3(1,1,1), r6.xyz);
  r5.xyz = -r6.xyz + r5.xyz;
  r0.w = max(abs(r5.x), abs(r5.y));
  r0.w = max(r0.w, abs(r5.z));
  r5.xyz = -r0.www * r1.xyz + r6.xyz;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xyz, cb0[2].z).xyzw;
  r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
  r6.xyz = r3.xyz * float3(1.5,1.5,1.5) + v1.xyz;
  r7.xyz = -r3.zxy * float3(2.5,2.5,2.5) + r6.xyz;
  r8.xyz = max(float3(-1,-1,-1), r7.xyz);
  r8.xyz = min(float3(1,1,1), r8.xyz);
  r7.xyz = -r8.xyz + r7.xyz;
  r0.w = max(abs(r7.x), abs(r7.y));
  r0.w = max(r0.w, abs(r7.z));
  r7.xyz = -r0.www * r1.xyz + r8.xyz;
  r7.xyzw = t0.SampleLevel(s0_s, r7.xyz, cb0[2].z).xyzw;
  r7.xyzw = max(float4(0,0,0,0), r7.xyzw);
  r5.xyzw = r7.xyzw + r5.xyzw;
  r5.xyzw = r5.xyzw * r2.yyyy;
  r7.xyz = -r3.zxy * float3(2.5,2.5,2.5) + v1.xyz;
  r8.xyz = max(float3(-1,-1,-1), r7.xyz);
  r8.xyz = min(float3(1,1,1), r8.xyz);
  r7.xyz = -r8.xyz + r7.xyz;
  r0.w = max(abs(r7.x), abs(r7.y));
  r0.w = max(r0.w, abs(r7.z));
  r7.xyz = -r0.www * r1.xyz + r8.xyz;
  r8.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyz = r3.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyzw = t0.SampleLevel(s0_s, r7.xyz, cb0[2].z).xyzw;
  r7.xyzw = max(float4(0,0,0,0), r7.xyzw);
  r8.xyzw = t0.SampleLevel(s0_s, r8.xyz, cb0[2].z).xyzw;
  r8.xyzw = max(float4(0,0,0,0), r8.xyzw);
  r7.xyzw = r8.xyzw + r7.xyzw;
  r5.xyzw = r2.xxxx * r7.xyzw + r5.xyzw;
  r7.xyz = -r3.xyz * float3(2.5,2.5,2.5) + v1.xyz;
  r8.xyz = -r3.zxy * float3(2.5,2.5,2.5) + r7.xyz;
  r9.xyz = max(float3(-1,-1,-1), r8.xyz);
  r9.xyz = min(float3(1,1,1), r9.xyz);
  r8.xyz = -r9.xyz + r8.xyz;
  r0.w = max(abs(r8.x), abs(r8.y));
  r0.w = max(r0.w, abs(r8.z));
  r8.xyz = -r0.www * r1.xyz + r9.xyz;
  r8.xyzw = t0.SampleLevel(s0_s, r8.xyz, cb0[2].z).xyzw;
  r8.xyzw = max(float4(0,0,0,0), r8.xyzw);
  r9.xyz = r3.xyz * float3(2.5,2.5,2.5) + v1.xyz;
  r10.xyz = -r3.zxy * float3(2.5,2.5,2.5) + r9.xyz;
  r11.xyz = max(float3(-1,-1,-1), r10.xyz);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r10.xyz = -r11.xyz + r10.xyz;
  r0.w = max(abs(r10.x), abs(r10.y));
  r0.w = max(r0.w, abs(r10.z));
  r10.xyz = -r0.www * r1.xyz + r11.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r10.xyz, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r8.xyzw = r10.xyzw + r8.xyzw;
  r5.xyzw = r2.zzzz * r8.xyzw + r5.xyzw;
  r8.xyz = r0.xyz * r0.yyy;
  r0.xyz = r0.xyz * r0.xxx;
  r10.xyz = -r3.zxy * float3(1.5,1.5,1.5) + r9.xyz;
  r11.xyz = max(float3(-1,-1,-1), r10.xyz);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r10.xyz = -r11.xyz + r10.xyz;
  r0.w = max(abs(r10.x), abs(r10.y));
  r0.w = max(r0.w, abs(r10.z));
  r10.xyz = -r0.www * r1.xyz + r11.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r10.xyz, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r11.xyz = -r3.zxy * float3(1.5,1.5,1.5) + r7.xyz;
  r12.xyz = max(float3(-1,-1,-1), r11.xyz);
  r12.xyz = min(float3(1,1,1), r12.xyz);
  r11.xyz = -r12.xyz + r11.xyz;
  r0.w = max(abs(r11.x), abs(r11.y));
  r0.w = max(r0.w, abs(r11.z));
  r11.xyz = -r0.www * r1.xyz + r12.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r10.xyzw = r11.xyzw + r10.xyzw;
  r5.xyzw = r8.zzzz * r10.xyzw + r5.xyzw;
  r10.xyz = -r3.zxy * float3(1.5,1.5,1.5) + r6.xyz;
  r11.xyz = max(float3(-1,-1,-1), r10.xyz);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r10.xyz = -r11.xyz + r10.xyz;
  r0.w = max(abs(r10.x), abs(r10.y));
  r0.w = max(r0.w, abs(r10.z));
  r10.xyz = -r0.www * r1.xyz + r11.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r10.xyz, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r11.xyz = -r3.zxy * float3(1.5,1.5,1.5) + r4.xyz;
  r12.xyz = max(float3(-1,-1,-1), r11.xyz);
  r12.xyz = min(float3(1,1,1), r12.xyz);
  r11.xyz = -r12.xyz + r11.xyz;
  r0.w = max(abs(r11.x), abs(r11.y));
  r0.w = max(r0.w, abs(r11.z));
  r11.xyz = -r0.www * r1.xyz + r12.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r10.xyzw = r11.xyzw + r10.xyzw;
  r10.xyzw = r10.xyzw * r8.yyyy;
  r11.xyz = -r3.zxy * float3(1.5,1.5,1.5) + v1.xyz;
  r12.xyz = max(float3(-1,-1,-1), r11.xyz);
  r12.xyz = min(float3(1,1,1), r12.xyz);
  r11.xyz = -r12.xyz + r11.xyz;
  r0.w = max(abs(r11.x), abs(r11.y));
  r0.w = max(r0.w, abs(r11.z));
  r11.xyz = -r0.www * r1.xyz + r12.xyz;
  r12.xyz = r3.xyz * float3(0.5,0.5,0.5) + r11.xyz;
  r11.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r11.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r12.xyzw = t0.SampleLevel(s0_s, r12.xyz, cb0[2].z).xyzw;
  r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
  r11.xyzw = r12.xyzw + r11.xyzw;
  r10.xyzw = r8.xxxx * r11.xyzw + r10.xyzw;
  r5.xyzw = r10.xyzw + r5.xyzw;
  r10.xyz = max(float3(-1,-1,-1), r7.xyz);
  r10.xyz = min(float3(1,1,1), r10.xyz);
  r11.xyz = -r10.xyz + r7.xyz;
  r0.w = max(abs(r11.x), abs(r11.y));
  r0.w = max(r0.w, abs(r11.z));
  r10.xyz = -r0.www * r1.xyz + r10.xyz;
  r11.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r10.xyz;
  r10.xyz = r3.zxy * float3(0.5,0.5,0.5) + r10.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r10.xyz, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r12.xyz = max(float3(-1,-1,-1), r9.xyz);
  r12.xyz = min(float3(1,1,1), r12.xyz);
  r13.xyz = -r12.xyz + r9.xyz;
  r0.w = max(abs(r13.x), abs(r13.y));
  r0.w = max(r0.w, abs(r13.z));
  r12.xyz = -r0.www * r1.xyz + r12.xyz;
  r13.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r12.xyz;
  r12.xyz = r3.zxy * float3(0.5,0.5,0.5) + r12.xyz;
  r12.xyzw = t0.SampleLevel(s0_s, r12.xyz, cb0[2].z).xyzw;
  r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
  r10.xyzw = r12.xyzw + r10.xyzw;
  r12.xyzw = t0.SampleLevel(s0_s, r13.xyz, cb0[2].z).xyzw;
  r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
  r11.xyzw = r12.xyzw + r11.xyzw;
  r5.xyzw = r0.zzzz * r11.xyzw + r5.xyzw;
  r11.xyz = max(float3(-1,-1,-1), r4.xyz);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r12.xyz = -r11.xyz + r4.xyz;
  r0.w = max(abs(r12.x), abs(r12.y));
  r0.w = max(r0.w, abs(r12.z));
  r11.xyz = -r0.www * r1.xyz + r11.xyz;
  r12.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r11.xyz;
  r11.xyz = r3.zxy * float3(0.5,0.5,0.5) + r11.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r12.xyzw = t0.SampleLevel(s0_s, r12.xyz, cb0[2].z).xyzw;
  r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
  r13.xyz = max(float3(-1,-1,-1), r6.xyz);
  r13.xyz = min(float3(1,1,1), r13.xyz);
  r14.xyz = -r13.xyz + r6.xyz;
  r0.w = max(abs(r14.x), abs(r14.y));
  r0.w = max(r0.w, abs(r14.z));
  r13.xyz = -r0.www * r1.xyz + r13.xyz;
  r14.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r13.xyz;
  r13.xyz = r3.zxy * float3(0.5,0.5,0.5) + r13.xyz;
  r13.xyzw = t0.SampleLevel(s0_s, r13.xyz, cb0[2].z).xyzw;
  r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
  r11.xyzw = r13.xyzw + r11.xyzw;
  r11.xyzw = r11.xyzw * r0.yyyy;
  r13.xyzw = t0.SampleLevel(s0_s, r14.xyz, cb0[2].z).xyzw;
  r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
  r12.xyzw = r13.xyzw + r12.xyzw;
  r12.xyzw = r12.xyzw * r0.yyyy;
  r13.xyz = -r3.xyz * float3(0.5,0.5,0.5) + v1.xyz;
  r14.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r13.xyz;
  r13.xyz = r3.zxy * float3(0.5,0.5,0.5) + r13.xyz;
  r13.xyzw = t0.SampleLevel(s0_s, r13.xyz, cb0[2].z).xyzw;
  r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
  r14.xyzw = t0.SampleLevel(s0_s, r14.xyz, cb0[2].z).xyzw;
  r14.xyzw = max(float4(0,0,0,0), r14.xyzw);
  r15.xyz = r3.xyz * float3(0.5,0.5,0.5) + v1.xyz;
  r16.xyz = -r3.zxy * float3(0.5,0.5,0.5) + r15.xyz;
  r15.xyz = r3.zxy * float3(0.5,0.5,0.5) + r15.xyz;
  r15.xyzw = t0.SampleLevel(s0_s, r15.xyz, cb0[2].z).xyzw;
  r15.xyzw = max(float4(0,0,0,0), r15.xyzw);
  r13.xyzw = r15.xyzw + r13.xyzw;
  r11.xyzw = r0.xxxx * r13.xyzw + r11.xyzw;
  r13.xyzw = t0.SampleLevel(s0_s, r16.xyz, cb0[2].z).xyzw;
  r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
  r13.xyzw = r14.xyzw + r13.xyzw;
  r12.xyzw = r0.xxxx * r13.xyzw + r12.xyzw;
  r5.xyzw = r12.xyzw + r5.xyzw;
  r5.xyzw = r0.zzzz * r10.xyzw + r5.xyzw;
  r0.x = dot(r0.xyz, float3(2,2,2));
  r5.xyzw = r5.xyzw + r11.xyzw;
  r0.yzw = r3.zxy * float3(1.5,1.5,1.5) + r7.xyz;
  r7.xyz = r3.zxy * float3(2.5,2.5,2.5) + r7.xyz;
  r10.xyz = max(float3(-1,-1,-1), r0.yzw);
  r10.xyz = min(float3(1,1,1), r10.xyz);
  r0.yzw = -r10.xyz + r0.yzw;
  r0.y = max(abs(r0.y), abs(r0.z));
  r0.y = max(r0.y, abs(r0.w));
  r0.yzw = -r0.yyy * r1.xyz + r10.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r0.yzw, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r0.yzw = r3.zxy * float3(1.5,1.5,1.5) + r9.xyz;
  r9.xyz = r3.zxy * float3(2.5,2.5,2.5) + r9.xyz;
  r11.xyz = max(float3(-1,-1,-1), r0.yzw);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r0.yzw = -r11.xyz + r0.yzw;
  r0.y = max(abs(r0.y), abs(r0.z));
  r0.y = max(r0.y, abs(r0.w));
  r0.yzw = -r0.yyy * r1.xyz + r11.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r0.yzw, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r10.xyzw = r11.xyzw + r10.xyzw;
  r5.xyzw = r8.zzzz * r10.xyzw + r5.xyzw;
  r0.yzw = r3.zxy * float3(1.5,1.5,1.5) + r4.xyz;
  r4.xyz = r3.zxy * float3(2.5,2.5,2.5) + r4.xyz;
  r10.xyz = max(float3(-1,-1,-1), r0.yzw);
  r10.xyz = min(float3(1,1,1), r10.xyz);
  r0.yzw = -r10.xyz + r0.yzw;
  r0.y = max(abs(r0.y), abs(r0.z));
  r0.y = max(r0.y, abs(r0.w));
  r0.yzw = -r0.yyy * r1.xyz + r10.xyz;
  r10.xyzw = t0.SampleLevel(s0_s, r0.yzw, cb0[2].z).xyzw;
  r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
  r0.yzw = r3.zxy * float3(1.5,1.5,1.5) + r6.xyz;
  r6.xyz = r3.zxy * float3(2.5,2.5,2.5) + r6.xyz;
  r11.xyz = max(float3(-1,-1,-1), r0.yzw);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r0.yzw = -r11.xyz + r0.yzw;
  r0.y = max(abs(r0.y), abs(r0.z));
  r0.y = max(r0.y, abs(r0.w));
  r0.yzw = -r0.yyy * r1.xyz + r11.xyz;
  r11.xyzw = t0.SampleLevel(s0_s, r0.yzw, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r10.xyzw = r11.xyzw + r10.xyzw;
  r10.xyzw = r10.xyzw * r8.yyyy;
  r0.yzw = r3.zxy * float3(1.5,1.5,1.5) + v1.xyz;
  r11.xyz = max(float3(-1,-1,-1), r0.yzw);
  r11.xyz = min(float3(1,1,1), r11.xyz);
  r0.yzw = -r11.xyz + r0.yzw;
  r0.y = max(abs(r0.y), abs(r0.z));
  r0.y = max(r0.y, abs(r0.w));
  r0.yzw = -r0.yyy * r1.xyz + r11.xyz;
  r11.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r0.yzw;
  r0.yzw = r3.xyz * float3(0.5,0.5,0.5) + r0.yzw;
  r12.xyzw = t0.SampleLevel(s0_s, r0.yzw, cb0[2].z).xyzw;
  r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
  r11.xyzw = t0.SampleLevel(s0_s, r11.xyz, cb0[2].z).xyzw;
  r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
  r11.xyzw = r11.xyzw + r12.xyzw;
  r10.xyzw = r8.xxxx * r11.xyzw + r10.xyzw;
  r0.y = dot(r8.xyz, float3(2,2,2));
  r5.xyzw = r10.xyzw + r5.xyzw;
  r8.xyz = max(float3(-1,-1,-1), r9.xyz);
  r8.xyz = min(float3(1,1,1), r8.xyz);
  r9.xyz = r9.xyz + -r8.xyz;
  r0.z = max(abs(r9.x), abs(r9.y));
  r0.z = max(r0.z, abs(r9.z));
  r8.xyz = -r0.zzz * r1.xyz + r8.xyz;
  r8.xyzw = t0.SampleLevel(s0_s, r8.xyz, cb0[2].z).xyzw;
  r8.xyzw = max(float4(0,0,0,0), r8.xyzw);
  r9.xyz = max(float3(-1,-1,-1), r7.xyz);
  r9.xyz = min(float3(1,1,1), r9.xyz);
  r7.xyz = -r9.xyz + r7.xyz;
  r0.z = max(abs(r7.x), abs(r7.y));
  r0.z = max(r0.z, abs(r7.z));
  r7.xyz = -r0.zzz * r1.xyz + r9.xyz;
  r7.xyzw = t0.SampleLevel(s0_s, r7.xyz, cb0[2].z).xyzw;
  r7.xyzw = max(float4(0,0,0,0), r7.xyzw);
  r7.xyzw = r8.xyzw + r7.xyzw;
  r5.xyzw = r2.zzzz * r7.xyzw + r5.xyzw;
  r7.xyz = r3.zxy * float3(2.5,2.5,2.5) + v1.xyz;
  r8.xyz = max(float3(-1,-1,-1), r7.xyz);
  r8.xyz = min(float3(1,1,1), r8.xyz);
  r7.xyz = -r8.xyz + r7.xyz;
  r0.z = max(abs(r7.x), abs(r7.y));
  r0.z = max(r0.z, abs(r7.z));
  r7.xyz = -r0.zzz * r1.xyz + r8.xyz;
  r8.xyz = r3.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r3.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r3.xyzw = t0.SampleLevel(s0_s, r3.xyz, cb0[2].z).xyzw;
  r3.xyzw = max(float4(0,0,0,0), r3.xyzw);
  r7.xyzw = t0.SampleLevel(s0_s, r8.xyz, cb0[2].z).xyzw;
  r7.xyzw = max(float4(0,0,0,0), r7.xyzw);
  r3.xyzw = r7.xyzw + r3.xyzw;
  r7.xyz = max(float3(-1,-1,-1), r6.xyz);
  r7.xyz = min(float3(1,1,1), r7.xyz);
  r6.xyz = -r7.xyz + r6.xyz;
  r0.z = max(abs(r6.x), abs(r6.y));
  r0.z = max(r0.z, abs(r6.z));
  r6.xyz = -r0.zzz * r1.xyz + r7.xyz;
  r6.xyzw = t0.SampleLevel(s0_s, r6.xyz, cb0[2].z).xyzw;
  r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
  r7.xyz = max(float3(-1,-1,-1), r4.xyz);
  r7.xyz = min(float3(1,1,1), r7.xyz);
  r4.xyz = -r7.xyz + r4.xyz;
  r0.z = max(abs(r4.x), abs(r4.y));
  r0.z = max(r0.z, abs(r4.z));
  r1.xyz = -r0.zzz * r1.xyz + r7.xyz;
  r1.xyzw = t0.SampleLevel(s0_s, r1.xyz, cb0[2].z).xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r6.xyzw + r1.xyzw;
  r1.xyzw = r2.yyyy * r1.xyzw;
  r1.xyzw = r2.xxxx * r3.xyzw + r1.xyzw;
  r0.z = dot(r2.xyz, float3(2,2,2));
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.w = r0.z + r0.y;
  r0.x = r0.x * 2 + r0.w;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  o0.xyzw = r1.xyzw / r0.xxxx;
  return;
}"
}
}
}
}
SubShader {
 LOD 200
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 200
  Tags { "RenderType" = "Opaque" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 110730
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: dfc14db65a3f7486
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 5f3e2ba9b14f9f1
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v2.xyzw;
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
"// hash: 80df1b3b826b6a7f
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = t0.SampleLevel(s0_s, v1.xyz, cb0[2].z).xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 6c2a4af699ad442f
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = t0.SampleBias(s0_s, v1.xyz, cb0[2].z).xyzw;
  return;
}"
}
}
}
}
}