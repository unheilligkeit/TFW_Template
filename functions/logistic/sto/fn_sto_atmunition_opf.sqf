_fm_drohen = _this select 0;
_kistefraktion = "param_loadout_opf" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- CSAT Vanilla ----
	{
		_fm_drohen addWeaponCargoGlobal ["launch_NLAW_F", 4];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_short_F", 2];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_F", 2];
		_fm_drohen addMagazineCargoGlobal ["Titan_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["Titan_AA", 6];
	};

	case 1: //---- RHS Russland EMR ----
	{
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6]
	};

};