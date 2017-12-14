_fm_drohen = _this select 0;
_kistefraktion = "param_loadout_blu" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addWeaponCargoGlobal ["launch_NLAW_F", 4];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_short_F", 2];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_F", 2];
		_fm_drohen addMagazineCargoGlobal ["Titan_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["Titan_AA", 6];
	};

	case 1: //---- US Army OCP ----
	{
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6]
	};

	case 2: //---- US Army UCP ----
	{
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6];
	};

	case 3: //---- BW Flecktarn ----
	{
		_fm_drohen addWeaponCargoGlobal ["BWA3_RGW90", 4];
		_fm_drohen addWeaponCargoGlobal ["BWA3_CarlGustaf", 2];
		_fm_drohen addWeaponCargoGlobal ["BWA3_Fliegerfaust", 2];
		_fm_drohen addMagazineCargoGlobal ["BWA3_CarlGustaf_HEAT", 6];
		_fm_drohen addMagazineCargoGlobal ["BWA3_Fliegerfaust_Mag", 6];
	};

	case 4: //---- BW Tropentarn ----
	{
		_fm_drohen addWeaponCargoGlobal ["BWA3_RGW90", 4];
		_fm_drohen addWeaponCargoGlobal ["BWA3_CarlGustaf", 2];
		_fm_drohen addWeaponCargoGlobal ["BWA3_Fliegerfaust", 2];
		_fm_drohen addMagazineCargoGlobal ["BWA3_CarlGustaf_HEAT", 6];
		_fm_drohen addMagazineCargoGlobal ["BWA3_Fliegerfaust_Mag", 6];
	};

	case 5: //---- US Marine Woodland ----
	{
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6];
	};

};