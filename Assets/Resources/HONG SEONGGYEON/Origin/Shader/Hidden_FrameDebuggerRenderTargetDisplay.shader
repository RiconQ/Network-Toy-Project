//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/FrameDebuggerRenderTargetDisplay" {
Properties {
_MainTex ("", any) = "white" { }
}
SubShader {
 Tags { "ForceSupported" = "true" }
 Pass {
  Tags { "ForceSupported" = "true" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 50908
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: d9c598c4c0e1ed06
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
SubProgram "gles " {
"// hash: 3926367a623feb7c
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xyz;
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _Channels;
uniform mediump vec4 _Levels;
uniform sampler2D _MainTex;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  tex_1 = tmpvar_2;
  lowp vec4 tmpvar_3;
  mediump vec4 col_4;
  col_4 = (tex_1 - _Levels.xxxx);
  col_4 = (col_4 / (_Levels.yyyy - _Levels.xxxx));
  col_4 = (col_4 * _Channels);
  lowp float tmpvar_5;
  tmpvar_5 = dot (_Channels, vec4(1.0, 1.0, 1.0, 1.0));
  if ((tmpvar_5 == 1.0)) {
    col_4 = vec4(dot (col_4, vec4(1.0, 1.0, 1.0, 1.0)));
  };
  tmpvar_3 = col_4;
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
SubProgram "d3d11_9x " {
"// hash: b3dd2ec52ddf2216
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
SubProgram "gles3 " {
"// hash: 8523311799ea93e6
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in highp vec3 in_TEXCOORD0;
out highp vec3 vs_TEXCOORD0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_TEXCOORD0.xyz = in_TEXCOORD0.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	lowp vec4 _Channels;
uniform 	mediump vec4 _Levels;
uniform lowp sampler2D _MainTex;
in highp vec3 vs_TEXCOORD0;
layout(location = 0) out lowp vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
mediump float u_xlat16_1;
lowp float u_xlat10_2;
bool u_xlatb3;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 + (-_Levels.xxxx);
    u_xlat16_1 = (-_Levels.x) + _Levels.y;
    u_xlat16_0 = u_xlat16_0 / vec4(u_xlat16_1);
    u_xlat16_0 = u_xlat16_0 * _Channels;
    u_xlat16_1 = dot(u_xlat16_0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat10_2 = dot(_Channels, vec4(1.0, 1.0, 1.0, 1.0));
#ifdef UNITY_ADRENO_ES3
    u_xlatb3 = !!(u_xlat10_2==1.0);
#else
    u_xlatb3 = u_xlat10_2==1.0;
#endif
    u_xlat16_0 = (bool(u_xlatb3)) ? vec4(u_xlat16_1) : u_xlat16_0;
    SV_Target0 = u_xlat16_0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: c844c641837fbde2
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec3 in_TEXCOORD0;
out vec3 vs_TEXCOORD0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_TEXCOORD0.xyz = in_TEXCOORD0.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 _Channels;
uniform 	vec4 _Levels;
uniform  sampler2D _MainTex;
in  vec3 vs_TEXCOORD0;
layout(location = 0) out vec4 SV_Target0;
vec4 u_xlat0;
lowp vec4 u_xlat10_0;
float u_xlat1;
float u_xlat3;
bool u_xlatb3;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-_Levels.xxxx);
    u_xlat1 = (-_Levels.x) + _Levels.y;
    u_xlat0 = u_xlat0 / vec4(u_xlat1);
    u_xlat0 = u_xlat0 * _Channels;
    u_xlat1 = dot(u_xlat0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat3 = dot(_Channels, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlatb3 = u_xlat3==1.0;
    SV_Target0 = (bool(u_xlatb3)) ? vec4(u_xlat1) : u_xlat0;
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
"// hash: fd4aa4549f1dba0a
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
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyzw = -cb0[3].xxxx + r0.xyzw;
  r1.x = cb0[3].y + -cb0[3].x;
  r0.xyzw = r0.xyzw / r1.xxxx;
  r0.xyzw = cb0[2].xyzw * r0.xyzw;
  r1.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.y = dot(cb0[2].xyzw, float4(1,1,1,1));
  r1.y = cmp(r1.y == 1.000000);
  o0.xyzw = r1.yyyy ? r1.xxxx : r0.xyzw;
  return;
}"
}
SubProgram "gles " {
""
}
SubProgram "d3d11_9x " {
"// hash: 9b49f745f5d71820
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
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyzw = -cb0[3].xxxx + r0.xyzw;
  r1.x = cb0[3].y + -cb0[3].x;
  r0.xyzw = r0.xyzw / r1.xxxx;
  r0.xyzw = cb0[2].xyzw * r0.xyzw;
  r1.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.y = dot(cb0[2].xyzw, float4(1,1,1,1));
  r1.y = cmp(r1.y == 1.000000);
  o0.xyzw = r1.yyyy ? r1.xxxx : r0.xyzw;
  return;
}"
}
SubProgram "gles3 " {
""
}
SubProgram "glcore " {
""
}
}
}
 Pass {
  Tags { "ForceSupported" = "true" }
  ZClip Off
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 106630
Program "vp" {
SubProgram "d3d9 " {
"// disassembly error HRESULT: [0x8876086C]
"
}
SubProgram "d3d11 " {
"// hash: d9c598c4c0e1ed06
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: b3dd2ec52ddf2216
cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[1].xyzw * v0.yyyy;
  r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
  r0.xyzw = cb0[2].xyzw * v0.zzzz + r0.xyzw;
  o0.xyzw = cb0[3].xyzw + r0.xyzw;
  o1.xyz = v1.xyz;
  return;
}"
}
SubProgram "gles " {
"// hash: 596f3ea822587b77
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  gl_Position = (glstate_matrix_mvp * tmpvar_1);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xyz;
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _Channels;
uniform mediump vec4 _Levels;
uniform lowp samplerCube _MainTex;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = textureCube (_MainTex, xlv_TEXCOORD0);
  tex_1 = tmpvar_2;
  lowp vec4 tmpvar_3;
  mediump vec4 col_4;
  col_4 = (tex_1 - _Levels.xxxx);
  col_4 = (col_4 / (_Levels.yyyy - _Levels.xxxx));
  col_4 = (col_4 * _Channels);
  lowp float tmpvar_5;
  tmpvar_5 = dot (_Channels, vec4(1.0, 1.0, 1.0, 1.0));
  if ((tmpvar_5 == 1.0)) {
    col_4 = vec4(dot (col_4, vec4(1.0, 1.0, 1.0, 1.0)));
  };
  tmpvar_3 = col_4;
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
SubProgram "gles3 " {
"// hash: c8c45bcc452e5331
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in highp vec4 in_POSITION0;
in highp vec3 in_TEXCOORD0;
out highp vec3 vs_TEXCOORD0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_TEXCOORD0.xyz = in_TEXCOORD0.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	lowp vec4 _Channels;
uniform 	mediump vec4 _Levels;
uniform lowp samplerCube _MainTex;
in highp vec3 vs_TEXCOORD0;
layout(location = 0) out lowp vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
mediump float u_xlat16_1;
lowp float u_xlat10_2;
bool u_xlatb3;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xyz);
    u_xlat16_0 = u_xlat10_0 + (-_Levels.xxxx);
    u_xlat16_1 = (-_Levels.x) + _Levels.y;
    u_xlat16_0 = u_xlat16_0 / vec4(u_xlat16_1);
    u_xlat16_0 = u_xlat16_0 * _Channels;
    u_xlat16_1 = dot(u_xlat16_0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat10_2 = dot(_Channels, vec4(1.0, 1.0, 1.0, 1.0));
#ifdef UNITY_ADRENO_ES3
    u_xlatb3 = !!(u_xlat10_2==1.0);
#else
    u_xlatb3 = u_xlat10_2==1.0;
#endif
    u_xlat16_0 = (bool(u_xlatb3)) ? vec4(u_xlat16_1) : u_xlat16_0;
    SV_Target0 = u_xlat16_0;
    return;
}

#endif
"
}
SubProgram "glcore " {
"// hash: b70a3bf6373073bf
#ifdef VERTEX
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 hlslcc_mtx4x4glstate_matrix_mvp[4];
in  vec4 in_POSITION0;
in  vec3 in_TEXCOORD0;
out vec3 vs_TEXCOORD0;
vec4 u_xlat0;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4glstate_matrix_mvp[1];
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4glstate_matrix_mvp[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + hlslcc_mtx4x4glstate_matrix_mvp[3];
    vs_TEXCOORD0.xyz = in_TEXCOORD0.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 150
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shader_bit_encoding : enable

uniform 	vec4 _Channels;
uniform 	vec4 _Levels;
uniform  samplerCube _MainTex;
in  vec3 vs_TEXCOORD0;
layout(location = 0) out vec4 SV_Target0;
vec4 u_xlat0;
lowp vec4 u_xlat10_0;
float u_xlat1;
float u_xlat3;
bool u_xlatb3;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xyz);
    u_xlat0 = u_xlat10_0 + (-_Levels.xxxx);
    u_xlat1 = (-_Levels.x) + _Levels.y;
    u_xlat0 = u_xlat0 / vec4(u_xlat1);
    u_xlat0 = u_xlat0 * _Channels;
    u_xlat1 = dot(u_xlat0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat3 = dot(_Channels, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlatb3 = u_xlat3==1.0;
    SV_Target0 = (bool(u_xlatb3)) ? vec4(u_xlat1) : u_xlat0;
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
"// hash: 40e02ed3e7703013
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xyz).xyzw;
  r0.xyzw = -cb0[3].xxxx + r0.xyzw;
  r1.x = cb0[3].y + -cb0[3].x;
  r0.xyzw = r0.xyzw / r1.xxxx;
  r0.xyzw = cb0[2].xyzw * r0.xyzw;
  r1.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.y = dot(cb0[2].xyzw, float4(1,1,1,1));
  r1.y = cmp(r1.y == 1.000000);
  o0.xyzw = r1.yyyy ? r1.xxxx : r0.xyzw;
  return;
}"
}
SubProgram "d3d11_9x " {
"// hash: e2ad884078b6bb26
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xyz).xyzw;
  r0.xyzw = -cb0[3].xxxx + r0.xyzw;
  r1.x = cb0[3].y + -cb0[3].x;
  r0.xyzw = r0.xyzw / r1.xxxx;
  r0.xyzw = cb0[2].xyzw * r0.xyzw;
  r1.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.y = dot(cb0[2].xyzw, float4(1,1,1,1));
  r1.y = cmp(r1.y == 1.000000);
  o0.xyzw = r1.yyyy ? r1.xxxx : r0.xyzw;
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
}
}
}
}