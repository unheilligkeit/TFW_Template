
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_O_V_Soldier_Viper_hex_F"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_PlateCarrierH_CTRG"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_ViperHarness_hex_M_F"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetO_ViperSP_hex_F"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "G_Shades_Green"];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_fadak_1";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["arifle_ARX_hex_F","30Rnd_65x39_caseless_green"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 5 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Arco"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "muzzle_snds_65_TI_hex_F";

// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["hgun_Rook40_F","16Rnd_9x21_Mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};


// Sekundär Waffe Items
_unit addHandgunItem "optic_MRD";
_unit addHandgunItem "muzzle_snds_L";



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

