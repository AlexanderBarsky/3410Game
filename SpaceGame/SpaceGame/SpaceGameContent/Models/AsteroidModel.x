xof 0303txt 0032

// Generated by 3D Rad Exporter plugin for Google SketchUp - http://www.3drad.com

template Header {
<3D82AB43-62DA-11cf-AB39-0020AF71E433>
WORD major;
WORD minor;
DWORD flags;
}
template Vector {
<3D82AB5E-62DA-11cf-AB39-0020AF71E433>
FLOAT x;
FLOAT y;
FLOAT z;
}
template Coords2d {
<F6F23F44-7686-11cf-8F52-0040333594A3>
FLOAT u;
FLOAT v;
}
template Matrix4x4 {
<F6F23F45-7686-11cf-8F52-0040333594A3>
array FLOAT matrix[16];
}
template ColorRGBA {
<35FF44E0-6C7C-11cf-8F52-0040333594A3>
FLOAT red;
FLOAT green;
FLOAT blue;
FLOAT alpha;
}
template ColorRGB {
<D3E16E81-7835-11cf-8F52-0040333594A3>
FLOAT red;
FLOAT green;
FLOAT blue;
}
template IndexedColor {
<1630B820-7842-11cf-8F52-0040333594A3>
DWORD index;
ColorRGBA indexColor;
}
template Boolean {
<4885AE61-78E8-11cf-8F52-0040333594A3>
WORD truefalse;
}
template Boolean2d {
<4885AE63-78E8-11cf-8F52-0040333594A3>
Boolean u;
Boolean v;
}
template MaterialWrap {
<4885AE60-78E8-11cf-8F52-0040333594A3>
Boolean u;
Boolean v;
}
template TextureFilename {
<A42790E1-7810-11cf-8F52-0040333594A3>
STRING filename;
}
template Material {
<3D82AB4D-62DA-11cf-AB39-0020AF71E433>
ColorRGBA faceColor;
FLOAT power;
ColorRGB specularColor;
ColorRGB emissiveColor;
[...]
}
template MeshFace {
<3D82AB5F-62DA-11cf-AB39-0020AF71E433>
DWORD nFaceVertexIndices;
array DWORD faceVertexIndices[nFaceVertexIndices];
}
template MeshFaceWraps {
<4885AE62-78E8-11cf-8F52-0040333594A3>
DWORD nFaceWrapValues;
Boolean2d faceWrapValues;
}
template MeshTextureCoords {
<F6F23F40-7686-11cf-8F52-0040333594A3>
DWORD nTextureCoords;
array Coords2d textureCoords[nTextureCoords];
}
template MeshMaterialList {
<F6F23F42-7686-11cf-8F52-0040333594A3>
DWORD nMaterials;
DWORD nFaceIndexes;
array DWORD faceIndexes[nFaceIndexes];
[Material]
}
template MeshNormals {
<F6F23F43-7686-11cf-8F52-0040333594A3>
DWORD nNormals;
array Vector normals[nNormals];
DWORD nFaceNormals;
array MeshFace faceNormals[nFaceNormals];
}
template MeshVertexColors {
<1630B821-7842-11cf-8F52-0040333594A3>
DWORD nVertexColors;
array IndexedColor vertexColors[nVertexColors];
}
template Mesh {
<3D82AB44-62DA-11cf-AB39-0020AF71E433>
DWORD nVertices;
array Vector vertices[nVertices];
DWORD nFaces;
array MeshFace faces[nFaces];
[...]
}
template FrameTransformMatrix {
<F6F23F41-7686-11cf-8F52-0040333594A3>
Matrix4x4 frameMatrix;
}
template Frame {
<3D82AB46-62DA-11cf-AB39-0020AF71E433>
[...]
}
template XSkinMeshHeader {
<3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
WORD nMaxSkinWeightsPerVertex;
WORD nMaxSkinWeightsPerFace;
WORD nBones;
}
template VertexDuplicationIndices {
<b8d65549-d7c9-4995-89cf-53a9a8b031e3>
DWORD nIndices;
DWORD nOriginalVertices;
array DWORD indices[nIndices];
}
template SkinWeights {
<6f0d123b-bad2-4167-a0d0-80224f25fabb>
STRING transformNodeName;
DWORD nWeights;
array DWORD vertexIndices[nWeights];
array FLOAT weights[nWeights];
Matrix4x4 matrixOffset;
}
Frame RAD_SCENE_ROOT {
FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
}
Frame RAD_FRAME {
FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
}
Mesh RAD_MESH {
192;
0.914400;0.228600;-0.228600;,
0.914400;0.228600;-0.228600;,
0.228600;0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
0.228600;0.914400;-0.228600;,
0.228600;0.914400;-0.228600;,
0.228600;0.228600;0.914400;,
0.228600;0.228600;0.914400;,
0.914400;0.228600;0.228600;,
0.914400;0.228600;0.228600;,
0.228600;0.914400;0.228600;,
0.228600;0.914400;0.228600;,
0.228600;0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
-0.228600;-0.228600;-0.914400;,
-0.228600;-0.228600;-0.914400;,
0.228600;-0.228600;-0.914400;,
0.228600;-0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
0.914400;0.228600;0.228600;,
0.914400;0.228600;0.228600;,
0.914400;-0.228600;-0.228600;,
0.914400;-0.228600;-0.228600;,
0.914400;0.228600;-0.228600;,
0.914400;0.228600;-0.228600;,
0.914400;-0.228600;0.228600;,
0.914400;-0.228600;0.228600;,
0.228600;0.228600;0.914400;,
0.228600;0.228600;0.914400;,
-0.228600;-0.228600;0.914400;,
-0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
-0.914400;0.228600;0.228600;,
-0.914400;0.228600;0.228600;,
-0.914400;-0.228600;-0.228600;,
-0.914400;-0.228600;-0.228600;,
-0.914400;0.228600;-0.228600;,
-0.914400;0.228600;-0.228600;,
-0.914400;-0.228600;0.228600;,
-0.914400;-0.228600;0.228600;,
0.228600;0.914400;0.228600;,
0.228600;0.914400;0.228600;,
-0.228600;0.914400;-0.228600;,
-0.228600;0.914400;-0.228600;,
-0.228600;0.914400;0.228600;,
-0.228600;0.914400;0.228600;,
0.228600;0.914400;-0.228600;,
0.228600;0.914400;-0.228600;,
0.228600;-0.914400;0.228600;,
0.228600;-0.914400;0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.914400;0.228600;,
-0.228600;-0.914400;0.228600;,
0.228600;-0.914400;-0.228600;,
0.228600;-0.914400;-0.228600;,
0.914400;0.228600;-0.228600;,
0.914400;0.228600;-0.228600;,
0.228600;-0.228600;-0.914400;,
0.228600;-0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
0.914400;-0.228600;-0.228600;,
0.914400;-0.228600;-0.228600;,
0.228600;0.228600;0.914400;,
0.228600;0.228600;0.914400;,
0.914400;-0.228600;0.228600;,
0.914400;-0.228600;0.228600;,
0.914400;0.228600;0.228600;,
0.914400;0.228600;0.228600;,
0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
-0.914400;-0.228600;0.228600;,
-0.914400;-0.228600;0.228600;,
-0.914400;0.228600;0.228600;,
-0.914400;0.228600;0.228600;,
-0.228600;-0.228600;0.914400;,
-0.228600;-0.228600;0.914400;,
-0.914400;0.228600;-0.228600;,
-0.914400;0.228600;-0.228600;,
-0.228600;-0.228600;-0.914400;,
-0.228600;-0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
-0.914400;-0.228600;-0.228600;,
-0.914400;-0.228600;-0.228600;,
-0.228600;0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
-0.914400;0.228600;0.228600;,
-0.914400;0.228600;0.228600;,
-0.228600;0.914400;0.228600;,
-0.228600;0.914400;0.228600;,
-0.228600;0.914400;0.228600;,
-0.228600;0.914400;0.228600;,
-0.914400;0.228600;-0.228600;,
-0.914400;0.228600;-0.228600;,
-0.228600;0.914400;-0.228600;,
-0.228600;0.914400;-0.228600;,
-0.914400;0.228600;0.228600;,
-0.914400;0.228600;0.228600;,
-0.914400;0.228600;-0.228600;,
-0.914400;0.228600;-0.228600;,
-0.228600;0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
-0.228600;0.914400;-0.228600;,
-0.228600;0.914400;-0.228600;,
0.228600;0.914400;0.228600;,
0.228600;0.914400;0.228600;,
-0.228600;0.228600;0.914400;,
-0.228600;0.228600;0.914400;,
0.228600;0.228600;0.914400;,
0.228600;0.228600;0.914400;,
-0.228600;0.914400;0.228600;,
-0.228600;0.914400;0.228600;,
-0.228600;-0.228600;0.914400;,
-0.228600;-0.228600;0.914400;,
-0.228600;-0.914400;0.228600;,
-0.228600;-0.914400;0.228600;,
-0.914400;-0.228600;0.228600;,
-0.914400;-0.228600;0.228600;,
-0.914400;-0.228600;0.228600;,
-0.914400;-0.228600;0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.914400;-0.228600;-0.228600;,
-0.914400;-0.228600;-0.228600;,
-0.228600;-0.914400;0.228600;,
-0.228600;-0.914400;0.228600;,
0.228600;0.914400;-0.228600;,
0.228600;0.914400;-0.228600;,
-0.228600;0.228600;-0.914400;,
-0.228600;0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
0.228600;0.228600;-0.914400;,
-0.228600;0.914400;-0.228600;,
-0.228600;0.914400;-0.228600;,
0.228600;0.914400;0.228600;,
0.228600;0.914400;0.228600;,
0.914400;0.228600;-0.228600;,
0.914400;0.228600;-0.228600;,
0.228600;0.914400;-0.228600;,
0.228600;0.914400;-0.228600;,
0.914400;0.228600;0.228600;,
0.914400;0.228600;0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.228600;-0.914400;,
-0.228600;-0.228600;-0.914400;,
-0.914400;-0.228600;-0.228600;,
-0.914400;-0.228600;-0.228600;,
0.228600;-0.228600;-0.914400;,
0.228600;-0.228600;-0.914400;,
-0.228600;-0.914400;-0.228600;,
-0.228600;-0.914400;-0.228600;,
0.228600;-0.914400;-0.228600;,
0.228600;-0.914400;-0.228600;,
-0.228600;-0.228600;-0.914400;,
-0.228600;-0.228600;-0.914400;,
0.228600;-0.914400;-0.228600;,
0.228600;-0.914400;-0.228600;,
0.228600;-0.228600;-0.914400;,
0.228600;-0.228600;-0.914400;,
0.914400;-0.228600;-0.228600;,
0.914400;-0.228600;-0.228600;,
0.228600;-0.914400;0.228600;,
0.228600;-0.914400;0.228600;,
0.914400;-0.228600;-0.228600;,
0.914400;-0.228600;-0.228600;,
0.228600;-0.914400;-0.228600;,
0.228600;-0.914400;-0.228600;,
0.914400;-0.228600;0.228600;,
0.914400;-0.228600;0.228600;,
0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
-0.228600;-0.914400;0.228600;,
-0.228600;-0.914400;0.228600;,
0.228600;-0.914400;0.228600;,
0.228600;-0.914400;0.228600;,
-0.228600;-0.228600;0.914400;,
-0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
0.228600;-0.228600;0.914400;,
0.228600;-0.914400;0.228600;,
0.228600;-0.914400;0.228600;,
0.914400;-0.228600;0.228600;,
0.914400;-0.228600;0.228600;;
88;
3;4,2,0,
3;1,3,5,
3;10,8,6,
3;7,9,11,
3;16,14,12,
3;13,15,17,
3;18,12,14,
3;15,13,19,
3;24,22,20,
3;21,23,25,
3;26,20,22,
3;23,21,27,
3;32,30,28,
3;29,31,33,
3;34,28,30,
3;31,29,35,
3;40,38,36,
3;37,39,41,
3;42,36,38,
3;39,37,43,
3;48,46,44,
3;45,47,49,
3;50,44,46,
3;47,45,51,
3;56,54,52,
3;53,55,57,
3;58,52,54,
3;55,53,59,
3;64,62,60,
3;61,63,65,
3;66,60,62,
3;63,61,67,
3;72,70,68,
3;69,71,73,
3;74,68,70,
3;71,69,75,
3;80,78,76,
3;77,79,81,
3;82,76,78,
3;79,77,83,
3;88,86,84,
3;85,87,89,
3;90,84,86,
3;87,85,91,
3;96,94,92,
3;93,95,97,
3;102,100,98,
3;99,101,103,
3;104,98,100,
3;101,99,105,
3;110,108,106,
3;107,109,111,
3;116,114,112,
3;113,115,117,
3;118,112,114,
3;115,113,119,
3;124,122,120,
3;121,123,125,
3;130,128,126,
3;127,129,131,
3;132,126,128,
3;129,127,133,
3;138,136,134,
3;135,137,139,
3;140,134,136,
3;137,135,141,
3;146,144,142,
3;143,145,147,
3;148,142,144,
3;145,143,149,
3;154,152,150,
3;151,153,155,
3;160,158,156,
3;157,159,161,
3;162,156,158,
3;159,157,163,
3;168,166,164,
3;165,167,169,
3;174,172,170,
3;171,173,175,
3;176,170,172,
3;173,171,177,
3;182,180,178,
3;179,181,183,
3;184,178,180,
3;181,179,185,
3;190,188,186,
3;187,189,191;;
MeshNormals {
192;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
0.000000;0.000000;-1.000000;
-0.000000;-0.000000;1.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
-1.000000;0.000000;0.000000;
1.000000;-0.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;0.707107;
0.707107;-0.000000;-0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.707107;0.000000;-0.707107;
0.707107;-0.000000;0.707107;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.707107;0.707107;0.000000;
0.707107;-0.707107;-0.000000;
-0.707107;0.707107;0.000000;
0.707107;-0.707107;-0.000000;
-0.707107;0.707107;0.000000;
0.707107;-0.707107;-0.000000;
-0.707107;0.707107;0.000000;
0.707107;-0.707107;-0.000000;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.707107;-0.707107;0.000000;
0.707107;0.707107;-0.000000;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
0.000000;-0.707107;-0.707107;
-0.000000;0.707107;0.707107;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
0.707107;-0.707107;0.000000;
-0.707107;0.707107;-0.000000;
0.707107;-0.707107;0.000000;
-0.707107;0.707107;-0.000000;
0.707107;-0.707107;0.000000;
-0.707107;0.707107;-0.000000;
0.707107;-0.707107;0.000000;
-0.707107;0.707107;-0.000000;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
0.000000;0.707107;-0.707107;
-0.000000;-0.707107;0.707107;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;;
88;
3;4,2,0;
3;1,3,5;
3;10,8,6;
3;7,9,11;
3;16,14,12;
3;13,15,17;
3;18,12,14;
3;15,13,19;
3;24,22,20;
3;21,23,25;
3;26,20,22;
3;23,21,27;
3;32,30,28;
3;29,31,33;
3;34,28,30;
3;31,29,35;
3;40,38,36;
3;37,39,41;
3;42,36,38;
3;39,37,43;
3;48,46,44;
3;45,47,49;
3;50,44,46;
3;47,45,51;
3;56,54,52;
3;53,55,57;
3;58,52,54;
3;55,53,59;
3;64,62,60;
3;61,63,65;
3;66,60,62;
3;63,61,67;
3;72,70,68;
3;69,71,73;
3;74,68,70;
3;71,69,75;
3;80,78,76;
3;77,79,81;
3;82,76,78;
3;79,77,83;
3;88,86,84;
3;85,87,89;
3;90,84,86;
3;87,85,91;
3;96,94,92;
3;93,95,97;
3;102,100,98;
3;99,101,103;
3;104,98,100;
3;101,99,105;
3;110,108,106;
3;107,109,111;
3;116,114,112;
3;113,115,117;
3;118,112,114;
3;115,113,119;
3;124,122,120;
3;121,123,125;
3;130,128,126;
3;127,129,131;
3;132,126,128;
3;129,127,133;
3;138,136,134;
3;135,137,139;
3;140,134,136;
3;137,135,141;
3;146,144,142;
3;143,145,147;
3;148,142,144;
3;145,143,149;
3;154,152,150;
3;151,153,155;
3;160,158,156;
3;157,159,161;
3;162,156,158;
3;159,157,163;
3;168,166,164;
3;165,167,169;
3;174,172,170;
3;171,173,175;
3;176,170,172;
3;173,171,177;
3;182,180,178;
3;179,181,183;
3;184,178,180;
3;181,179,185;
3;190,188,186;
3;187,189,191;;
}
MeshTextureCoords {
192;
-18.091883,11.022704;
-18.091883,11.022704;
20.091883,11.022704;
20.091883,11.022704;
1.000000,-22.045408;
1.000000,-22.045408;
-18.091883,11.022704;
-18.091883,11.022704;
20.091883,11.022704;
20.091883,11.022704;
1.000000,-22.045408;
1.000000,-22.045408;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
10.000000,9.000000;
10.000000,9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
10.000000,9.000000;
10.000000,9.000000;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
10.000000,9.000000;
10.000000,9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
10.000000,9.000000;
10.000000,9.000000;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
10.000000,9.000000;
10.000000,9.000000;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
-8.000000,-9.000000;
-8.000000,-9.000000;
10.000000,9.000000;
10.000000,9.000000;
10.000000,-9.000000;
10.000000,-9.000000;
-8.000000,9.000000;
-8.000000,9.000000;
-18.091883,-9.000000;
-18.091883,-9.000000;
20.091883,9.000000;
20.091883,9.000000;
20.091883,-9.000000;
20.091883,-9.000000;
-18.091883,9.000000;
-18.091883,9.000000;
-18.091883,-9.000000;
-18.091883,-9.000000;
20.091883,9.000000;
20.091883,9.000000;
20.091883,-9.000000;
20.091883,-9.000000;
-18.091883,9.000000;
-18.091883,9.000000;
-18.091883,-9.000000;
-18.091883,-9.000000;
20.091883,9.000000;
20.091883,9.000000;
20.091883,-9.000000;
20.091883,-9.000000;
-18.091883,9.000000;
-18.091883,9.000000;
-18.091883,-9.000000;
-18.091883,-9.000000;
20.091883,9.000000;
20.091883,9.000000;
20.091883,-9.000000;
20.091883,-9.000000;
-18.091883,9.000000;
-18.091883,9.000000;
-18.091883,11.022704;
-18.091883,11.022704;
20.091883,11.022704;
20.091883,11.022704;
1.000000,-22.045408;
1.000000,-22.045408;
-8.000000,-19.091883;
-8.000000,-19.091883;
10.000000,19.091883;
10.000000,19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
-18.091883,11.022704;
-18.091883,11.022704;
20.091883,11.022704;
20.091883,11.022704;
1.000000,-22.045408;
1.000000,-22.045408;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,19.091883;
10.000000,19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
-18.091883,-11.022704;
-18.091883,-11.022704;
1.000000,22.045408;
1.000000,22.045408;
20.091883,-11.022704;
20.091883,-11.022704;
-8.000000,-19.091883;
-8.000000,-19.091883;
10.000000,19.091883;
10.000000,19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,19.091883;
10.000000,19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
10.000000,19.091883;
10.000000,19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
1.000000,22.045408;
1.000000,22.045408;
20.091883,-11.022704;
20.091883,-11.022704;
-18.091883,-11.022704;
-18.091883,-11.022704;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,19.091883;
10.000000,19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
1.000000,22.045408;
1.000000,22.045408;
20.091883,-11.022704;
20.091883,-11.022704;
-18.091883,-11.022704;
-18.091883,-11.022704;
10.000000,19.091883;
10.000000,19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
10.000000,-19.091883;
-8.000000,19.091883;
-8.000000,19.091883;
10.000000,19.091883;
10.000000,19.091883;
-8.000000,-19.091883;
-8.000000,-19.091883;
-18.091883,-11.022704;
-18.091883,-11.022704;
1.000000,22.045408;
1.000000,22.045408;
20.091883,-11.022704;
20.091883,-11.022704;;
}
MeshMaterialList {
2;
88;
0,
1,
0,
1,
1,
0,
1,
0,
0,
1,
0,
1,
0,
1,
0,
1,
1,
0,
1,
0,
0,
1,
0,
1,
1,
0,
1,
0,
0,
1,
0,
1,
0,
1,
0,
1,
1,
0,
1,
0,
1,
0,
1,
0,
1,
0,
1,
0,
1,
0,
1,
0,
0,
1,
0,
1,
1,
0,
1,
0,
1,
0,
1,
0,
1,
0,
0,
1,
0,
1,
1,
0,
1,
0,
1,
0,
0,
1,
1,
0,
1,
0,
0,
1,
0,
1,
0,
1;
Material {
1.000000;1.000000;1.000000;1.000000;;
50.000000;
0.000000;0.000000;0.000000;;
0.000000;0.000000;0.000000;;
}
Material {
0.498039;0.498039;0.498039;1.000000;;
50.000000;
0.000000;0.000000;0.000000;;
0.000000;0.000000;0.000000;;
}
}
}
}
}