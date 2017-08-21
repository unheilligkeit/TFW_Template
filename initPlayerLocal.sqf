
// Gruppen Manger
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;


// Loadout Auswahl
[player] call TFW_fnc_loadoutselect ;


// Intro Film
waitUntil {!(isNull (findDisplay 46))};
["intro.ogv"] call BIS_fnc_playVideo;


//Zeus FPS anzeige
[] call TFW_fnc_fpszeus ;

if (true) exitWith {};