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
120;
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.076200;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;-0.076200;,
0.000000;0.000000;-0.076200;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.076200;0.000000;0.000000;,
0.076200;0.000000;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;,
-0.076200;0.000000;0.000000;,
-0.076200;0.000000;0.000000;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.076200;,
0.000000;0.000000;0.000000;,
0.000000;0.000000;0.000000;,
0.000000;-0.076200;0.000000;,
0.000000;-0.076200;0.000000;;
40;
3;4,2,0,
3;1,3,5,
3;10,8,6,
3;7,9,11,
3;16,14,12,
3;13,15,17,
3;22,20,18,
3;19,21,23,
3;28,26,24,
3;25,27,29,
3;34,32,30,
3;31,33,35,
3;40,38,36,
3;37,39,41,
3;46,44,42,
3;43,45,47,
3;52,50,48,
3;49,51,53,
3;58,56,54,
3;55,57,59,
3;64,62,60,
3;61,63,65,
3;70,68,66,
3;67,69,71,
3;76,74,72,
3;73,75,77,
3;82,80,78,
3;79,81,83,
3;88,86,84,
3;85,87,89,
3;94,92,90,
3;91,93,95,
3;100,98,96,
3;97,99,101,
3;106,104,102,
3;103,105,107,
3;112,110,108,
3;109,111,113,
3;118,116,114,
3;115,117,119;;
MeshNormals {
120;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
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
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
-0.577350;0.577350;0.577350;
0.577350;-0.577350;-0.577350;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.577350;0.577350;0.577350;
-0.577350;-0.577350;-0.577350;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.000000;0.000000;1.000000;
-0.000000;-0.000000;-1.000000;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
0.577350;-0.577350;0.577350;
-0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
-0.577350;-0.577350;0.577350;
0.577350;0.577350;-0.577350;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;
1.000000;0.000000;0.000000;
-1.000000;-0.000000;-0.000000;;
40;
3;4,2,0;
3;1,3,5;
3;10,8,6;
3;7,9,11;
3;16,14,12;
3;13,15,17;
3;22,20,18;
3;19,21,23;
3;28,26,24;
3;25,27,29;
3;34,32,30;
3;31,33,35;
3;40,38,36;
3;37,39,41;
3;46,44,42;
3;43,45,47;
3;52,50,48;
3;49,51,53;
3;58,56,54;
3;55,57,59;
3;64,62,60;
3;61,63,65;
3;70,68,66;
3;67,69,71;
3;76,74,72;
3;73,75,77;
3;82,80,78;
3;79,81,83;
3;88,86,84;
3;85,87,89;
3;94,92,90;
3;91,93,95;
3;100,98,96;
3;97,99,101;
3;106,104,102;
3;103,105,107;
3;112,110,108;
3;109,111,113;
3;118,116,114;
3;115,117,119;;
}
MeshTextureCoords {
120;
1.000000,-2.449490;
1.000000,-2.449490;
-1.121320,1.224745;
-1.121320,1.224745;
3.121320,1.224745;
3.121320,1.224745;
1.000000,-3.000000;
1.000000,-3.000000;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,-3.000000;
1.000000,-3.000000;
1.000000,-3.000000;
1.000000,-3.000000;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,3.000000;
1.000000,3.000000;
1.000000,-0.000000;
1.000000,-0.000000;
3.121320,1.224745;
3.121320,1.224745;
1.000000,-2.449490;
1.000000,-2.449490;
-1.121320,1.224745;
-1.121320,1.224745;
1.000000,3.000000;
1.000000,3.000000;
4.000000,-0.000000;
4.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
4.000000,-0.000000;
4.000000,-0.000000;
1.000000,-3.000000;
1.000000,-3.000000;
4.000000,-0.000000;
4.000000,-0.000000;
1.000000,-3.000000;
1.000000,-3.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,3.000000;
1.000000,3.000000;
1.000000,2.449490;
1.000000,2.449490;
3.121320,-1.224745;
3.121320,-1.224745;
-1.121320,-1.224745;
-1.121320,-1.224745;
-2.000000,-0.000000;
-2.000000,-0.000000;
1.000000,3.000000;
1.000000,3.000000;
1.000000,-0.000000;
1.000000,-0.000000;
-1.121320,1.224745;
-1.121320,1.224745;
3.121320,1.224745;
3.121320,1.224745;
1.000000,-2.449490;
1.000000,-2.449490;
-1.121320,1.224745;
-1.121320,1.224745;
3.121320,1.224745;
3.121320,1.224745;
1.000000,-2.449490;
1.000000,-2.449490;
1.000000,-3.000000;
1.000000,-3.000000;
1.000000,-0.000000;
1.000000,-0.000000;
4.000000,-0.000000;
4.000000,-0.000000;
3.121320,-1.224745;
3.121320,-1.224745;
-1.121320,-1.224745;
-1.121320,-1.224745;
1.000000,2.449490;
1.000000,2.449490;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,3.000000;
1.000000,3.000000;
4.000000,-0.000000;
4.000000,-0.000000;
3.121320,-1.224745;
3.121320,-1.224745;
-1.121320,-1.224745;
-1.121320,-1.224745;
1.000000,2.449490;
1.000000,2.449490;
-1.121320,-1.224745;
-1.121320,-1.224745;
1.000000,2.449490;
1.000000,2.449490;
3.121320,-1.224745;
3.121320,-1.224745;
4.000000,-0.000000;
4.000000,-0.000000;
1.000000,-0.000000;
1.000000,-0.000000;
1.000000,3.000000;
1.000000,3.000000;;
}
MeshMaterialList {
2;
40;
1,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
0,
0,
1,
0,
1,
0,
0,
0,
0,
1,
0,
0,
1,
0,
1,
0,
0,
0;
Material {
1.000000;1.000000;1.000000;1.000000;;
50.000000;
0.000000;0.000000;0.000000;;
0.000000;0.000000;0.000000;;
}
Material {
1.000000;0.000000;0.000000;1.000000;;
50.000000;
0.000000;0.000000;0.000000;;
0.000000;0.000000;0.000000;;
}
}
}
}
}