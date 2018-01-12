_kistelogkiste = _this select 0;
kistelogcenter_opf = getPosATL kistelog_spawn_opf;


switch (_kistelogkiste) do
{
	case 0: // Medizin
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"ACE_medicalSupplyCrate_advanced"];
		kistelog_opf = "ACE_medicalSupplyCrate_advanced" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_medizin_opf;

	};

	case 1: // Munition
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Box_NATO_Ammo_F"];
		kistelog_opf = "Box_NATO_Ammo_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_munition_opf;

	};

	case 2: //MG Munition
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Box_NATO_WpsSpecial_F"];
		kistelog_opf = "Box_NATO_WpsSpecial_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_mgmunition_opf;

	};

	case 3: // At Munition
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Box_NATO_WpsLaunch_F"];
		kistelog_opf = "Box_NATO_WpsLaunch_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_atmunition_opf;

	};

	case 4: // Granten
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Box_NATO_opfnades_F"];
		kistelog_opf = "Box_NATO_opfnades_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_granaten_opf;

	};

	case 5: // Sprengstoff
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Land_PlasticCase_01_medium_F"];
		kistelog_opf = "Land_PlasticCase_01_medium_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_sprengstoff_opf;

	};

	case 6: // Support
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Box_NATO_Support_F"];
		kistelog_opf = "Box_NATO_Support_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_support_opf;

	};

	case 7: // Zigaretten
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Land_PlasticCase_01_small_F"];
		kistelog_opf = "Land_PlasticCase_01_small_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_kistelog_zigarette_opf;

	};

	case 8: // Leer
	{
		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Land_MetalCase_01_medium_F"];
		kistelog_opf = "Land_MetalCase_01_medium_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_clearcargo;

	};


	default
	{

		kistelogspawn_opf = kistelogcenter_opf findEmptyPosition [0,10,"Land_PlasticCase_01_large_F"];
		kistelog_opf = "Land_PlasticCase_01_large_F" createVehicle kistelogspawn_opf;
		[kistelog_opf] call TFW_fnc_al6_fruchtkorb_opf;
	};
};