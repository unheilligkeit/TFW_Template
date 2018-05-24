
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["fow_u_us_pilot_01"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["fow_v_us_ab_45"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["ACE_NonSteerableParachute"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["fow_h_us_flight_helmet"];
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

// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["fow_w_m1911","fow_7Rnd_45acp"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};






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
