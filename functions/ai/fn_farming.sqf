







_spawn = _this select 0;
_anzahl = _this select 1;
_posi = getPos _spawn;
_count = 0;


while {_count < _anzahl } do

	{
		_unitarray = selectRandom ["C_man_polo_6_F" , "C_Man_casual_1_F" , "C_man_1_2_F" , "C_man_p_fugitive_F" , "C_man_w_worker_F"];
		_grp = createGroup civilian;
		_unit  =  _grp createUnit [_unitarray, _posi, [], 0, "NONE"];
		_schaufel = "Land_Shovel_F" createVehicle _posi;
		_schaufel attachTo[_unit,[-0.01,0.1,0.01],"rightHandMiddle1"];
		_schaufel setDir 0;
		_schaufel setVectorUp[6,-0.0,0];
		[_grp, _posi, 80, random 5, "MOVE", "CARELESS", "YELLOW", "LIMITED", "COLUMN", "", [30,60,80]] spawn CBA_fnc_taskPatrol;
		_count = _count + 1 ;
		sleep random 20;

	};

