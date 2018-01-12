_airlogkiste = _this select 0;
airlogcenter_blu = getPosATL airlog_spawn_blu;


switch (_airlogkiste) do
{
	case 0: // Medizin
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_blu = "CargoNet_01_box_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_medizin_blu;

	};

	case 1: // Munition
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_blu = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_munition_blu;

	};

	case 2: // At Munition
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_blu = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_atmunition_blu;

	};

	case 3: // Granten
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_blu = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_granaten_blu;

	};

	case 4: // Sprengstoff
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_blu = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_sprengstoff_blu;

	};

	case 5: // Support
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_blu = "CargoNet_01_box_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_support_blu;

	};

	case 6: // Leere Kiste
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_blu = "CargoNet_01_box_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_clearcargo_blu;

	};

	case 7: // Fob
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_Slingload_01_Cargo_F"];
		airlog_blu = "B_Slingload_01_Cargo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_fob_blu;

	};

	case 8: // Lazarett
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_Slingload_01_Medevac_F"];
		airlog_blu = "B_Slingload_01_Medevac_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_lazarett_blu;

	};

	case 9: // Fahrzeug Munition
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_Slingload_01_Ammo_F"];
		airlog_blu = "B_Slingload_01_Ammo_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_clearcargo_blu;

	};

	case 10: // Repair
	{
		airlogspawn_blu = airlogcenter_blu findEmptyPosition [0,20,"B_Slingload_01_Repair_F"];
		airlog_blu = "B_Slingload_01_Repair_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_airlog_repair_blu;

	};

	case 11: // Treibstoff
	{
		airlogspawn_blu = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Fuel_F"];
		airlog_blu = "B_Slingload_01_Fuel_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_clearcargo_blu;

	};


	default
	{

		airlogspawn_blu = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_blu = "CargoNet_01_box_F" createVehicle airlogspawn_blu;
		[airlog_blu] call TFW_fnc_al6_fruchtkorb_blu;
	};
};