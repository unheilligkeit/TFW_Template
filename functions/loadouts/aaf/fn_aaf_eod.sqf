
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_I_CombatUniform_shortsleeve","U_I_CombatUniform"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_PlateCarrierIAGL_dgtl","V_PlateCarrierIA2_dgtl","V_PlateCarrierIAGL_oli"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_AssaultPack_khk","B_TacticalPack_oli"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetIA"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" ];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_anprc148jem_1";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ACE_M26_Clacker";
_unit addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["arifle_Mk20_F","30Rnd_556x45_Stanag"],["arifle_Mk20_plain_F","30Rnd_556x45_Stanag"],["arifle_Mk20_F","30Rnd_556x45_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Aco","optic_Aco_grn","optic_Arco","optic_mrco","optic_hamr","optic_Holosight",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition


_unit addWeapon "ACE_VMM3" ;



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
_unit linkItem "ACE_NVG_Gen1";
