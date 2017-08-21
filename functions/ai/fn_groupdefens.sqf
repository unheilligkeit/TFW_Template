//////////////////////////////////////////////////////////
/*

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50,true] spawn TFW_fnc_groupdefens;

*/
//////////////////////////////////////////////////////////

_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_radius = _this select 3;
_patrol = _this select 4;

{

	_grp  = [getPos _x, _side, _unit] call BIS_fnc_spawnGroup;
	[_grp, _grp, _radius,1, _patrol] call CBA_fnc_taskDefend;

} forEach _spawn;