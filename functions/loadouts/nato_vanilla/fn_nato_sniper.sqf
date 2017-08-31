
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_B_GhillieSuit","U_B_FullGhillie_sard","U_B_FullGhillie_lsh","U_B_FullGhillie_ard"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_PlateCarrierSpec_rgr","V_Chestrig_rgr","V_PlateCarrier1_rgr"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["ace_gunbag_Tan"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["H_HelmetB_light","H_HelmetB_camo","H_HelmetB_grass","H_HelmetB_sand","H_HelmetB_snakeskin","H_HelmetB_black","H_HelmetB_desert","H_HelmetB_light","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_snakeskin","H_HelmetB_light_black"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "G_Bandanna_tan","G_Shades_Black","G_Combat","G_Bandanna_shades","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_blk","G_Balaclava_combat","G_Balaclava_blk","G_Balaclava_oli"];
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
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToVest "ACE_SpraypaintRed";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_RangeCard";
_unit addItemToUniform "ACE_ATragMX";
for "_i" from 1 to 8 do {_unit addItemToBackpack "7Rnd_408_Mag";};


_unit setVariable ["ACE_medical_medicClass", 2];



// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["arifle_MX_F","30Rnd_65x39_caseless_mag"],["arifle_MX_Black_F","30Rnd_65x39_caseless_mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 4 do {_unit addMagazine _munition;};




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



// Waffentasche Snipergewehr

private _gunbag = backpackContainer _unit;
private _weapon = "srifle_LRR_camo_F";
private _items =  ["optic_LRPS"];
private _mass = getNumber (configFile >> "CfgWeapons" >> _weapon >> "WeaponSlotsInfo" >> "mass");
[_unit, _gunbag, _mass] call ace_movement_fnc_addLoadToUnitContainer;
_gunbag setVariable ["ace_gunbag_gunbagWeapon", [_weapon, _items,[]], true];




// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "ACE_Vector";

// Karte
_unit linkItem "ItemMap";

// Kompass
_unit linkItem "ItemCompass";

// Uhr
_unit linkItem "ACE_Altimeter";

// GPS
_unit linkItem "ItemAndroid";

// Nachtsichtgeräte
_unit linkItem "ACE_NVG_Gen1";
