// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge Beta 0.34 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32781,y:32611|diff-3812-OUT,spec-4584-OUT,gloss-3510-OUT,normal-4437-OUT;n:type:ShaderForge.SFN_Tex2d,id:5,x:34627,y:31763,ptlb:DIF_01_Main,ptin:_DIF_01_Main,tex:751f85acc91a40248ac8ba391369575b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6,x:34627,y:31954,ptlb:DIF_02(R),ptin:_DIF_02R,tex:7131d2766f8aafb408b44712d0f5b13c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9,x:35147,y:33395,ptlb:MASK,ptin:_MASK,tex:e82ff90d25ff32c4d945349cd97ab221,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:3510,x:32652,y:32420,ptlb:Gloss,ptin:_Gloss,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Tex2d,id:3623,x:33184,y:33862,ptlb:NRM_Detail,ptin:_NRM_Detail,tex:471f885e3f0454940b4d511cc5a6d2c7,ntxv:3,isnm:True|UVIN-3625-OUT;n:type:ShaderForge.SFN_TexCoord,id:3624,x:35731,y:32585,uv:0;n:type:ShaderForge.SFN_Multiply,id:3625,x:35565,y:32676|A-3624-UVOUT,B-3626-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3626,x:35746,y:32789,ptlb:Tile_Detail,ptin:_Tile_Detail,glob:False,v1:5;n:type:ShaderForge.SFN_ComponentMask,id:3627,x:32954,y:33869,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3623-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:3694,x:34534,y:31453,ptlb:Detail_Map,ptin:_Detail_Map,glob:False,tex:ddc72411de12602459390524277bc378;n:type:ShaderForge.SFN_Tex2d,id:3702,x:34378,y:31380,tex:ddc72411de12602459390524277bc378,ntxv:0,isnm:False|UVIN-3625-OUT,TEX-3694-TEX;n:type:ShaderForge.SFN_Desaturate,id:3726,x:34209,y:31341|COL-3702-RGB,DES-3806-OUT;n:type:ShaderForge.SFN_Slider,id:3806,x:34455,y:31273,ptlb:Detail_Desaturate,ptin:_Detail_Desaturate,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:3808,x:33667,y:31796|A-4610-OUT,B-4110-OUT;n:type:ShaderForge.SFN_Vector1,id:3810,x:33620,y:31933,v1:0.5;n:type:ShaderForge.SFN_If,id:3812,x:33421,y:31916|A-4151-OUT,B-3810-OUT,GT-4625-OUT,EQ-4110-OUT,LT-4110-OUT;n:type:ShaderForge.SFN_Tex2d,id:3925,x:34627,y:32153,ptlb:DIF_03(G),ptin:_DIF_03G,tex:f663bf70a1fda0c429c8813af4779f7f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3968,x:34627,y:32347,ptlb:DIF_04(B),ptin:_DIF_04B,tex:ddc72411de12602459390524277bc378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ToggleProperty,id:4079,x:34398,y:31721,ptlb:R_Channel_Mask,ptin:_R_Channel_Mask,on:False;n:type:ShaderForge.SFN_Lerp,id:4088,x:34136,y:31766|A-4096-OUT,B-6-RGB,T-4089-OUT;n:type:ShaderForge.SFN_Multiply,id:4089,x:34398,y:31584|A-9-R,B-4079-OUT;n:type:ShaderForge.SFN_Lerp,id:4090,x:34136,y:31900|A-4096-OUT,B-3925-RGB,T-4094-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4092,x:34398,y:31944,ptlb:G_Channel_Mask,ptin:_G_Channel_Mask,on:False;n:type:ShaderForge.SFN_Multiply,id:4094,x:34398,y:31807|A-9-G,B-4092-OUT;n:type:ShaderForge.SFN_Vector1,id:4096,x:34183,y:31605,v1:0;n:type:ShaderForge.SFN_Lerp,id:4110,x:33739,y:32075|A-5-RGB,B-4198-OUT,T-4124-OUT;n:type:ShaderForge.SFN_Add,id:4124,x:34136,y:32192|A-4089-OUT,B-4094-OUT,C-4142-OUT;n:type:ShaderForge.SFN_Lerp,id:4138,x:34136,y:32059|A-4096-OUT,B-3968-RGB,T-4142-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4140,x:34398,y:32153,ptlb:B_Channel_Mask,ptin:_B_Channel_Mask,on:False;n:type:ShaderForge.SFN_Multiply,id:4142,x:34387,y:32006|A-9-B,B-4140-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4151,x:33446,y:31830,ptlb:Detail,ptin:_Detail,on:False;n:type:ShaderForge.SFN_ChannelBlend,id:4198,x:33916,y:31900,chbt:0|M-4200-OUT,R-4088-OUT,G-4090-OUT,B-4138-OUT,A-4096-OUT;n:type:ShaderForge.SFN_Append,id:4200,x:34484,y:33280|A-9-RGB,B-9-A;n:type:ShaderForge.SFN_ToggleProperty,id:4290,x:33941,y:33165,ptlb:Spec_R,ptin:_Spec_R,on:False;n:type:ShaderForge.SFN_Lerp,id:4292,x:33643,y:32962|A-4302-OUT,B-4323-OUT,T-4294-OUT;n:type:ShaderForge.SFN_Multiply,id:4294,x:33941,y:33028|A-9-R,B-4290-OUT;n:type:ShaderForge.SFN_Lerp,id:4296,x:33643,y:33096|A-4302-OUT,B-4325-OUT,T-4300-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4298,x:33941,y:33390,ptlb:Spec_G,ptin:_Spec_G,on:False;n:type:ShaderForge.SFN_Multiply,id:4300,x:33941,y:33251|A-9-G,B-4298-OUT;n:type:ShaderForge.SFN_Vector1,id:4302,x:33690,y:32801,v1:0;n:type:ShaderForge.SFN_Add,id:4304,x:33643,y:33387|A-4294-OUT,B-4300-OUT,C-4310-OUT;n:type:ShaderForge.SFN_Lerp,id:4306,x:33643,y:33255|A-4302-OUT,B-4327-OUT,T-4310-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4308,x:33941,y:33597,ptlb:Spec_B,ptin:_Spec_B,on:False;n:type:ShaderForge.SFN_Multiply,id:4310,x:33930,y:33450|A-9-B,B-4308-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:4320,x:33459,y:33207,chbt:0|M-4200-OUT,R-4292-OUT,G-4296-OUT,B-4306-OUT,A-4302-OUT;n:type:ShaderForge.SFN_Desaturate,id:4321,x:34218,y:32800|COL-5-RGB;n:type:ShaderForge.SFN_Desaturate,id:4323,x:34218,y:32917|COL-6-RGB;n:type:ShaderForge.SFN_Desaturate,id:4325,x:34218,y:33041|COL-3925-RGB;n:type:ShaderForge.SFN_Desaturate,id:4327,x:34218,y:33161|COL-3968-RGB;n:type:ShaderForge.SFN_Lerp,id:4330,x:33176,y:33234|A-4657-OUT,B-4320-OUT,T-4304-OUT;n:type:ShaderForge.SFN_Multiply,id:4344,x:33921,y:32706|A-4321-OUT,B-4346-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4346,x:33921,y:32850,ptlb:Spec_Main,ptin:_Spec_Main,on:True;n:type:ShaderForge.SFN_Tex2d,id:4397,x:33258,y:33619,ptlb:NRM_Main,ptin:_NRM_Main,tex:3f1ec19b07980fb4595eb54666287661,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Add,id:4437,x:32950,y:33631|A-4397-RGB,B-3627-OUT;n:type:ShaderForge.SFN_Multiply,id:4584,x:33149,y:32841|A-4330-OUT,B-4585-OUT;n:type:ShaderForge.SFN_Slider,id:4585,x:33109,y:33033,ptlb:Spec_Amound,ptin:_Spec_Amound,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4610,x:33972,y:31358|A-3726-OUT,B-3726-OUT,C-4613-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4613,x:34183,y:31493,ptlb:Detail_Power,ptin:_Detail_Power,glob:False,v1:1;n:type:ShaderForge.SFN_Blend,id:4625,x:33667,y:31622,blmd:10,clmp:True|SRC-4610-OUT,DST-4110-OUT;n:type:ShaderForge.SFN_Lerp,id:4657,x:33531,y:32629|A-4344-OUT,B-4658-OUT,T-4659-OUT;n:type:ShaderForge.SFN_Vector1,id:4658,x:33921,y:32654,v1:0;n:type:ShaderForge.SFN_Add,id:4659,x:33921,y:32531|A-9-R,B-9-G,C-9-B;proporder:9-5-4397-4346-4585-3510-6-4079-4290-3925-4092-4298-3968-4140-4308-4151-3694-3806-4613-3623-3626;pass:END;sub:END;*/

