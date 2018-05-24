
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["fow_u_us_m42_ab_01_101_private","fow_u_us_m42_ab_01_101_flag_private"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["fow_v_us_ab_bar"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["fow_b_us_m1944_ropes","fow_b_us_m1944"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["fow_h_us_m2_ace","fow_h_us_m2_camo_ace","fow_h_us_m2_net_ace"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "fow_g_gloves1","fow_g_gloves3","fow_g_watch2","fow_g_watch1","","",""];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_Chemlight_Shield";
_unit addItemToUniform "ACE_Chemlight_White";
_extrasarray = selectRandom ["murshun_cigs_cigpack","murshun_cigs_lighter","murshun_cigs_matches","murshun_cigs_cigpack"];
_unit addItemToUniform _extrasarray ;






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["fow_w_m1918a2","fow_20Rnd_762x63"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 12 do {_unit addMagazine _munition;};


_unit addPrimaryWeaponItem "fow_w_acc_m1918a2_handle";
_unit addPrimaryWeaponItem "fow_w_acc_m1918a2_bipod";





// =========== Items Linked verteilen ============ //

// Feldstecher


// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ItemWatch";

// GPS


// Nachtsichtgeräte
