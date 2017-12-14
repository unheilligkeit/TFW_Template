
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["UNS_ARMY_BDU_1stCav65pv1"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["UNS_M1956_A3"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["UNS_Alice_2"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["UNS_M1_2A","UNS_M1_3A"];
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
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ACE_M26_Clacker";
_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};






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
_unit addWeapon "ACE_VMM3" ;



// Sekundär Waffe Items







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
