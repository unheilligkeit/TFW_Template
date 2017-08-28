
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["rhs_uniform_cu_ocp","rhs_uniform_cu_ocp_101st","rhs_uniform_cu_ocp_10th","rhs_uniform_cu_ocp_1stcav","rhs_uniform_cu_ocp_82nd"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["rhsusf_iotv_ocp_Teamleader","rhsusf_iotv_ocp_Rifleman"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["rhsusf_assault_eagleaiii_ocp"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_ocp_norotos","rhsusf_mich_bare","rhsusf_mich_bare_norotos_alt_headset","rhsusf_mich_bare_norotos_semi","rhsusf_opscore_aor1_pelt_nsw","rhsusf_opscore_mc_cover","rhsusf_opscore_mc_cover_pelt_cam"];
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
_unit addItemToUniform "ACRE_PRC152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_RangeCard";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["rhs_weap_XM2010","rhsusf_5Rnd_300winmag_xm2010"],["rhs_weap_XM2010_wd","rhsusf_5Rnd_300winmag_xm2010"],["rhs_weap_XM2010_sa","rhsusf_5Rnd_300winmag_xm2010"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["rhsusf_acc_premier","rhsusf_acc_premier_low","rhsusf_acc_M8541"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};







// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "Binocular";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ItemWatch";

// GPS
_unit linkItem "ItemMicroDAGR";

// Nachtsichtgeräte
_unit linkItem "rhsusf_ANPVS_15";
