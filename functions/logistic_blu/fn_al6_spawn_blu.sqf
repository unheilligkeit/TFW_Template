_kiste = _this select 0;
_center = getPosATL al6_spawn_blu;
_spawn = _center findEmptyPosition [0,10,"B_UAV_06_F"];
al6count_blu = al6count_blu + 1;

// Auswahl der Drone


if (_kiste isEqualTo 0) then
{
	myUAV_blu = "B_UAV_06_medical_F" createVehicle _spawn;
	createVehicleCrew myUAV_blu;
} else {
	myUAV_blu = "B_UAV_06_F" createVehicle _spawn;
	createVehicleCrew myUAV_blu;
};


// Auswahl der Beladung

switch (_kiste) do
{
	case 0:
	{
		_string1 = "AL6_Medizin_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_medizin_blu;
	};

	case 1:
	{
		_string1 = "AL6_Munition_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_munition_blu;

	};

	case 2:
	{
		_string1 = "AL6_MGmunition_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_mgmunition_blu;

	};

	case 3:
	{
		_string1 = "AL6_Granaten_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_granaten_blu;

	};

	case 4:
	{
		_string1 = "AL6_Sprengstoff_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_sprengstoff_blu;

	};

	case 5:
	{
		_string1 = "AL6_Support_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_support_blu;

	};

	case 6:
	{

		_string1 = "AL6_Luftpost_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_clearcargo;
		for "_i" from 1 to 10 do {myUAV_blu addMagazine "1Rnd_Leaflets_West_F";};
		myUAV_blu addWeapon "Bomb_Leaflets";

	};

	case 7:
	{
		_string1 = "AL6_Biene_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[myUAV_blu] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "AL6_Banana_";
		_string2 = str al6count_blu;
		_string3 = _string1 + _string2;
		(group myUAV_blu)  setGroupIdGlobal [_string3];
		[myUAV_blu] call TFW_fnc_al6_fruchtkorb_blu;
	};
};


