// Compiled shader for Android

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Sprites/Default" {
Properties {
[PerRendererData]  _MainTex ("Sprite Texture", 2D) = "white" { }
 _Color ("Tint", Color) = (1.000000,1.000000,1.000000,1.000000)
[MaterialToggle]  PixelSnap ("Pixel snap", Float) = 0.000000
[HideInInspector]  _RendererColor ("RendererColor", Color) = (1.000000,1.000000,1.000000,1.000000)
[HideInInspector]  _Flip ("Flip", Vector) = (1.000000,1.000000,1.000000,1.000000)
[PerRendererData]  _AlphaTex ("External Alpha", 2D) = "white" { }
[PerRendererData]  _EnableExternalAlpha ("Enable External Alpha", Float) = 0.000000
}
SubShader { 
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" "CanUseSpriteAtlas"="true" "PreviewType"="Plane" }


 // Stats for Vertex shader:
 //         gles: 2 avg math (2..3), 1 avg texture (1..2)
 Pass {
  Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" "CanUseSpriteAtlas"="true" "PreviewType"="Plane" }
  ZWrite Off
  Cull Off
  Blend One OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals813939434" (160 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 1
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals813939434" (160 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 2
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals813939434" (160 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 3
-- Fragment shader for "vulkan":
Shader Disassembly:
 

//////////////////////////////////////////////////////
Keywords set in this variant: ETC1_EXTERNAL_ALPHA 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals3165688960" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals3165688960" (160 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 1
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals3165688960" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals3165688960" (160 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 2
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals3165688960" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals3165688960" (160 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _Color at 144
  Vector4 _RendererColor at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 105

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 72 82 91 95 97
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 RelaxedPrecision
                              MemberDecorate 18 2 Offset 128
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 70 0 BuiltIn Position
                              MemberDecorate 70 1 BuiltIn PointSize
                              MemberDecorate 70 2 BuiltIn ClipDistance
                              Decorate 70 Block
                              Decorate 82 Location 1
                              Decorate 85 RelaxedPrecision
                              Decorate 89 RelaxedPrecision
                              Decorate 91 RelaxedPrecision
                              Decorate 91 Location 0
                              Decorate 95 Location 1
                              Decorate 97 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 0
              23:     21(int) Constant 1
              24:             TypePointer Uniform 7(fvec4)
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              68:     14(int) Constant 1
              69:             TypeArray 6(float) 68
              70:             TypeStruct 7(fvec4) 6(float) 69
              71:             TypePointer Output 70(struct)
              72:     71(ptr) Variable Output
              80:             TypePointer Output 7(fvec4)
              82:     10(ptr) Variable Input
              91:     80(ptr) Variable Output
              93:             TypeVector 6(float) 2
              94:             TypePointer Output 93(fvec2)
              95:     94(ptr) Variable Output
              96:             TypePointer Input 93(fvec2)
              97:     96(ptr) Variable Input
              99:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              25:     24(ptr) AccessChain 20 22 23
              26:    7(fvec4) Load 25
              27:    7(fvec4) FMul 13 26
                              Store 9 27
              28:     24(ptr) AccessChain 20 22 22
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     24(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     24(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     24(ptr) AccessChain 20 23 23
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     24(ptr) AccessChain 20 23 22
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     24(ptr) AccessChain 20 23 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              73:     24(ptr) AccessChain 20 23 44
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 9
              76:    7(fvec4) VectorShuffle 75 75 3 3 3 3
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 48
              79:    7(fvec4) FAdd 77 78
              81:     80(ptr) AccessChain 72 22
                              Store 81 79
              83:    7(fvec4) Load 82
              84:     24(ptr) AccessChain 20 44
              85:    7(fvec4) Load 84
              86:    7(fvec4) FMul 83 85
                              Store 9 86
              87:    7(fvec4) Load 9
              88:     24(ptr) AccessChain 20 35
              89:    7(fvec4) Load 88
              90:    7(fvec4) FMul 87 89
                              Store 9 90
              92:    7(fvec4) Load 9
                              Store 91 92
              98:   93(fvec2) Load 97
                              Store 95 98
             100:     99(ptr) AccessChain 72 22 68
             101:    6(float) Load 100
             102:    6(float) FNegate 101
             103:     99(ptr) AccessChain 72 22 68
                              Store 103 102
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 3
-- Fragment shader for "vulkan":
Shader Disassembly:
 

//////////////////////////////////////////////////////
Keywords set in this variant: PIXELSNAP_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = (texture2D (_MainTex, xlv_TEXCOORD0) * xlv_COLOR);
  c_1.w = tmpvar_2.w;
  c_1.xyz = (tmpvar_2.xyz * tmpvar_2.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform lowp sampler2D _MainTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
lowp vec4 u_xlat10_0;
void main()
{
    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals834617063" (176 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 1
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals834617063" (176 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 2
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "VGlobals834617063" (176 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 44

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 23 27
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17 Location 1
                              Decorate 20 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 23 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 24 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 27 RelaxedPrecision
                              Decorate 27 Location 0
                              Decorate 29 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              Decorate 31 RelaxedPrecision
                              Decorate 32 RelaxedPrecision
                              Decorate 33 RelaxedPrecision
                              Decorate 40 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
              17:     16(ptr) Variable Input
              20:      8(ptr) Variable Private
              22:             TypePointer Input 7(fvec4)
              23:     22(ptr) Variable Input
              26:             TypePointer Output 7(fvec4)
              27:     26(ptr) Variable Output
              28:             TypeVector 6(float) 3
              36:             TypeInt 32 0
              37:     36(int) Constant 3
              38:             TypePointer Private 6(float)
              41:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              14:          11 Load 13
              18:   15(fvec2) Load 17
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              21:    7(fvec4) Load 9
              24:    7(fvec4) Load 23
              25:    7(fvec4) FMul 21 24
                              Store 20 25
              29:    7(fvec4) Load 20
              30:   28(fvec3) VectorShuffle 29 29 3 3 3
              31:    7(fvec4) Load 20
              32:   28(fvec3) VectorShuffle 31 31 0 1 2
              33:   28(fvec3) FMul 30 32
              34:    7(fvec4) Load 27
              35:    7(fvec4) VectorShuffle 34 33 4 5 6 3
                              Store 27 35
              39:     38(ptr) AccessChain 20 37
              40:    6(float) Load 39
              42:     41(ptr) AccessChain 27 37
                              Store 42 40
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 3
-- Fragment shader for "vulkan":
Shader Disassembly:
 

//////////////////////////////////////////////////////
Keywords set in this variant: ETC1_EXTERNAL_ALPHA PIXELSNAP_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 3 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ScreenParams;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixVP;
uniform lowp vec4 _RendererColor;
uniform lowp vec4 _Color;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  tmpvar_1 = ((_glesColor * _Color) * _RendererColor);
  highp vec4 pos_4;
  pos_4.zw = tmpvar_2.zw;
  highp vec2 tmpvar_5;
  tmpvar_5 = (_ScreenParams.xy * 0.5);
  pos_4.xy = ((floor(
    (((tmpvar_2.xy / tmpvar_2.w) * tmpvar_5) + vec2(0.5, 0.5))
  ) / tmpvar_5) * tmpvar_2.w);
  gl_Position = pos_4;
  xlv_COLOR = tmpvar_1;
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp float _EnableExternalAlpha;
uniform sampler2D _MainTex;
uniform sampler2D _AlphaTex;
varying lowp vec4 xlv_COLOR;
varying highp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 c_1;
  lowp vec4 color_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MainTex, xlv_TEXCOORD0);
  color_2.xyz = tmpvar_3.xyz;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_AlphaTex, xlv_TEXCOORD0);
  highp float tmpvar_5;
  tmpvar_5 = mix (tmpvar_3.w, tmpvar_4.x, _EnableExternalAlpha);
  color_2.w = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = (color_2 * xlv_COLOR);
  c_1.w = tmpvar_6.w;
  c_1.xyz = (tmpvar_6.xyz * tmpvar_6.w);
  gl_FragData[0] = c_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Shader Disassembly:
#ifdef VERTEX
#version 300 es

uniform 	vec4 _ScreenParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _RendererColor;
uniform 	mediump vec4 _Color;
in highp vec4 in_POSITION0;
in highp vec4 in_COLOR0;
in highp vec2 in_TEXCOORD0;
out mediump vec4 vs_COLOR0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xy;
    u_xlat0.xy = roundEven(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat0.ww * u_xlat0.xy;
    gl_Position.zw = u_xlat0.zw;
    u_xlat0 = in_COLOR0 * _Color;
    u_xlat0 = u_xlat0 * _RendererColor;
    vs_COLOR0 = u_xlat0;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp int;
uniform 	float _EnableExternalAlpha;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _AlphaTex;
in mediump vec4 vs_COLOR0;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
float u_xlat0;
mediump vec4 u_xlat16_0;
lowp float u_xlat10_0;
vec4 u_xlat1;
void main()
{
    u_xlat10_0 = texture(_AlphaTex, vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy);
    u_xlat0 = u_xlat10_0 + (-u_xlat1.w);
    u_xlat1.w = _EnableExternalAlpha * u_xlat0 + u_xlat1.w;
    u_xlat16_0 = u_xlat1 * vs_COLOR0;
    SV_Target0.xyz = u_xlat16_0.www * u_xlat16_0.xyz;
    SV_Target0.w = u_xlat16_0.w;
    return;
}

#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles3":
Shader Disassembly:
// All GLSL source is contained within the vertex program

-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals2511819792" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals2511819792" (176 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 1
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals2511819792" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals2511819792" (176 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 2
-- Fragment shader for "vulkan":
Shader Disassembly:
 

-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"
Uses vertex data channel "TexCoord"

Set 2D Texture "_AlphaTex" to set: 0, binding: 1, used in: Fragment 
Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment 

Constant Buffer "PGlobals2511819792" (4 bytes) on set: 1, binding: 0, used in: Fragment  {
  Float _EnableExternalAlpha at 0
}
Constant Buffer "VGlobals2511819792" (176 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 80
  Matrix4x4 unity_ObjectToWorld at 16
  Vector4 _Color at 160
  Vector4 _RendererColor at 144
  Vector4 _ScreenParams at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 152

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 114 129 139 142 144
                              Decorate 11 Location 0
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 16
                              MemberDecorate 18 2 Offset 80
                              MemberDecorate 18 3 RelaxedPrecision
                              MemberDecorate 18 3 Offset 144
                              MemberDecorate 18 4 RelaxedPrecision
                              MemberDecorate 18 4 Offset 160
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 1
                              MemberDecorate 112 0 BuiltIn Position
                              MemberDecorate 112 1 BuiltIn PointSize
                              MemberDecorate 112 2 BuiltIn ClipDistance
                              Decorate 112 Block
                              Decorate 129 Location 1
                              Decorate 133 RelaxedPrecision
                              Decorate 137 RelaxedPrecision
                              Decorate 139 RelaxedPrecision
                              Decorate 139 Location 0
                              Decorate 142 Location 1
                              Decorate 144 Location 2
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 7(fvec4) 15
              17:             TypeArray 7(fvec4) 15
              18:             TypeStruct 7(fvec4) 16 17 7(fvec4) 7(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 1
              23:             TypePointer Uniform 7(fvec4)
              27:     21(int) Constant 0
              35:     21(int) Constant 2
              44:     21(int) Constant 3
              48:      8(ptr) Variable Private
              75:             TypeVector 6(float) 2
              86:    6(float) Constant 1056964608
              87:   75(fvec2) ConstantComposite 86 86
             110:     14(int) Constant 1
             111:             TypeArray 6(float) 110
             112:             TypeStruct 7(fvec4) 6(float) 111
             113:             TypePointer Output 112(struct)
             114:    113(ptr) Variable Output
             120:             TypePointer Output 7(fvec4)
             129:     10(ptr) Variable Input
             131:     21(int) Constant 4
             139:    120(ptr) Variable Output
             141:             TypePointer Output 75(fvec2)
             142:    141(ptr) Variable Output
             143:             TypePointer Input 75(fvec2)
             144:    143(ptr) Variable Input
             146:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              12:    7(fvec4) Load 11
              13:    7(fvec4) VectorShuffle 12 12 1 1 1 1
              24:     23(ptr) AccessChain 20 22 22
              25:    7(fvec4) Load 24
              26:    7(fvec4) FMul 13 25
                              Store 9 26
              28:     23(ptr) AccessChain 20 22 27
              29:    7(fvec4) Load 28
              30:    7(fvec4) Load 11
              31:    7(fvec4) VectorShuffle 30 30 0 0 0 0
              32:    7(fvec4) FMul 29 31
              33:    7(fvec4) Load 9
              34:    7(fvec4) FAdd 32 33
                              Store 9 34
              36:     23(ptr) AccessChain 20 22 35
              37:    7(fvec4) Load 36
              38:    7(fvec4) Load 11
              39:    7(fvec4) VectorShuffle 38 38 2 2 2 2
              40:    7(fvec4) FMul 37 39
              41:    7(fvec4) Load 9
              42:    7(fvec4) FAdd 40 41
                              Store 9 42
              43:    7(fvec4) Load 9
              45:     23(ptr) AccessChain 20 22 44
              46:    7(fvec4) Load 45
              47:    7(fvec4) FAdd 43 46
                              Store 9 47
              49:    7(fvec4) Load 9
              50:    7(fvec4) VectorShuffle 49 49 1 1 1 1
              51:     23(ptr) AccessChain 20 35 22
              52:    7(fvec4) Load 51
              53:    7(fvec4) FMul 50 52
                              Store 48 53
              54:     23(ptr) AccessChain 20 35 27
              55:    7(fvec4) Load 54
              56:    7(fvec4) Load 9
              57:    7(fvec4) VectorShuffle 56 56 0 0 0 0
              58:    7(fvec4) FMul 55 57
              59:    7(fvec4) Load 48
              60:    7(fvec4) FAdd 58 59
                              Store 48 60
              61:     23(ptr) AccessChain 20 35 35
              62:    7(fvec4) Load 61
              63:    7(fvec4) Load 9
              64:    7(fvec4) VectorShuffle 63 63 2 2 2 2
              65:    7(fvec4) FMul 62 64
              66:    7(fvec4) Load 48
              67:    7(fvec4) FAdd 65 66
                              Store 48 67
              68:     23(ptr) AccessChain 20 35 44
              69:    7(fvec4) Load 68
              70:    7(fvec4) Load 9
              71:    7(fvec4) VectorShuffle 70 70 3 3 3 3
              72:    7(fvec4) FMul 69 71
              73:    7(fvec4) Load 48
              74:    7(fvec4) FAdd 72 73
                              Store 9 74
              76:    7(fvec4) Load 9
              77:   75(fvec2) VectorShuffle 76 76 0 1
              78:    7(fvec4) Load 9
              79:   75(fvec2) VectorShuffle 78 78 3 3
              80:   75(fvec2) FDiv 77 79
              81:    7(fvec4) Load 9
              82:    7(fvec4) VectorShuffle 81 80 4 5 2 3
                              Store 9 82
              83:     23(ptr) AccessChain 20 27
              84:    7(fvec4) Load 83
              85:   75(fvec2) VectorShuffle 84 84 0 1
              88:   75(fvec2) FMul 85 87
              89:    7(fvec4) Load 48
              90:    7(fvec4) VectorShuffle 89 88 4 5 2 3
                              Store 48 90
              91:    7(fvec4) Load 9
              92:   75(fvec2) VectorShuffle 91 91 0 1
              93:    7(fvec4) Load 48
              94:   75(fvec2) VectorShuffle 93 93 0 1
              95:   75(fvec2) FMul 92 94
              96:    7(fvec4) Load 9
              97:    7(fvec4) VectorShuffle 96 95 4 5 2 3
                              Store 9 97
              98:    7(fvec4) Load 9
              99:   75(fvec2) VectorShuffle 98 98 0 1
             100:   75(fvec2) ExtInst 1(GLSL.std.450) 2(RoundEven) 99
             101:    7(fvec4) Load 9
             102:    7(fvec4) VectorShuffle 101 100 4 5 2 3
                              Store 9 102
             103:    7(fvec4) Load 9
             104:   75(fvec2) VectorShuffle 103 103 0 1
             105:    7(fvec4) Load 48
             106:   75(fvec2) VectorShuffle 105 105 0 1
             107:   75(fvec2) FDiv 104 106
             108:    7(fvec4) Load 9
             109:    7(fvec4) VectorShuffle 108 107 4 5 2 3
                              Store 9 109
             115:    7(fvec4) Load 9
             116:   75(fvec2) VectorShuffle 115 115 3 3
             117:    7(fvec4) Load 9
             118:   75(fvec2) VectorShuffle 117 117 0 1
             119:   75(fvec2) FMul 116 118
             121:    120(ptr) AccessChain 114 27
             122:    7(fvec4) Load 121
             123:    7(fvec4) VectorShuffle 122 119 4 5 2 3
                              Store 121 123
             124:    7(fvec4) Load 9
             125:   75(fvec2) VectorShuffle 124 124 2 3
             126:    120(ptr) AccessChain 114 27
             127:    7(fvec4) Load 126
             128:    7(fvec4) VectorShuffle 127 125 0 1 4 5
                              Store 126 128
             130:    7(fvec4) Load 129
             132:     23(ptr) AccessChain 20 131
             133:    7(fvec4) Load 132
             134:    7(fvec4) FMul 130 133
                              Store 9 134
             135:    7(fvec4) Load 9
             136:     23(ptr) AccessChain 20 44
             137:    7(fvec4) Load 136
             138:    7(fvec4) FMul 135 137
                              Store 9 138
             140:    7(fvec4) Load 9
                              Store 139 140
             145:   75(fvec2) Load 144
                              Store 142 145
             147:    146(ptr) AccessChain 114 27 110
             148:    6(float) Load 147
             149:    6(float) FNegate 148
             150:    146(ptr) AccessChain 114 27 110
                              Store 150 149
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80001
// Id's are bound by 71

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 16 53 57
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 8 RelaxedPrecision
                              Decorate 12 RelaxedPrecision
                              Decorate 12 DescriptorSet 0
                              Decorate 12 Binding 1
                              Decorate 13 RelaxedPrecision
                              Decorate 16 Location 1
                              Decorate 22 RelaxedPrecision
                              Decorate 25 RelaxedPrecision
                              Decorate 25 DescriptorSet 0
                              Decorate 25 Binding 0
                              Decorate 26 RelaxedPrecision
                              Decorate 30 RelaxedPrecision
                              MemberDecorate 36 0 Offset 0
                              Decorate 36 Block
                              Decorate 38 DescriptorSet 1
                              Decorate 38 Binding 0
                              Decorate 50 RelaxedPrecision
                              Decorate 53 RelaxedPrecision
                              Decorate 53 Location 0
                              Decorate 54 RelaxedPrecision
                              Decorate 57 RelaxedPrecision
                              Decorate 57 Location 0
                              Decorate 59 RelaxedPrecision
                              Decorate 60 RelaxedPrecision
                              Decorate 61 RelaxedPrecision
                              Decorate 62 RelaxedPrecision
                              Decorate 63 RelaxedPrecision
                              Decorate 67 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypePointer Private 6(float)
               8:      7(ptr) Variable Private
               9:             TypeImage 6(float) 2D sampled format:Unknown
              10:             TypeSampledImage 9
              11:             TypePointer UniformConstant 10
              12:     11(ptr) Variable UniformConstant
              14:             TypeVector 6(float) 2
              15:             TypePointer Input 14(fvec2)
              16:     15(ptr) Variable Input
              18:             TypeVector 6(float) 4
              20:             TypeInt 32 0
              21:     20(int) Constant 0
              23:             TypePointer Private 18(fvec4)
              24:     23(ptr) Variable Private
              25:     11(ptr) Variable UniformConstant
              29:      7(ptr) Variable Private
              31:     20(int) Constant 3
              36:             TypeStruct 6(float)
              37:             TypePointer Uniform 36(struct)
              38:     37(ptr) Variable Uniform
              39:             TypeInt 32 1
              40:     39(int) Constant 0
              41:             TypePointer Uniform 6(float)
              50:     23(ptr) Variable Private
              52:             TypePointer Input 18(fvec4)
              53:     52(ptr) Variable Input
              56:             TypePointer Output 18(fvec4)
              57:     56(ptr) Variable Output
              58:             TypeVector 6(float) 3
              68:             TypePointer Output 6(float)
               4:           2 Function None 3
               5:             Label
              13:          10 Load 12
              17:   14(fvec2) Load 16
              19:   18(fvec4) ImageSampleImplicitLod 13 17
              22:    6(float) CompositeExtract 19 0
                              Store 8 22
              26:          10 Load 25
              27:   14(fvec2) Load 16
              28:   18(fvec4) ImageSampleImplicitLod 26 27
                              Store 24 28
              30:    6(float) Load 8
              32:      7(ptr) AccessChain 24 31
              33:    6(float) Load 32
              34:    6(float) FNegate 33
              35:    6(float) FAdd 30 34
                              Store 29 35
              42:     41(ptr) AccessChain 38 40
              43:    6(float) Load 42
              44:    6(float) Load 29
              45:    6(float) FMul 43 44
              46:      7(ptr) AccessChain 24 31
              47:    6(float) Load 46
              48:    6(float) FAdd 45 47
              49:      7(ptr) AccessChain 24 31
                              Store 49 48
              51:   18(fvec4) Load 24
              54:   18(fvec4) Load 53
              55:   18(fvec4) FMul 51 54
                              Store 50 55
              59:   18(fvec4) Load 50
              60:   58(fvec3) VectorShuffle 59 59 3 3 3
              61:   18(fvec4) Load 50
              62:   58(fvec3) VectorShuffle 61 61 0 1 2
              63:   58(fvec3) FMul 60 62
              64:   18(fvec4) Load 57
              65:   18(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 57 65
              66:      7(ptr) AccessChain 50 31
              67:    6(float) Load 66
              69:     68(ptr) AccessChain 57 31
                              Store 69 67
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



-- Hardware tier variant: Tier 3
-- Fragment shader for "vulkan":
Shader Disassembly:
 

 }
}
}