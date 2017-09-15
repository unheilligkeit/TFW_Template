_log_kiste = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_log_kiste] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_log_kiste addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 20];
		_log_kiste addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 10];

	};

	case 1: //---- US Army OCP ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 20];
		_log_kiste addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

	case 2: //---- US Army UCP ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 20];
		_log_kiste addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

	case 3: //---- BW Flecktarn ----
	{
		_log_kiste addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 15];
		_log_kiste addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 5];
		_log_kiste addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
	};

	case 4: //---- BW Tropentarn ----
	{
		_log_kiste addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 15];
		_log_kiste addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 5];
		_log_kiste addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
	};

	case 5: //---- US Marine Woodland ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 20];
		_log_kiste addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

};