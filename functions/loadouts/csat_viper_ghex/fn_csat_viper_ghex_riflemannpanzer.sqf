
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_O_V_Soldier_Viper_F"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_TacVest_oli"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_ViperHarness_ghex_F"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetO_ViperSP_ghex_F"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [""];
_unit addGoggles _brillenarray;





// =========== Item verteilen ============ //

// Medikit
[_unit] call TF133_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TF133_fnc_loadoutgranaten ;

// Funkgeräte
_unit addItem "ACRE_PRC343";



// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["arifle_ARX_ghex_F","30Rnd_65x39_caseless_green"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 6 do {_unit addMagazine _munition;};



// Primär Waffe Visire
_visierarray = selectRandom ["optic_Arco"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";

// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["launch_RPG32_ghex_F","RPG32_F"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 1 do {_unit addMagazine _sekmunition;};


// Sekundär Waffe Items




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

