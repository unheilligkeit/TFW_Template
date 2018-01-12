_kiste = _this select 0;
_center = getPosATL al6_spawn_gre;
_spawn = _center findEmptyPosition [0,10,"I_UAV_06_F"];
al6count_gre = al6count_gre + 1;

// Auswahl der Drone


if (_kiste isEqualTo 0) then
{
	myUAV_gre = "I_UAV_06_medical_F" createVehicle _spawn;
	createVehicleCrew myUAV_gre;
} else {
	myUAV_gre = "I_UAV_06_F" createVehicle _spawn;
	createVehicleCrew myUAV_gre;
};


// Auswahl der Beladung

switch (_kiste) do
{
	case 0:
	{
		_string1 = "AL6_Medizin_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_medizin_gre;
	};

	case 1:
	{
		_string1 = "AL6_Munition_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_munition_gre;

	};

	case 2:
	{
		_string1 = "AL6_MGmunition_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_mgmunition_gre;

	};

	case 3:
	{
		_string1 = "AL6_Granaten_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_granaten_gre;

	};

	case 4:
	{
		_string1 = "AL6_Sprengstoff_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_sprengstoff_gre;

	};

	case 5:
	{
		_string1 = "AL6_Support_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_support_gre;

	};

	case 6:
	{

		_string1 = "AL6_Luftpost_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_clearcargo;
		for "_i" from 1 to 10 do {myUAV_gre addMagazine "1Rnd_Leaflets_West_F";};
		myUAV_gre addWeapon "Bomb_Leaflets";

	};

	case 7:
	{
		_string1 = "AL6_Biene_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[myUAV_gre] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "AL6_Banana_";
		_string2 = str al6count_gre;
		_string3 = _string1 + _string2;
		(group myUAV_gre)  setGroupIdGlobal [_string3];
		[myUAV_gre] call TFW_fnc_al6_fruchtkorb_gre;
	};
};


