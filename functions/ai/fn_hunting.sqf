
/*

[spawn3,independent,["LOP_AFR_Infantry_TL","LOP_AFR_Infantry_Rifleman_2","LOP_AFR_Infantry_GL"],"FULL"] call TFW_fnc_hunting;


Die Parameter sind diese [spawnobjekt,seite,["Einheiten oder einheit"],Marschtempo] call hunting;


*/




params ["_start", "_side", "_units", "_speed"];

private _dogclass = selectRandom ["Alsatian_Sandblack_F","Alsatian_Black_F","Alsatian_Sand_F","Fin_tricolour_F","Fin_ocherwhite_F","Fin_blackwhite_F","Fin_sand_F"];
private _group = [getPos _start, _side, _units] call BIS_fnc_spawnGroup;
private _target = selectRandom playableUnits;
private _groupWP = _group addWaypoint [position _target, 0];
private _sound = selectRandom ["A3\Sounds_F\ambient\animals\dog1.wss","A3\Sounds_F\ambient\animals\dog2.wss","A3\Sounds_F\ambient\animals\dog3.wss"];
private _dog = _group createUnit [_dogclass, getPos _start, [], 5, "CAN_COLLIDE"];
_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];
_dog playMove "Dog_Sprint";
_groupWP setWaypointType "MOVE";
_groupWP setWaypointFormation "LINE";
_groupWP setWaypointSpeed _speed;
_group setCombatMode "RED";
{
_x setskill ["general",1];
} forEach units _group;

[{
    (_this select 0) params ["_groupWP", "_group", "_dog", "_sound", "_target"];
    if (({alive _x} count units _group) == 0) exitWith {(_this select 1) call CBA_fnc_removePerFrameHandler;};
    _groupWP setWPPos getPos _target;
    _dog moveTo getPos _target;
    if (alive _dog) then {playSound3D [_sound, _dog, false, getPosASL _dog, 5, 1, 0]};
}, 30, [_groupWP, _group, _dog, _sound, _target]] call CBA_fnc_addPerFrameHandler;


