_kistelogkiste = _this select 0;
kistelogcenter = getPosATL kistelog_spawn;


switch (_kistelogkiste) do
{
	case 0: // Medizin
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"ACE_medicalSupplyCrate_advanced"];
		kistelog = "ACE_medicalSupplyCrate_advanced" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_medizin;

	};

	case 1: // Munition
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Box_NATO_Ammo_F"];
		kistelog = "Box_NATO_Ammo_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_munition;

	};

	case 2: //MG Munition
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Box_NATO_WpsSpecial_F"];
		kistelog = "Box_NATO_WpsSpecial_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_mgmunition;

	};

	case 3: // At Munition
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Box_NATO_WpsLaunch_F"];
		kistelog = "Box_NATO_WpsLaunch_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_atmunition;

	};

	case 4: // Granten
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Box_NATO_Grenades_F"];
		kistelog = "Box_NATO_Grenades_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_granaten;

	};

	case 5: // Sprengstoff
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Land_PlasticCase_01_medium_F"];
		kistelog = "Land_PlasticCase_01_medium_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_sprengstoff;

	};

	case 6: // Support
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Box_NATO_Support_F"];
		kistelog = "Box_NATO_Support_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_support;

	};

	case 7: // Zigaretten
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Land_PlasticCase_01_small_F"];
		kistelog = "Land_PlasticCase_01_small_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_kistelog_zigarette;

	};

	case 8: // Leer
	{
		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Land_MetalCase_01_medium_F"];
		kistelog = "Land_MetalCase_01_medium_F" createVehicle kistelogspawn;
		[kistelog] call TFW_fnc_clearcargo;

	};


	default
	{

		kistelogspawn = kistelogcenter findEmptyPosition [0,10,"Land_PlasticCase_01_large_F"];
		kistelog = "Land_PlasticCase_01_large_F" createVehicle kistelogspawn;
		[airlog] call TFW_fnc_al6_fruchtkorb;
	};
};