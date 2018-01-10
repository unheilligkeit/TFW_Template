_fm_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 10];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["3Rnd_UGL_FlareWhite_F", 5];
	};

	case 1: //---- US Army OCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 20];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["UGL_FlareWhite_F", 5];
	};

	case 2: //---- US Army UCP ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 20];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["UGL_FlareWhite_F", 5];
	};

	case 3: //---- BW Flecktarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 20];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["UGL_FlareWhite_F", 5];
	};

	case 4: //---- BW Tropentarn ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 20];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["UGL_FlareWhite_F", 5];
	};

	case 5: //---- US Marine Woodland ----
	{
		_fm_drohen addMagazineCargoGlobal ["SmokeShell", 10];
		_fm_drohen addMagazineCargoGlobal ["HandGrenade", 10];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 20];
		_fm_drohen addMagazineCargoGlobal ["B_IR_Grenade", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 5];
		_fm_drohen addMagazineCargoGlobal ["ACE_Chemlight_IR", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellPurple", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellRed", 5];
		_fm_drohen addMagazineCargoGlobal ["SmokeShellGreen", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_fm_drohen addMagazineCargoGlobal ["UGL_FlareWhite_F", 5];
	};


};