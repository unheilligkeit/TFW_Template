/*

Disco Script by Florian

[l1] remoteExec ["disco",0,true];

[object] remoteExec ["TFW_fnc_disco",0,true];

*/



params ["_pos"];



while {true} do {
	private _color = [[1,0,0],[1,1,0],[0,0,1],[0,1,0],[0,1,1],[1,0,1]] call BIS_fnc_selectRandom;
	_light = "#lightpoint" createVehicle getPos _pos;
	_light setLightBrightness 0.8;
	_light setLightColor _color;
	_light setLightAmbient _color;
	sleep random [5,10,20];
	deleteVehicle _light;
};
