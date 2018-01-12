_kistelogkiste = _this select 0;
kistelogcenter_gre = getPosATL kistelog_spawn_gre;


switch (_kistelogkiste) do
{
	case 0: // Medizin
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"ACE_medicalSupplyCrate_advanced"];
		kistelog_gre = "ACE_medicalSupplyCrate_advanced" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_medizin_gre;

	};

	case 1: // Munition
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Box_NATO_Ammo_F"];
		kistelog_gre = "Box_NATO_Ammo_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_munition_gre;

	};

	case 2: //MG Munition
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Box_NATO_WpsSpecial_F"];
		kistelog_gre = "Box_NATO_WpsSpecial_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_mgmunition_gre;

	};

	case 3: // At Munition
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Box_NATO_WpsLaunch_F"];
		kistelog_gre = "Box_NATO_WpsLaunch_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_atmunition_gre;

	};

	case 4: // Granten
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Box_NATO_Grenades_F"];
		kistelog_gre = "Box_NATO_Grenades_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_granaten_gre;

	};

	case 5: // Sprengstoff
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Land_PlasticCase_01_medium_F"];
		kistelog_gre = "Land_PlasticCase_01_medium_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_sprengstoff_gre;

	};

	case 6: // Support
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Box_NATO_Support_F"];
		kistelog_gre = "Box_NATO_Support_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_support_gre;

	};

	case 7: // Zigaretten
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Land_PlasticCase_01_small_F"];
		kistelog_gre = "Land_PlasticCase_01_small_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_kistelog_zigarette_gre;

	};

	case 8: // Leer
	{
		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Land_MetalCase_01_medium_F"];
		kistelog_gre = "Land_MetalCase_01_medium_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_clearcargo;

	};


	default
	{

		kistelogspawn_gre = kistelogcenter_gre findEmptyPosition [0,10,"Land_PlasticCase_01_large_F"];
		kistelog_gre = "Land_PlasticCase_01_large_F" createVehicle kistelogspawn_gre;
		[kistelog_gre] call TFW_fnc_al6_fruchtkorb_gre;
	};
};