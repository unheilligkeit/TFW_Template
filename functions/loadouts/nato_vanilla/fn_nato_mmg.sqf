
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["V_PlateCarrierSpec_rgr","V_Chestrig_rgr","V_PlateCarrier1_rgr"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_Kitbag_mcamo","B_Kitbag_rgr"];
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
_unit addItem "ACRE_PRC343";



// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["MMG_02_sand_F","130Rnd_338_Mag"],["MMG_02_black_F","130Rnd_338_Mag"],["MMG_02_camo_F","130Rnd_338_Mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 4 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Arco","optic_mrco","optic_hamr"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "bipod_01_F_snd";


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
_unit linkItem "ItemMicroDAGR";

// Nachtsichtgeräte
_unit linkItem "ACE_NVG_Gen1";


