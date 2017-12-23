_fm_drohen = _this select 0;
_kistefraktion = "param_loadout_gre" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- AAF Vanilla ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 8];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 8];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 6];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 4];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 4];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 4];
	};

	case 1: //---- Syndikat ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 8];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 8];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 12];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 4];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 4];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 4];

	};	

};