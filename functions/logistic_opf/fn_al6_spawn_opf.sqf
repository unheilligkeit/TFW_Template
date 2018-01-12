_kiste = _this select 0;
_center = getPosATL al6_spawn_opf;
_spawn = _center findEmptyPosition [0,10,"O_UAV_06_F"];
al6count_opf = al6count_opf + 1;

// Auswahl der Drone


if (_kiste isEqualTo 0) then
{
	myUAV_opf = "O_UAV_06_medical_F" createVehicle _spawn;
	createVehicleCrew myUAV_opf;
} else {
	myUAV_opf = "O_UAV_06_F" createVehicle _spawn;
	createVehicleCrew myUAV_opf;
};


// Auswahl der Beladung

switch (_kiste) do
{
	case 0:
	{
		_string1 = "AL6_Medizin_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_medizin_opf;
	};

	case 1:
	{
		_string1 = "AL6_Munition_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_munition_opf;

	};

	case 2:
	{
		_string1 = "AL6_MGmunition_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_mgmunition_opf;

	};

	case 3:
	{
		_string1 = "AL6_Granaten_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_granaten_opf;

	};

	case 4:
	{
		_string1 = "AL6_Sprengstoff_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_sprengstoff_opf;

	};

	case 5:
	{
		_string1 = "AL6_Support_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_support_opf;

	};

	case 6:
	{

		_string1 = "AL6_Luftpost_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_clearcargo;
		for "_i" from 1 to 10 do {myUAV_opf addMagazine "1Rnd_Leaflets_West_F";};
		myUAV_opf addWeapon "Bomb_Leaflets";

	};

	case 7:
	{
		_string1 = "AL6_Biene_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[myUAV_opf] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "AL6_Banana_";
		_string2 = str al6count_opf;
		_string3 = _string1 + _string2;
		(group myUAV_opf)  setGroupIdGlobal [_string3];
		[myUAV_opf] call TFW_fnc_al6_fruchtkorb_opf;
	};
};


