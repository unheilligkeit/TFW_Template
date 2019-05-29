
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_B_GhillieSuit","U_B_FullGhillie_sard","U_B_FullGhillie_lsh","U_B_FullGhillie_ard"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["rhsusf_spc_rifleman","rhsusf_spc_light","rhsusf_spc","rhsusf_spc_patchless_radio","rhsusf_spc_patchless"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["ace_gunbag"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["rhsusf_lwh_helmet_marpatwd","rhsusf_lwh_helmet_marpatwd_blk_ess","rhsusf_lwh_helmet_marpatwd_headset_blk","rhsusf_lwh_helmet_marpatwd_headset","rhsusf_lwh_helmet_marpatwd_ess"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [  "" , "rhs_ess_black","rhs_googles_black","G_Bandanna_beast","G_Bandanna_shades","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear"];
_unit addGoggles _brillenarray;




// =========== Item verteilen ============ //

// Medikit
[_unit] call TF133_fnc_loadoutmedickit ;

// Grantenkit
[_unit] call TF133_fnc_loadoutgranaten ;

// Funkgeräte
_unit addItem "ACRE_PRC343";


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
_waffenarray = selectRandom [["rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_Mk318_Stanag"],["rhs_weap_m16a4","rhs_mag_30Rnd_556x45_Mk318_Stanag"],["rhs_weap_m16a4_carryhandle_pmag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG2","rhsusf_acc_ACOG3","rhsusf_acc_eotech_552","rhsusf_acc_ACOG_RMR","rhsusf_acc_compm4",""];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};

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
_unit linkItem "ItemMicroDAGR";

// Nachtsichtgeräte
_unit linkItem "rhsusf_ANPVS_15";

