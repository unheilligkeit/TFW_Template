
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["UNS_ARMY_BDU_1stCav65msg"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["UNS_M1956_A9"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom [""];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["UNS_Boonie_OD2"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" ];
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
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "uns_s_M14";
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "uns_m18white";
_unit addItemToUniform "uns_mk3a2gren";

for "_i" from 1 to 3 do {_unit addItemToVest "uns_m18Purple";};
_unit addItemToVest "ACE_MapTools";






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["uns_M40_base","uns_m40mag_T"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 14 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["uns_o_RedfieldART"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["uns_m1911","uns_m1911mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 3 do {_unit addMagazine _sekmunition;};


// Sekundär Waffe Items
_unit addHandgunItem "";




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


