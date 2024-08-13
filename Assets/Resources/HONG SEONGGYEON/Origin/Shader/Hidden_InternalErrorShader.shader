//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/InternalErrorShader" {
Properties {
}
SubShader {
 Pass {
  ZClip Off
  GpuProgramID 59949
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
SubProgram "gles " {
"// hash: d2320d65b411f011
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp mat4 glstate_matrix_mvp;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
}


#endif
#ifdef FRAGMENT
void main ()
{
  gl_FragData[0] = vec4(1.0, 0.0, 1.0, 1.0);
}


#endif
"
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
SubProgram "gles3 " {
"// hash: 41302f6755c60eff
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: d459ec27ec311133
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a198111215236314
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[32];
}

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = asuint(cb2[0].x) << 2;
  r2.xyzw = cb1[r1.x+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.x+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.x+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.x+27].xyzw * r0.wwww + r2.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 4bec8e4a342c01f1
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
}


#endif
#ifdef FRAGMENT
void main ()
{
  gl_FragData[0] = vec4(1.0, 0.0, 1.0, 1.0);
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 52efd80375078f87
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[32];
}

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = asuint(cb2[0].x) << 2;
  r2.xyzw = cb1[r1.x+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.x+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.x+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.x+27].xyzw * r0.wwww + r2.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8a38c1b59dae9717
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
vec4 u_xlat0;
int u_xlati1;
vec4 u_xlat2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlati1 = unity_StereoEyeIndex << 2;
    u_xlat2 = u_xlat0.yyyy * hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 1];
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1] * u_xlat0.xxxx + u_xlat2;
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 2] * u_xlat0.zzzz + u_xlat2;
    gl_Position = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 3] * u_xlat0.wwww + u_xlat2;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a2d65ec1360b6063
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
vec4 u_xlat0;
int u_xlati1;
vec4 u_xlat2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlati1 = unity_StereoEyeIndex << 2;
    u_xlat2 = u_xlat0.yyyy * hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 1];
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1] * u_xlat0.xxxx + u_xlat2;
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 2] * u_xlat0.zzzz + u_xlat2;
    gl_Position = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 3] * u_xlat0.wwww + u_xlat2;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: fdf437e880841650
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[32];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out uint o1 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v1.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o1.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 4bec8e4a342c01f1
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
}


#endif
#ifdef FRAGMENT
void main ()
{
  gl_FragData[0] = vec4(1.0, 0.0, 1.0, 1.0);
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 52efd80375078f87
cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[32];
}

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = asuint(cb2[0].x) << 2;
  r2.xyzw = cb1[r1.x+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.x+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.x+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.x+27].xyzw * r0.wwww + r2.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8a38c1b59dae9717
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
vec4 u_xlat0;
int u_xlati1;
vec4 u_xlat2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlati1 = unity_StereoEyeIndex << 2;
    u_xlat2 = u_xlat0.yyyy * hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 1];
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1] * u_xlat0.xxxx + u_xlat2;
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 2] * u_xlat0.zzzz + u_xlat2;
    gl_Position = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 3] * u_xlat0.wwww + u_xlat2;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a2d65ec1360b6063
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
vec4 u_xlat0;
int u_xlati1;
vec4 u_xlat2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlati1 = unity_StereoEyeIndex << 2;
    u_xlat2 = u_xlat0.yyyy * hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 1];
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1] * u_xlat0.xxxx + u_xlat2;
    u_xlat2 = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 2] * u_xlat0.zzzz + u_xlat2;
    gl_Position = hlslcc_mtx4x4unity_StereoMatrixVP[u_xlati1 + 3] * u_xlat0.wwww + u_xlat2;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vec4(1.0, 0.0, 1.0, 1.0);
    return;
}

#endif
"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 8a092752af82b346



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: d6e7ee0a9c86d590



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles3 " {
""
}
SubProgram "glcore " {
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8a092752af82b346



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: d6e7ee0a9c86d590



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a6e412c9043a1a0d



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  uint v1 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: d6e7ee0a9c86d590



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = float4(1,0,1,1);
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
}
}
}
}