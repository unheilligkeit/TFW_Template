
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["fow_u_us_m42_ab_01_101_flag_staffsergeant","fow_u_us_m42_ab_01_101_staffsergeant"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["fow_v_us_ab_thompson_nco","fow_v_us_ab_thompson","fow_v_us_ab_thompson_nco_scr"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["fow_b_us_m1944_ropes","fow_b_us_m1944"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["fow_h_us_m1_officer","fow_h_us_m1_officer_closed","fow_h_us_m1_officer_folded"];
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
_extrasarray = selectRandom ["murshun_cigs_cigpack","murshun_cigs_lighter","murshun_cigs_matches","murshun_cigs_cigpack"];
_unit addItemToUniform _extrasarray ;
_unit addItemToUniform "ACE_MapTools";
_unit addItemToBackpack "ACE_SpraypaintRed";
_unit addItemToBackpack "fow_i_whistle";
_unit addItemToBackpack "ACE_Flashlight_MX991";






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["fow_w_m1_thompson","fow_30Rnd_45acp"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 10 do {_unit addMagazine _munition;};

// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["fow_w_m1911","fow_7Rnd_45acp"]];
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


// Nachtsichtgeräte
