_unit = _this select 0;
_leader = leader group _unit;

if (vehicle _leader != _leader) then {
	_vehicle = vehicle _leader;
	_unit moveInCargo _vehicle;
} else {
	_unit setPos (getPos _leader);
};

if (_leader == _unit) then {
	_target = (units group _unit) select 1;
	if (!isNil "_target") then {
		if (vehicle _target != _target) then {
			_vehicle = vehicle _target;
			_unit moveInCargo _vehicle;
		} else {
			_unit setPos (getPos _target);
		};
	};
};