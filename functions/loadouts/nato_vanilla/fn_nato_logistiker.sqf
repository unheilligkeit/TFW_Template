
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_DeckCrew_yellow_F"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_Kitbag_mcamo"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetB_light","H_HelmetB_camo","H_HelmetB_sand","H_HelmetB_snakeskin","H_HelmetB_black","H_HelmetB_desert","H_HelmetB_light","H_HelmetB_light_sand","H_HelmetB_snakeskin","H_HelmetB_light_black"];
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
_unit addItem "ACRE_PRC343";
_unit addItem "ACRE_PRC152";

// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_key_west";

_unit addItemToBackpack "ToolKit";

_unit setVariable ["ACE_IsEngineer", 2];







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["arifle_MXC_F","30Rnd_65x39_caseless_mag"],["arifle_MXC_Black_F","30Rnd_65x39_caseless_mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 6 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Aco","optic_Aco_grn","optic_Arco","optic_mrco","optic_hamr","optic_Holosight",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};


// Sekundär Waffe Items
_unit addHandgunItem "optic_MRD";




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
_unit linkItem "ItemAndroid";

// Nachtsichtgeräte
_unit linkItem "ACE_NVG_Gen1";



