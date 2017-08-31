
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_B_HeliPilotCoveralls"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_TacVest_oli","V_TacVest_khk","V_TacVest_brn","V_TacVest_blk"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["rhsusf_falconii_coy"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_CrewHelmetHeli_B"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [  "" , "rhs_ess_black","rhs_googles_black","G_Bandanna_beast","G_Bandanna_shades","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear"];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TFW_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TFW_fnc_loadoutgranaten ;

// Funkgeräte
_unit addItemToUniform "ACRE_PRC152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["rhsusf_weap_MP7A2","UK3CB_BAF_9_17Rnd"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_aco","optic_aco_grn",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};







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
_unit linkItem "rhsusf_ANPVS_15";
