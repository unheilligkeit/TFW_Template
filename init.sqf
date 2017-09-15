/* ================ init.sqf =============== */
// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};
enableSaving [false, false];

setViewDistance 3500; //Max. Sichtweite setzen



// Zeus Settings

_zeusvar = "param_zeus" call BIS_fnc_getParamValue;

if ( _zeusvar == 1 ) then {

	[] spawn {
	waitUntil {time > 1};
	[true] spawn ADV_fnc_zeusObjects;

};

};


// Disable Thermal View

_tivar = "param_ti" call BIS_fnc_getParamValue;

if ( _tivar == 1 ) then {

{
    _x disableTIEquipment true;
} forEach vehicles;

};

};



// Storyline


if (isServer) then {execVM "mission\storyline.sqf"};

// Tasks

if (isServer) then {execVM "mission\task.sqf"};

// Logistik Init

[drohnenterminal1] call TFW_fnc_al6_init;
[drohnenterminal2] call TFW_fnc_sto_init;
[drohnenterminal3] call TFW_fnc_airlog_init;
[drohnenterminal4] call TFW_fnc_kistelog_init;


// Mission Extras

schild1 setObjectTextureGlobal [0, "images\campwolfpack.paa"];
schild2 setObjectTextureGlobal [0, "images\campwolfpack.paa"];
schild3 setObjectTextureGlobal [0, "images\wolf1.paa"];
schild4 setObjectTextureGlobal [0, "images\wolf2.paa"];
schild5 setObjectTextureGlobal [0, "images\wolf3.paa"];
schild6 setObjectTextureGlobal [0, "images\wolf.paa"];

//ACRE Settings
if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
	if(isDedicated) exitWith {};


	[true] call acre_api_fnc_setRevealToAI;
	[false] call acre_api_fnc_setFullDuplex;
	[true] call acre_api_fnc_setInterference;
	[true] call acre_api_fnc_ignoreAntennaDirection;
	[0] call acre_api_fnc_setLossModelScale;

	["ACRE_PRC148", "default", "example1"] call acre_api_fnc_copyPreset;
	["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;
	["ACRE_PRC117F", "default", "example1"] call acre_api_fnc_copyPreset;

	["ACRE_PRC148", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC148", "example1", 7, "description", "SUPPORT"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC152", "example1", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC152", "example1", 7, "description", "SUPPORT"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC117F", "example1", 1, "name", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 2, "name", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 3, "name", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 4, "name", "COY"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 5, "name", "CAS"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 6, "name", "FIRES"] call acre_api_fnc_setPresetChannelField;
	["ACRE_PRC117F", "example1", 7, "name", "SUPPORT"] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC148", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC152", "example1"] call acre_api_fnc_setPreset;
	["ACRE_PRC117F", "example1"] call acre_api_fnc_setPreset;
};





// Radio Chatter

_radiochattervar = "param_radiochatter" call BIS_fnc_getParamValue;

if ( _radiochattervar == 1 ) then {

		[] call TFW_fnc_radiochatter ;

};











