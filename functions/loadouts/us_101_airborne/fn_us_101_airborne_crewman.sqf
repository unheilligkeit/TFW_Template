
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["fow_u_us_m41_01_private","fow_u_us_m37_01_private"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["fow_v_us_ab_45","fow_v_us_ab_carbine","fow_v_us_ab_garand_bandoleer","fow_v_us_ab_grenade","fow_v_us_ab_thompson"];
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
_unit addItemToUniform "ACE_key_west";

_unit setVariable ["ACE_IsEngineer", 1];





// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["fow_w_m3","fow_30Rnd_45acp"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 15 do {_unit addMagazine _munition;};





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
