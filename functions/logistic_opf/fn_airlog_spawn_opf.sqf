d_airlogkiste = _this select 0;
airlogcenter_opf = getPosATL airlog_spawn_opf;


switch (_airlogkiste) do
{
	case 0: // Medizin
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_opf = "CargoNet_01_box_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_medizin_opf;

	};

	case 1: // Munition
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_opf = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_munition_opf;

	};

	case 2: // At Munition
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_opf = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_atmunition_opf;

	};

	case 3: // Granten
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_opf = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_granaten_opf;

	};

	case 4: // Sprengstoff
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"B_CargoNet_01_ammo_F"];
		airlog_opf = "B_CargoNet_01_ammo_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_sprengstoff_opf;

	};

	case 5: // Support
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_opf = "CargoNet_01_box_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_support_opf;

	};

	case 6: // Leere Kiste
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_opf = "CargoNet_01_box_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_clearcargo_opf;

	};

	case 7: // Fob
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"Land_Pod_Heli_Transport_04_box_F"];
		airlog_opf = "Land_Pod_Heli_Transport_04_box_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_fob_opf;

	};

	case 8: // Lazarett
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"B_Slingload_01_Medevac_F"];
		airlog_opf = "B_Slingload_01_Medevac_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_lazarett_opf;

	};

	case 9: // Fahrzeug Munition
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"Land_Pod_Heli_Transport_04_ammo_F"];
		airlog_opf = "Land_Pod_Heli_Transport_04_ammo_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_clearcargo_opf;

	};

	case 10: // Repair
	{
		airlogspawn_opf = airlogcenter_opf findEmptyPosition [0,20,"Land_Pod_Heli_Transport_04_repair_F"];
		airlog_opf = "Land_Pod_Heli_Transport_04_repair_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_airlog_repair_opf;

	};

	case 11: // Treibstoff
	{
		airlogspawn_opf = airlogcenter findEmptyPosition [0,20,"Land_Pod_Heli_Transport_04_fuel_F"];
		airlog_opf = "Land_Pod_Heli_Transport_04_fuel_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_clearcargo_opf;

	};


	default
	{

		airlogspawn_opf = airlogcenter findEmptyPosition [0,20,"CargoNet_01_box_F"];
		airlog_opf = "CargoNet_01_box_F" createVehicle airlogspawn_opf;
		[airlog_opf] call TFW_fnc_al6_fruchtkorb_opf;
	};
};