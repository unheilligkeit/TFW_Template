
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["SWISS_WOODLAND_TAZ","SWISS_WOODLAND_TAZ_rolledup"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["SWISS_WOODLAND_Carrier_Spec","SWISS_WOODLAND_Carrier_Medium","SWISS_WOODLAND_Carrier_Heavy","SWISS_WOODLAND_Carrier_GL"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_Kitbag_rgr"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["SWISS_WOODLAND_Helmet","SWISS_WOODLAND_Helmet_Light"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" ];
_unit addGoggles _brillenarray;



// =========== Item verteilen ============ //

// Medikit
[_unit] call TF133_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TF133_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_RangeCard";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["srifle_DMR_03_F","20Rnd_762x51_Mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_AMS"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "bipod_01_F_blk";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["SIG_P226","16Rnd_9x21_Mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};





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
_unit linkItem "ItemMicroDAGR";

// Nachtsichtgeräte
_unit linkItem "ACE_NVG_Gen1";

