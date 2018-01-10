// Gruppen Manger
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Briefing

[player] execVM "mission\briefing.sqf";

// Loadout Auswahl

if (side player == west) then
{
	[player] call TFW_fnc_loadoutselect_blu ;
};

if (side player == resistance) then
{
	[player] call TFW_fnc_loadoutselect_gre ;
};

if (side player == east) then
{
	[player] call TFW_fnc_loadoutselect_opf ;
};



// Intro Film

_introvar = "param_intro" call BIS_fnc_getParamValue;
waitUntil {!(isNull (findDisplay 46))};
if ( _introvar == 1 ) then {


		["intro.ogv"] call BIS_fnc_playVideo;

};

// Techcheck Funktion

_techcheckvar = "param_techcheck" call BIS_fnc_getParamValue;
_techcheckcode = profileNamespace getVariable "tfw_techcheck";
if (isNil "_techcheckcode") then
{
	profileNamespace setVariable ["tfw_techcheck", 0];
	saveProfileNamespace;
	_techcheckcode = 0;
};
sleep 10;


if (_techcheckvar == 0) then
{

	profileNamespace setVariable ["tfw_techcheck",0];
	profileNamespace setVariable ["tfw_techcheck",12345];
	saveProfileNamespace;
	sleep 10;
	systemChat "Techcheck Abgeschlossen";
	sleep 10;
	endMission "END5";

};

if (_techcheckvar == 1) then
{

	if (_techcheckcode == 12345) then
	{

		systemChat "Techcheck Code Akzeptiert";

	} else {

		systemChat "Techcheck Code nicht Akzeptiert";
		sleep 10;
		endMission "END6";
	};
};





//Zeus FPS anzeige

_zeusvar = "param_zeus" call BIS_fnc_getParamValue;

if ( _zeusvar == 1 ) then
	{

   		[] call TFW_fnc_fpszeus ;

	};



if (true) exitWith {};