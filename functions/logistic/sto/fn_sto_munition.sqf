_sto_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_sto_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_sto_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 20];
		_sto_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 20];
		_sto_drohen addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 10];
		_sto_drohen addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
		_sto_drohen addMagazineCargoGlobal ["130Rnd_338_Mag", 10];
	};

	case 1: //---- US Army OCP ----
	{
		_sto_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_sto_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

	case 2: //---- US Army UCP ----
	{
		_sto_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_sto_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

	case 3: //---- BW Flecktarn ----
	{
		_sto_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 30];
		_sto_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
	};

	case 4: //---- BW Tropentarn ----
	{
		_sto_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 30];
		_sto_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82", 10];
		_sto_drohen addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
	};

	case 5: //---- US Marine Woodland ----
	{
		_sto_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_sto_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_sto_drohen addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
		_sto_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
	};

};