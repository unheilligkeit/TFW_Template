_kiste = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;
_center = getPosATL al6_spawn;
_spawn = _center findEmptyPosition [0,10,"B_UAV_06_F"];


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
		[myUAV] call TFW_fnc_al6_medizin;
	};

	case 1:
	{

		[myUAV] call TFW_fnc_al6_munition;

	};

	case 2:
	{

		[myUAV] call TFW_fnc_al6_mgmunition;

	};

	case 3:
	{

		[myUAV] call TFW_fnc_al6_granaten;

	};

	case 4:
	{

		[myUAV] call TFW_fnc_al6_sprengstoff;

	};

	case 5:
	{

		[myUAV] call TFW_fnc_al6_support;

	};

	case 6:
	{
		[myUAV] call TFW_fnc_clearcargo;
		for "_i" from 1 to 10 do {myUAV addMagazine "1Rnd_Leaflets_West_F";};
		myUAV addWeapon "Bomb_Leaflets";

	};

	case 7:
	{

		// Leere Drohne
		[myUAV] call TFW_fnc_clearcargo;

	};


	default
	{
		[myUAV] call TFW_fnc_al6_fruchtkorb;
	};
};


_s = str time;