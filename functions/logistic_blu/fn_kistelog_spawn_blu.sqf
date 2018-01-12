_kistelogkiste = _this select 0;
kistelogcenter_blu = getPosATL kistelog_spawn_blu;


switch (_kistelogkiste) do
{
	case 0: // Medizin
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"ACE_medicalSupplyCrate_advanced"];
		kistelog_blu = "ACE_medicalSupplyCrate_advanced" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_medizin_blu;

	};

	case 1: // Munition
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Box_NATO_Ammo_F"];
		kistelog_blu = "Box_NATO_Ammo_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_munition_blu;

	};

	case 2: //MG Munition
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Box_NATO_WpsSpecial_F"];
		kistelog_blu = "Box_NATO_WpsSpecial_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_mgmunition_blu;

	};

	case 3: // At Munition
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Box_NATO_WpsLaunch_F"];
		kistelog_blu = "Box_NATO_WpsLaunch_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_atmunition_blu;

	};

	case 4: // Granten
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Box_NATO_Grenades_F"];
		kistelog_blu = "Box_NATO_Grenades_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_granaten_blu;

	};

	case 5: // Sprengstoff
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Land_PlasticCase_01_medium_F"];
		kistelog_blu = "Land_PlasticCase_01_medium_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_sprengstoff_blu;

	};

	case 6: // Support
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Box_NATO_Support_F"];
		kistelog_blu = "Box_NATO_Support_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_support_blu;

	};

	case 7: // Zigaretten
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Land_PlasticCase_01_small_F"];
		kistelog_blu = "Land_PlasticCase_01_small_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_kistelog_zigarette_blu;

	};

	case 8: // Leer
	{
		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Land_MetalCase_01_medium_F"];
		kistelog_blu = "Land_MetalCase_01_medium_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_clearcargo;

	};


	default
	{

		kistelogspawn_blu = kistelogcenter_blu findEmptyPosition [0,10,"Land_PlasticCase_01_large_F"];
		kistelog_blu = "Land_PlasticCase_01_large_F" createVehicle kistelogspawn_blu;
		[kistelog_blu] call TFW_fnc_al6_fruchtkorb_blu;
	};
};