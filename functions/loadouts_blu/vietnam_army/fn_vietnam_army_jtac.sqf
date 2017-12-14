
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["UNS_ARMY_BDU_1stCav65spc5"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["UNS_M1956_A3"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["tf_rt1523g_green"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["UNS_M1_5A"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ ""];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten_vietnam ;

// Funkgeräte
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {_unit addItemToVest "uns_m18white";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "uns_m34gren";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "uns_m18Purple";};






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["uns_m16","uns_20Rnd_556x45_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 12 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom [""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "";


// Sekundär Waffe und Munition





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
_unit linkItem "";

// Nachtsichtgeräte
_unit linkItem "";
