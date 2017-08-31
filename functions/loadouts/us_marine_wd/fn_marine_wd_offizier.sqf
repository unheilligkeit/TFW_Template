
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["rhs_uniform_FROG01_wd"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["rhsusf_spc_rifleman","rhsusf_spc_light","rhsusf_spc","rhsusf_spc_patchless_radio","rhsusf_spc_patchless"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["rhsusf_falconii_coy"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_Beret_Colonel"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [  "" , "rhs_ess_black","rhs_googles_black","G_Bandanna_beast","G_Bandanna_shades","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear"];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToBackpack "ACRE_PRC117F";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "3Rnd_SmokeRed_Grenade_shell";
_unit addItemToVest "ItemcTabHCam";
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "ACE_MapTools";
_unit addItemToBackpack "ItemcTab";
_unit addItemToBackpack "ACE_NVG_Gen1";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["rhs_weap_m16a4_carryhandle_M203","rhs_mag_30Rnd_556x45_Mk318_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG2","rhsusf_acc_ACOG3","rhsusf_acc_eotech_552","rhsusf_acc_ACOG_RMR","rhsusf_acc_compm4",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};







// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "Rangefinder";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ItemWatch";

// GPS
_unit linkItem "ItemAndroid";

// Nachtsichtgeräte
_unit linkItem "rhsusf_ANPVS_15";
