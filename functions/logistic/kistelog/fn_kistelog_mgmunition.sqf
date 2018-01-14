_log_kiste = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_log_kiste] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_log_kiste addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
		_log_kiste addMagazineCargoGlobal ["130Rnd_338_Mag", 5];
	};

	case 1: //---- US Army OCP ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 5];
		_log_kiste addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 5];
	};

	case 2: //---- US Army UCP ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 5];
		_log_kiste addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 5];
	};

	case 3: //---- BW Flecktarn ----
	{
		_log_kiste addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 5];
		_log_kiste addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 5];
	};

	case 4: //---- BW Tropentarn ----
	{
		_log_kiste addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 5];
		_log_kiste addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 5];
	};

	case 5: //---- US Marine Woodland ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 5];
		_log_kiste addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 5];
	};

	case 6: //---- '68s Vietnam Army ----
	{
		_log_kiste addMagazineCargoGlobal ["uns_m60mag_200", 8];
		_log_kiste addMagazineCargoGlobal ["uns_30Rnd_556x45_Stanag_T", 15];
	};

	case 7: //---- Swiss Army ----
	{
		_log_kiste addMagazineCargoGlobal ["BWA3_200Rnd_556x45", 5];
		_log_kiste addMagazineCargoGlobal ["BWA3_120Rnd_762x51_soft", 5];
	};


};