Shader "Crowsfield/Dubble_Texture" {
    Properties {
        _MASK ("MASK", 2D) = "white" {}
        _DIF_01_Main ("DIF_01_Main", 2D) = "white" {}
        _NRM_Main ("NRM_Main", 2D) = "bump" {}
        [MaterialToggle] _Spec_Main ("Spec_Main", Float ) = 0
        _Spec_Amound ("Spec_Amound", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _DIF_02R ("DIF_02(R)", 2D) = "white" {}
        [MaterialToggle] _R_Channel_Mask ("R_Channel_Mask", Float ) = 0
        [MaterialToggle] _Spec_R ("Spec_R", Float ) = 0
        _DIF_03G ("DIF_03(G)", 2D) = "white" {}
        [MaterialToggle] _G_Channel_Mask ("G_Channel_Mask", Float ) = 0
        [MaterialToggle] _Spec_G ("Spec_G", Float ) = 0
        _DIF_04B ("DIF_04(B)", 2D) = "white" {}
        [MaterialToggle] _B_Channel_Mask ("B_Channel_Mask", Float ) = 0
        [MaterialToggle] _Spec_B ("Spec_B", Float ) = 0
        [MaterialToggle] _Detail ("Detail", Float ) = 0
        _Detail_Map ("Detail_Map", 2D) = "white" {}
        _Detail_Desaturate ("Detail_Desaturate", Range(0, 1)) = 0.5
        _Detail_Power ("Detail_Power", Float ) = 1
        _NRM_Detail ("NRM_Detail", 2D) = "bump" {}
        _Tile_Detail ("Tile_Detail", Float ) = 5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DIF_01_Main; uniform float4 _DIF_01_Main_ST;
            uniform sampler2D _DIF_02R; uniform float4 _DIF_02R_ST;
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _Gloss;
            uniform sampler2D _NRM_Detail; uniform float4 _NRM_Detail_ST;
            uniform float _Tile_Detail;
            uniform sampler2D _Detail_Map; uniform float4 _Detail_Map_ST;
            uniform float _Detail_Desaturate;
            uniform sampler2D _DIF_03G; uniform float4 _DIF_03G_ST;
            uniform sampler2D _DIF_04B; uniform float4 _DIF_04B_ST;
            uniform fixed _R_Channel_Mask;
            uniform fixed _G_Channel_Mask;
            uniform fixed _B_Channel_Mask;
            uniform fixed _Detail;
            uniform fixed _Spec_R;
            uniform fixed _Spec_G;
            uniform fixed _Spec_B;
            uniform fixed _Spec_Main;
            uniform sampler2D _NRM_Main; uniform float4 _NRM_Main_ST;
            uniform float _Spec_Amound;
            uniform float _Detail_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_4681 = i.uv0;
                float2 node_3625 = (i.uv0.rg*_Tile_Detail);
                float3 normalLocal = (UnpackNormal(tex2D(_NRM_Main,TRANSFORM_TEX(node_4681.rg, _NRM_Main))).rgb+float3(UnpackNormal(tex2D(_NRM_Detail,TRANSFORM_TEX(node_3625, _NRM_Detail))).rgb.rg,0.0));
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(lmtex);
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                #ifndef LIGHTMAP_OFF
                    float3 diffuse = lightmap.rgb;
                #else
                    float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                #endif
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_5 = tex2D(_DIF_01_Main,TRANSFORM_TEX(node_4681.rg, _DIF_01_Main));
                float4 node_9 = tex2D(_MASK,TRANSFORM_TEX(node_4681.rg, _MASK));
                float4 node_4200 = float4(node_9.rgb,node_9.a);
                float node_4302 = 0.0;
                float4 node_6 = tex2D(_DIF_02R,TRANSFORM_TEX(node_4681.rg, _DIF_02R));
                float node_4294 = (node_9.r*_Spec_R);
                float4 node_3925 = tex2D(_DIF_03G,TRANSFORM_TEX(node_4681.rg, _DIF_03G));
                float node_4300 = (node_9.g*_Spec_G);
                float4 node_3968 = tex2D(_DIF_04B,TRANSFORM_TEX(node_4681.rg, _DIF_04B));
                float node_4310 = (node_9.b*_Spec_B);
                float node_4584 = (lerp(lerp((dot(node_5.rgb,float3(0.3,0.59,0.11))*_Spec_Main),0.0,(node_9.r+node_9.g+node_9.b)),(node_4200.r*lerp(node_4302,dot(node_6.rgb,float3(0.3,0.59,0.11)),node_4294) + node_4200.g*lerp(node_4302,dot(node_3925.rgb,float3(0.3,0.59,0.11)),node_4300) + node_4200.b*lerp(node_4302,dot(node_3968.rgb,float3(0.3,0.59,0.11)),node_4310) + node_4200.a*node_4302),(node_4294+node_4300+node_4310))*_Spec_Amound);
                float3 specularColor = float3(node_4584,node_4584,node_4584);
                float3 specular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= (floor(attenuation) * _LightColor0.xyz);
                    #endif
                #else
                    specular *= (floor(attenuation) * _LightColor0.xyz);
                #endif
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float node_3812_if_leA = step(_Detail,0.5);
                float node_3812_if_leB = step(0.5,_Detail);
                float node_4096 = 0.0;
                float node_4089 = (node_9.r*_R_Channel_Mask);
                float node_4094 = (node_9.g*_G_Channel_Mask);
                float node_4142 = (node_9.b*_B_Channel_Mask);
                float3 node_4110 = lerp(node_5.rgb,(node_4200.r*lerp(float3(node_4096,node_4096,node_4096),node_6.rgb,node_4089) + node_4200.g*lerp(float3(node_4096,node_4096,node_4096),node_3925.rgb,node_4094) + node_4200.b*lerp(float3(node_4096,node_4096,node_4096),node_3968.rgb,node_4142) + node_4200.a*node_4096),(node_4089+node_4094+node_4142));
                float3 node_3726 = lerp(tex2D(_Detail_Map,TRANSFORM_TEX(node_3625, _Detail_Map)).rgb,dot(tex2D(_Detail_Map,TRANSFORM_TEX(node_3625, _Detail_Map)).rgb,float3(0.3,0.59,0.11)),_Detail_Desaturate);
                float3 node_4610 = (node_3726*node_3726*_Detail_Power);
                finalColor += diffuseLight * lerp((node_3812_if_leA*node_4110)+(node_3812_if_leB*saturate(( node_4110 > 0.5 ? (1.0-(1.0-2.0*(node_4110-0.5))*(1.0-node_4610)) : (2.0*node_4110*node_4610) ))),node_4110,node_3812_if_leA*node_3812_if_leB);
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DIF_01_Main; uniform float4 _DIF_01_Main_ST;
            uniform sampler2D _DIF_02R; uniform float4 _DIF_02R_ST;
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _Gloss;
            uniform sampler2D _NRM_Detail; uniform float4 _NRM_Detail_ST;
            uniform float _Tile_Detail;
            uniform sampler2D _Detail_Map; uniform float4 _Detail_Map_ST;
            uniform float _Detail_Desaturate;
            uniform sampler2D _DIF_03G; uniform float4 _DIF_03G_ST;
            uniform sampler2D _DIF_04B; uniform float4 _DIF_04B_ST;
            uniform fixed _R_Channel_Mask;
            uniform fixed _G_Channel_Mask;
            uniform fixed _B_Channel_Mask;
            uniform fixed _Detail;
            uniform fixed _Spec_R;
            uniform fixed _Spec_G;
            uniform fixed _Spec_B;
            uniform fixed _Spec_Main;
            uniform sampler2D _NRM_Main; uniform float4 _NRM_Main_ST;
            uniform float _Spec_Amound;
            uniform float _Detail_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_4682 = i.uv0;
                float2 node_3625 = (i.uv0.rg*_Tile_Detail);
                float3 normalLocal = (UnpackNormal(tex2D(_NRM_Main,TRANSFORM_TEX(node_4682.rg, _NRM_Main))).rgb+float3(UnpackNormal(tex2D(_NRM_Detail,TRANSFORM_TEX(node_3625, _NRM_Detail))).rgb.rg,0.0));
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_5 = tex2D(_DIF_01_Main,TRANSFORM_TEX(node_4682.rg, _DIF_01_Main));
                float4 node_9 = tex2D(_MASK,TRANSFORM_TEX(node_4682.rg, _MASK));
                float4 node_4200 = float4(node_9.rgb,node_9.a);
                float node_4302 = 0.0;
                float4 node_6 = tex2D(_DIF_02R,TRANSFORM_TEX(node_4682.rg, _DIF_02R));
                float node_4294 = (node_9.r*_Spec_R);
                float4 node_3925 = tex2D(_DIF_03G,TRANSFORM_TEX(node_4682.rg, _DIF_03G));
                float node_4300 = (node_9.g*_Spec_G);
                float4 node_3968 = tex2D(_DIF_04B,TRANSFORM_TEX(node_4682.rg, _DIF_04B));
                float node_4310 = (node_9.b*_Spec_B);
                float node_4584 = (lerp(lerp((dot(node_5.rgb,float3(0.3,0.59,0.11))*_Spec_Main),0.0,(node_9.r+node_9.g+node_9.b)),(node_4200.r*lerp(node_4302,dot(node_6.rgb,float3(0.3,0.59,0.11)),node_4294) + node_4200.g*lerp(node_4302,dot(node_3925.rgb,float3(0.3,0.59,0.11)),node_4300) + node_4200.b*lerp(node_4302,dot(node_3968.rgb,float3(0.3,0.59,0.11)),node_4310) + node_4200.a*node_4302),(node_4294+node_4300+node_4310))*_Spec_Amound);
                float3 specularColor = float3(node_4584,node_4584,node_4584);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float node_3812_if_leA = step(_Detail,0.5);
                float node_3812_if_leB = step(0.5,_Detail);
                float node_4096 = 0.0;
                float node_4089 = (node_9.r*_R_Channel_Mask);
                float node_4094 = (node_9.g*_G_Channel_Mask);
                float node_4142 = (node_9.b*_B_Channel_Mask);
                float3 node_4110 = lerp(node_5.rgb,(node_4200.r*lerp(float3(node_4096,node_4096,node_4096),node_6.rgb,node_4089) + node_4200.g*lerp(float3(node_4096,node_4096,node_4096),node_3925.rgb,node_4094) + node_4200.b*lerp(float3(node_4096,node_4096,node_4096),node_3968.rgb,node_4142) + node_4200.a*node_4096),(node_4089+node_4094+node_4142));
                float3 node_3726 = lerp(tex2D(_Detail_Map,TRANSFORM_TEX(node_3625, _Detail_Map)).rgb,dot(tex2D(_Detail_Map,TRANSFORM_TEX(node_3625, _Detail_Map)).rgb,float3(0.3,0.59,0.11)),_Detail_Desaturate);
                float3 node_4610 = (node_3726*node_3726*_Detail_Power);
                finalColor += diffuseLight * lerp((node_3812_if_leA*node_4110)+(node_3812_if_leB*saturate(( node_4110 > 0.5 ? (1.0-(1.0-2.0*(node_4110-0.5))*(1.0-node_4610)) : (2.0*node_4110*node_4610) ))),node_4110,node_3812_if_leA*node_3812_if_leB);
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
