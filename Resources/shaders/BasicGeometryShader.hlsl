#include"BasicShaderHeader.hlsli"

//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};

[maxvertexcount(3)]
void main(
	triangle /*float4*/VSOutput input[3] : SV_POSITION, 
	inout TriangleStream< GSOutput > output
)
{
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;
		element = input[i];
		element.normal = input[i].normal;
		element.uv = input[i].uv;
		output.Append(element);
	}
}