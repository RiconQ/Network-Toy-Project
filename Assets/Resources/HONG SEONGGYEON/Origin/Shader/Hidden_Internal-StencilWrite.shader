//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-StencilWrite" {
Properties {
}
SubShader {
 Pass {
  ZClip Off
  GpuProgramID 27350
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: b4f8abd0733a5527
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 7953ed76a21a0c22
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  out float4 o0 : SV_POSITION0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
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
SubProgram "d3d11_9x " {
"// hash: 2af5b413125b4d36



// 3Dmigoto declarations
#define cmp -


void main(
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(0,0,0,0);
  return;
}"
}
}
}
}
}