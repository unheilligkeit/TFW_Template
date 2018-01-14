_fm_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 2];
	};

	case 1: //---- US Army OCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 3];
	};

	case 2: //---- US Army UCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 3];
	};

	case 3: //---- BW Flecktarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 2];
	};

	case 4: //---- BW Tropentarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 2];
	};

	case 5: //---- US Marine Woodland ----
	{
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 3];
	};

	case 7: //---- Swiss Army ----
	{
		_fm_drohen addMagazineCargoGlobal ["BWA3_200Rnd_556x45", 3];
	};


};