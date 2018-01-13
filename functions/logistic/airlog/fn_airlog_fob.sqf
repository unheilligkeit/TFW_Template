_fm_drohen = _this select 0;
_kistefraktion = "param_loadout" call BIS_fnc_getParamValue;

// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;

switch (_kistefraktion) do
{
	case 0: //---- Nato Vanilla ----
	{
		_fm_drohen addWeaponCargoGlobal ["launch_NLAW_F", 4];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_short_F", 2];
		_fm_drohen addWeaponCargoGlobal ["launch_B_Titan_F", 2];
		_fm_drohen addMagazineCargoGlobal ["Titan_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["Titan_AA", 6];
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 20];
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 20];
		_fm_drohen addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 10];
		_fm_drohen addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
		_fm_drohen addMagazineCargoGlobal ["130Rnd_338_Mag", 10];
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
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
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
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
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
		_fm_drohen addWeaponCargoGlobal ["BWA3_RGW90", 4];
		_fm_drohen addWeaponCargoGlobal ["BWA3_CarlGustaf", 2];
		_fm_drohen addWeaponCargoGlobal ["BWA3_Fliegerfaust", 2];
		_fm_drohen addMagazineCargoGlobal ["BWA3_CarlGustaf_HEAT", 6];
		_fm_drohen addMagazineCargoGlobal ["BWA3_Fliegerfaust_Mag", 6];
		_fm_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 30];
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
		_fm_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
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
		_fm_drohen addWeaponCargoGlobal ["BWA3_RGW90", 4];
		_fm_drohen addWeaponCargoGlobal ["BWA3_CarlGustaf", 2];
		_fm_drohen addWeaponCargoGlobal ["BWA3_Fliegerfaust", 2];
		_fm_drohen addMagazineCargoGlobal ["BWA3_CarlGustaf_HEAT", 6];
		_fm_drohen addMagazineCargoGlobal ["BWA3_Fliegerfaust_Mag", 6];
		_fm_drohen addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 30];
		_fm_drohen addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
		_fm_drohen addMagazineCargoGlobal ["hlc_100rnd_556x45_EPR_G36", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82", 10];
		_fm_drohen addMagazineCargoGlobal ["BWA3_10Rnd_762x51_G28", 10];
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
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_M136", 4];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fgm148", 2];
		_fm_drohen addWeaponCargoGlobal ["rhs_weap_fim92", 2];
		_fm_drohen addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_fim92_mag", 6];
		_fm_drohen addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40];
		_fm_drohen addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 15];
		_fm_drohen addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
		_fm_drohen addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 10];
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


_fm_drohen addItemCargoGlobal ["tf_anprc152", 2];
_fm_drohen addBackpackCargoGlobal ["tf_rt1523g_big", 2];
_fm_drohen addWeaponCargoGlobal ["ACE_Vector", 2];
_fm_drohen addWeaponCargoGlobal ["Laserdesignator", 2];
_fm_drohen addItemCargoGlobal ["Laserbatteries", 2];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintGreen", 2];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintRed", 2];
_fm_drohen addItemCargoGlobal ["ACE_CableTie", 10];
_fm_drohen addItemCargoGlobal ["ACE_IR_Strobe_Item", 10];
_fm_drohen addItemCargoGlobal ["ACE_EntrenchingTool", 4];
_fm_drohen addItemCargoGlobal ["ACE_MapTools", 2];
_fm_drohen addItemCargoGlobal ["ACE_Flashlight_XL50", 10];
_fm_drohen addItemCargoGlobal ["ItemAndroid", 5];
_fm_drohen addItemCargoGlobal ["ItemcTab", 2];
_fm_drohen addItemCargoGlobal ["ACE_DAGR", 2];
_fm_drohen addItemCargoGlobal ["ACE_wirecutter", 2];
_fm_drohen addItemCargoGlobal ["ACE_RangeCard", 2];
_fm_drohen addItemCargoGlobal ["ItemcTabHCam", 2];
_fm_drohen addItemCargoGlobal ["ACE_Kestrel4500", 2];
_fm_drohen addItemCargoGlobal ["ToolKit", 2];
_fm_drohen addItemCargoGlobal ["ACE_UAVBattery", 2];
_fm_drohen addBackpackCargoGlobal ["B_Kitbag_rgr", 4];
_fm_drohen addItemCargoGlobal ["ACE_salineIV", 20];
_fm_drohen addItemCargoGlobal ["ACE_salineIV_500", 30];
_fm_drohen addItemCargoGlobal ["ACE_elasticBandage", 80];
_fm_drohen addItemCargoGlobal ["ACE_packingBandage", 40];
_fm_drohen addItemCargoGlobal ["ACE_tourniquet", 10];
_fm_drohen addItemCargoGlobal ["ACE_epinephrine", 40];
_fm_drohen addItemCargoGlobal ["ACE_morphine", 40];
_fm_drohen addItemCargoGlobal ["ACE_surgicalKit", 2];
_fm_drohen addItemCargoGlobal ["adv_aceCPR_AED", 2];
_fm_drohen addItemCargoGlobal ["ACE_bodyBag", 10];
_fm_drohen addItemCargoGlobal ["ACE_Clacker", 2];
_fm_drohen addItemCargoGlobal ["ACE_M26_Clacker", 2];
_fm_drohen addItemCargoGlobal ["ACE_DefusalKit", 2];
_fm_drohen addWeaponCargoGlobal ["ACE_VMM3",1];
_fm_drohen addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5];
_fm_drohen addMagazineCargoGlobal ["ATMine_Range_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSMine_Range_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 10];

