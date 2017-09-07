//////////////////////////////////////////////////////////
/*

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],at1,100] spawn TFW_fnc_groupattack;

*/
//////////////////////////////////////////////////////////

_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_ziel = _this select 3;
_radius = _this select 4;
_posi = getPos _spawn;
_posis = getpos _ziel;


	_grp  = [_posi, _side, _unit,[],[],[0.8,1]] call BIS_fnc_spawnGroup;

	[_grp, _posis, _radius] call CBA_fnc_taskAttack;