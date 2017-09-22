
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["rhs_uniform_cu_ucp","rhs_uniform_cu_ucp_101st","rhs_uniform_cu_ucp_10th","rhs_uniform_cu_ucp_1stcav","rhs_uniform_cu_ucp_82nd"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["rhsusf_iotv_ucp_Teamleader","rhsusf_spcs_ucp_rifleman"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["tfw_ilbe_blade_coy"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_ucp_norotos","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_cam"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "rhs_ess_black","rhs_googles_black","G_Bandanna_beast","G_Bandanna_shades","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear"];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToVest "3Rnd_HE_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShellBlue";};
_unit addItemToBackpack "ACE_DAGR";
_unit addItemToBackpack "ACE_MapTools";
_unit addItemToVest "Laserbatteries";






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["rhs_weap_m4_m320","rhs_mag_30Rnd_556x45_Mk318_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 6 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG2","rhsusf_acc_ACOG3","rhsusf_acc_eotech_552","rhsusf_acc_ACOG_RMR","rhsusf_acc_compm4",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};







// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "Laserdesignator";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ACE_Altimeter";

// GPS
_unit linkItem "ItemAndroid";

// Nachtsichtgeräte
_unit linkItem "rhsusf_ANPVS_15";
