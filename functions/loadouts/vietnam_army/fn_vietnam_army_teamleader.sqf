
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["UNS_ARMY_BDU_1stCav65sfc"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["UNS_M1956_A3"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom [""];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["UNS_M1_3A"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [""];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten_vietnam ;

// Funkgeräte
_unit addItemToUniform "";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToVest "uns_m18red";};
_unit addItemToVest "uns_m18Purple";
_unit addItemToVest "uns_m34gren";






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["uns_M16_dm","uns_20Rnd_556x45_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 9 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom [""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "";


// Sekundär Waffe und Munition




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
