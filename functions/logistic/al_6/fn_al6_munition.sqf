_fm_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 6];
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 6];
	};

	case 1: //---- US Army OCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 12];
	};

	case 2: //---- US Army UCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 12];
	};

	case 3: //---- BW Flecktarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 8];
	};

	case 4: //---- BW Tropentarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 8];
	};

	case 5: //---- US Marine Woodland ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 12];
	};

	case 7: //---- Swiss Army ----
	{
		_fm_drohen addMagazineCargoGlobal ["30Rnd_56x45_GP90_Armour_Piercing", 12];
	};

};