/*

[pos1,1000,independent,"I_Plane_Fighter_03_AA_F","I_pilot_F",4000] call TFW_fnc_spawnjet;


[spawnpos,höhe,seite,flugzeug,pilot,radius] call spawnjet;

*/



_spawn = _this select 0;
_hight = _this select 1;
_site = _this select 2;
_plane = _this select 3;
_pilot = _this select 4;
_radius = _this select 5;



_grp = createGroup _site;

	for [{_x = 0}, {_x <= 5}, {_x = _x + 1}] do
	{
		_a10 = _plane createVehicle [(getPos _spawn select 0), (getPos _spawn select 1), _hight];
		_a10 setPos [(getPos _a10 select 0) + (_x * 40), getPos _a10 select 1, _hight];
		_a10 engineOn true;
		_a10 setDir 290;
		_dir = 290;
		_speed = 500;
		_a10 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];

		"I_pilot_F" createUnit [getPos _spawn, _grp];
		(units _grp select _x) moveInDriver _a10;
		(units _grp select _x) setSkill 1;
		(units _grp select _x) flyInHeight _hight;
	};
[_grp, getpos _spawn,4000,8, "MOVE", "COMBAT", "RED", "FULL", "STAG COLUMN"] call CBA_fnc_taskPatrol;

