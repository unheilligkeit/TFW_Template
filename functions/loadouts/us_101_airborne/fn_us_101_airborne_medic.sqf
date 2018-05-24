
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["fow_u_us_m42_ab_01_101_private","fow_u_us_m42_ab_01_101_flag_private"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["fow_v_us_medic"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["fow_b_us_m1944_ropes","fow_b_us_m1944"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["fow_h_us_m1_medic"];
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

for "_i" from 1 to 35 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 18 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
_unit addItemToBackpack "ACE_surgicalKit";

_unit setVariable ["ACE_medical_medicClass", 2];



// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["fow_w_m1_garand","fow_8Rnd_762x63"],["fow_w_m1_garand_2","fow_8Rnd_762x63"],["fow_w_m1_garand_l","fow_8Rnd_762x63"],["fow_w_m1_carbine","fow_15Rnd_762x33"],["fow_w_m1_thompson","fow_30Rnd_45acp"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 10 do {_unit addMagazine _munition;};





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

