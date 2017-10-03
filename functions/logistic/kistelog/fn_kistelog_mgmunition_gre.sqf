_log_kiste = _this select 0;
_kistefraktion = "param_loadout_gre" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_log_kiste] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- AAF Vanilla ----
	{
		_log_kiste addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
		_log_kiste addMagazineCargoGlobal ["130Rnd_338_Mag", 5];
	};

	case 1: //---- Syndikat ----
	{
		_log_kiste addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 5];
		_log_kiste addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 5];
	};
};