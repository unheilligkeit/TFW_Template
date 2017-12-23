_airlogkiste = _this select 0;
airlogcenter = getPosATL airlog_spawn;


switch (_airlogkiste) do
{
	case 0: // Medizin
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog = "CargoNet_01_box_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_medizin;

	};

	case 1: // Munition
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog = "B_CargoNet_01_ammo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_munition;

	};

	case 2: // At Munition
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog = "B_CargoNet_01_ammo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_atmunition;

	};

	case 3: // Granten
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog = "B_CargoNet_01_ammo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_granaten;

	};

	case 4: // Sprengstoff
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog = "B_CargoNet_01_ammo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_sprengstoff;

	};

	case 5: // Support
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog = "CargoNet_01_box_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_support;

	};

	case 6: // Leere Kiste
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog = "CargoNet_01_box_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_clearcargo;

	};

	case 7: // Fob
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Cargo_F"];
		airlog = "B_Slingload_01_Cargo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_fob;

	};

	case 8: // Lazarett
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Medevac_F"];
		airlog = "B_Slingload_01_Medevac_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_lazarett;

	};

	case 9: // Fahrzeug Munition
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Ammo_F"];
		airlog = "B_Slingload_01_Ammo_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_clearcargo;

	};

	case 10: // Repair
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Repair_F"];
		airlog = "B_Slingload_01_Repair_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_airlog_repair;

	};

	case 11: // Treibstoff
	{
		airlogspawn = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Fuel_F"];
		airlog = "B_Slingload_01_Fuel_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_clearcargo;

	};


	default
	{

		airlogspawn = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog = "CargoNet_01_box_F" createVehicle airlogspawn;
		[airlog] call TFW_fnc_al6_fruchtkorb;
	};
};