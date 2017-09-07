//////////////////////////////////////////////////////////
/*

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50] spawn TFW_fnc_grouppatrol;

*/
//////////////////////////////////////////////////////////

_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_radius = _this select 3;
_posi = getPos _spawn;



	_grp  = [_posi, _side, _unit] call BIS_fnc_spawnGroup;
	[_grp, _posi, _radius, 7, "MOVE", "AWARE", "YELLOW", "LIMITED", "COLUMN", "_grp call CBA_fnc_searchNearby", [30,60,90]] call CBA_fnc_taskPatrol;

