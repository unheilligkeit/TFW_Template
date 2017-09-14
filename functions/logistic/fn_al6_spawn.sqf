_kiste = _this select 0;
_center = getPosATL al6_spawn;
_spawn = _center findEmptyPosition [0,10,"B_UAV_06_F"];
al6count = al6count + 1;

// Auswahl der Drone


if (_kiste isEqualTo 0) then
{
	myUAV = "B_UAV_06_medical_F" createVehicle _spawn;
	createVehicleCrew myUAV;
} else {
	myUAV = "B_UAV_06_F" createVehicle _spawn;
	createVehicleCrew myUAV;
};


// Auswahl der Beladung

switch (_kiste) do
{
	case 0:
	{
		_string1 = "AL6_Medizin_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_medizin;
	};

	case 1:
	{
		_string1 = "AL6_Munition_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_munition;

	};

	case 2:
	{
		_string1 = "AL6_MGmunition_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_mgmunition;

	};

	case 3:
	{
		_string1 = "AL6_Granaten_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_granaten;

	};

	case 4:
	{
		_string1 = "AL6_Sprengstoff_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_sprengstoff;

	};

	case 5:
	{
		_string1 = "AL6_Support_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_support;

	};

	case 6:
	{

		_string1 = "AL6_Luftpost_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_clearcargo;
		for "_i" from 1 to 10 do {myUAV addMagazine "1Rnd_Leaflets_West_F";};
		myUAV addWeapon "Bomb_Leaflets";

	};

	case 7:
	{
		_string1 = "AL6_Biene_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[myUAV] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "AL6_Banana_";
		_string2 = str al6count;
		_string3 = _string1 + _string2;
		(group myUAV)  setGroupIdGlobal [_string3];
		[myUAV] call TFW_fnc_al6_fruchtkorb;
	};
};


