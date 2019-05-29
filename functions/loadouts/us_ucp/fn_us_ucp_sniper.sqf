
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


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
[_unit] call TF133_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TF133_fnc_loadoutgranaten ;

// Funkgeräte
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToVest "ACE_SpraypaintRed";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_RangeCard";
_unit addItemToUniform "ACE_ATragMX";
_unit addItemToBackpack "rhsusf_mag_10Rnd_STD_50BMG_M33";
_unit addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_M33";


_unit setVariable ["ACE_medical_medicClass", 2];



// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["rhs_weap_m4","rhs_mag_30Rnd_556x45_Mk318_Stanag"],["rhs_weap_m4_carryhandle_mstock","rhs_mag_30Rnd_556x45_Mk318_Stanag"],["rhs_weap_m4_pmag","rhs_mag_30Rnd_556x45_Mk318_Stanag"],["rhs_weap_m4a1_carryhandle","rhs_mag_30Rnd_556x45_Mk318_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 4 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG2","rhsusf_acc_ACOG3","rhsusf_acc_eotech_552","rhsusf_acc_ACOG_RMR","rhsusf_acc_compm4",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};




// Waffentasche Snipergewehr

private _gunbag = backpackContainer _unit;
private _weapon = "rhs_weap_M107_w";
private _items =  ["rhsusf_acc_LEUPOLDMK4_2"];
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
_unit linkItem "rhsusf_ANPVS_15";

