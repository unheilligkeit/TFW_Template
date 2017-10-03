
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["UNS_ARMY_BDU_1stCav65pv2"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["UNS_M1956_A12"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom [""];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["UNS_M1_3A"];
_unit addHeadgear _helmearray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten_vietnam ;

// Funkgeräte
_unit addItemToUniform "";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 6 do {_unit addItemToVest "uns_12gaugemag_6f";};




// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["uns_m870_mk1","uns_m870mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 7 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom [""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["uns_m1911","uns_m1911mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 3 do {_unit addMagazine _sekmunition;};






// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ItemWatch";

// GPS
_unit linkItem "";

// Nachtsichtgeräte
_unit linkItem "";
