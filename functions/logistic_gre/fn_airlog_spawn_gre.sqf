_airlogkiste = _this select 0;
airlogcenter_gre = getPosATL airlog_spawn_gre;


switch (_airlogkiste) do
{
	case 0: // Medizin
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_gre = "CargoNet_01_box_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_medizin_gre;

	};

	case 1: // Munition
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_gre = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_munition_gre;

	};

	case 2: // At Munition
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_gre = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_atmunition_gre;

	};

	case 3: // Granten
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_gre = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_granaten_gre;

	};

	case 4: // Sprengstoff
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_gre = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_sprengstoff_gre;

	};

	case 5: // Support
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_gre = "CargoNet_01_box_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_support_gre;

	};

	case 6: // Leere Kiste
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_gre = "CargoNet_01_box_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_clearcargo_gre;

	};

	case 7: // Fob
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_Slingload_01_Cargo_F"];
		airlog_gre = "B_Slingload_01_Cargo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_fob_gre;

	};

	case 8: // Lazarett
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_Slingload_01_Medevac_F"];
		airlog_gre = "B_Slingload_01_Medevac_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_lazarett_gre;

	};

	case 9: // Fahrzeug Munition
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_Slingload_01_Ammo_F"];
		airlog_gre = "B_Slingload_01_Ammo_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_clearcargo_gre;

	};

	case 10: // Repair
	{
		airlogspawn_gre = airlogcenter_gre findEmptyPosition [0,20,"B_Slingload_01_Repair_F"];
		airlog_gre = "B_Slingload_01_Repair_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_airlog_repair_gre;

	};

	case 11: // Treibstoff
	{
		airlogspawn_gre = airlogcenter findEmptyPosition [0,20,"B_Slingload_01_Fuel_F"];
		airlog_gre = "B_Slingload_01_Fuel_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_clearcargo_gre;

	};


	default
	{

		airlogspawn_gre = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_gre = "CargoNet_01_box_F" createVehicle airlogspawn_gre;
		[airlog_gre] call TFW_fnc_al6_fruchtkorb_gre;
	};
};