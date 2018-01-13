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



//TFAR Settings

call TFW_fnc_tfarsettings;



// Radio Chatter

_radiochattervar = "param_radiochatter" call BIS_fnc_getParamValue;

if ( _radiochattervar == 1 ) then {

		[] call TFW_fnc_radiochatter ;

};











