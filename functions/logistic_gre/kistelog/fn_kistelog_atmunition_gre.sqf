_fm_drohen = _this select 0;
_kistefraktion = "param_loadout_gre" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- AAF Vanilla ----
	{
		_fm_drohen addWeaponCargoGlobal ["launch_NLAW_F", 2];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_short_F", 1];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_F", 1];
		_fm_drohen addMagazineCargoGlobal ["Titan_AT", 3];
		_fm_drohen addMagazineCargoGlobal ["Titan_AA", 3];
	};

	case 1: //---- Syndikat ----
	{
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 1];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 1];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 3];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 3];
	};	

};