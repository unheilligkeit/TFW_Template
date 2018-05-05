/* ================ init.sqf =============== */
// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};
enableSaving [false, false];

setViewDistance 3500; //Max. Sichtweite setzen
adv_aceCPR_probabilities = [40,15,5,85];
adv_aceCPR_addTime = 30;


babe_em_blacklist = [
    "Land_ChairWood_F",
    "Land_ChairPlastic_F",
    "Land_CampingChair_V1_F",
    "Land_CampingChair_V2_F",
    "Land_CampingChair_V2_white_F",
    "Land_RattanChair_01_F",
    "Land_OfficeChair_01_F",
    "ARM_CHE_ChessTableMarble_1"
];

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
_hcvar = "param_hc" call BIS_fnc_getParamValue;

if ( _hcvar == 1 ) then {
    // Run on the HC only
    if !(isServer or hasInterface) then {
        execVM "mission\storyline.sqf";
    };
} else {
    // Run on the server only
    if isServer then {
        execVM "mission\storyline.sqf";
    };
};



// Tasks

if (isServer) then {execVM "mission\task.sqf"};

// Logistik Init




// Mission Extras






// Radio Chatter

_radiochattervar = "param_radiochatter" call BIS_fnc_getParamValue;

if ( _radiochattervar == 1 ) then {

		[] call TFW_fnc_radiochatter ;

};











