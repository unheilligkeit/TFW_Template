_fm_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 4];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 5];
	};

	case 1: //---- US Army OCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 8];
	};

	case 2: //---- US Army UCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 8];
	};

	case 3: //---- BW Flecktarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
	};

	case 4: //---- BW Tropentarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
	};

	case 5: //---- US Marine Woodland ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 8];
	};

	case 7: //---- Swiss Army ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 5];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
	};



};