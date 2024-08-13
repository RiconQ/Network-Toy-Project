//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/InternalClear" {
Properties {
}
SubShader {
 Pass {
  ColorMask 0 0
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 25140
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
}
}
 Pass {
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 90667
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "gles3 " {
""
}
SubProgram "glcore " {
""
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
}
}
 Pass {
  ColorMask 0 0
  ZClip Off
  ZTest Always
  Cull Off
  GpuProgramID 157985
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
""
}
SubProgram "gles " {
""
}
SubProgram "gles3 " {
""
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
}
}
 Pass {
  ZClip Off
  ZTest Always
  Cull Off
  GpuProgramID 225390
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "gles3 " {
""
}
SubProgram "glcore " {
""
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
}
}
 Pass {
  ColorMask 0 0
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Stencil {
   Comp Always
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 309622
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
}
}
 Pass {
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  Stencil {
   Comp Always
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 381370
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
""
}
SubProgram "gles " {
""
}
SubProgram "glcore " {
""
}
SubProgram "d3d9 " {
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
}
}
 Pass {
  ColorMask 0 0
  ZClip Off
  ZTest Always
  Cull Off
  Stencil {
   Comp Always
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 397027
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
""
}
SubProgram "glcore " {
""
}
SubProgram "gles " {
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
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
}
}
 Pass {
  ZClip Off
  ZTest Always
  Cull Off
  Stencil {
   Comp Always
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 518483
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: 4854ffb0f7847546
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
"// hash: 18f2e0e293209308
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: 35d9a1bd01b0d07d
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
"// hash: f3fdade4d490509c
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: 210dc7a0ec5367a4
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: e32e6c697b6e356f
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
  float4 v1 : COLOR0,
  uint v2 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out uint o2 : SV_RenderTargetArrayIndex0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp((int)v2.x < asint(cb2[0].y));
  r1.y = r1.x ? 0 : 4;
  o2.x = r1.x ? 0 : 1;
  r2.xyzw = cb1[r1.y+25].xyzw * r0.yyyy;
  r2.xyzw = cb1[r1.y+24].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb1[r1.y+26].xyzw * r0.zzzz + r2.xyzw;
  o0.xyzw = cb1[r1.y+27].xyzw * r0.wwww + r2.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 97f3df7e568f3e33
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 913f97e73071881e
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_StereoMatrixVP[2];
uniform highp int unity_StereoEyeIndex;
varying lowp vec4 xlv_COLOR;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (unity_StereoMatrixVP[unity_StereoEyeIndex] * (unity_ObjectToWorld * tmpvar_1));
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_FragData[0] = xlv_COLOR;
}


#endif
"
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 9311c37b7b64d99
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
  float4 v1 : COLOR0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
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
  o1.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: a1780b5a63140924
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in highp vec4 in_POSITION0;
in lowp vec4 in_COLOR0;
out lowp vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
in lowp vec4 vs_COLOR0;
layout(location = 0) out lowp vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 3052629812cabe60
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_StereoMatrixVP[8];
uniform 	int unity_StereoEyeIndex;
in  vec4 in_POSITION0;
in  vec4 in_COLOR0;
out vec4 vs_COLOR0;
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
    vs_COLOR0 = in_COLOR0;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

in  vec4 vs_COLOR0;
layout(location = 0) out vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
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
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
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
Keywords { "STEREO_INSTANCING_ON" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: f72819f4abe173ab



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
Keywords { "STEREO_INSTANCING_ON" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "glcore " {
Keywords { "STEREO_INSTANCING_ON" }
""
}
SubProgram "gles3 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d9 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 2da42e2681f7e662



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "gles " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
SubProgram "d3d11_9x " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// hash: 8b285a4d61574755



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = v1.xyzw;
  return;
}"
}
SubProgram "glcore " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
""
}
}
}
}
}