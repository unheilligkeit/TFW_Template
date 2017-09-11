// Gruppen Manger
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Briefing

[player] execVM "mission\briefing.sqf";

// Loadout Auswahl
[player] call TFW_fnc_loadoutselect ;


// Intro Film

_introvar = "param_intro" call BIS_fnc_getParamValue;

if ( _introvar == 1 ) then {

		waitUntil {!(isNull (findDisplay 46))};
		["intro.ogv"] call BIS_fnc_playVideo;

};




//Zeus FPS anzeige

_zeusvar = "param_zeus" call BIS_fnc_getParamValue;

if ( _zeusvar == 1 ) then
	{

   		[] call TFW_fnc_fpszeus ;

	};



if (true) exitWith {};