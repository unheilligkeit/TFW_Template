
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["PBW_Uniform1_tropen","PBW_Uniform1H_tropen","PBW_Uniform3K_tropen","PBW_Uniform4K_tropen","PBW_Uniform4_tropen","PBW_Uniform3K_tropen","BWA3_Uniform_Tropen","BWA3_Uniform2_Tropen","BWA3_Uniform_idz_Tropen","BWA3_Uniform3_idz_Tropen"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["BWA3_Vest_Tropen","BWA3_Vest_Grenadier_Tropen","BWA3_Vest_Leader_Tropen","BWA3_Vest_Marksman_Tropen","BWA3_Vest_Autorifleman_Tropen","BWA3_Vest_Rifleman1_Tropen"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["BWA3_Kitbag_Tropen","BWA3_AssaultPack_Tropen","BWA3_PatrolPack_Tropen"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["BWA3_M92_Tropen","PBW_Helm4_tropen","PBW_Helm4_tropen_HBO","PBW_Helm4_tropen_HBOD","PBW_Helm4_tropen_H","PBW_Helm3_tropen","PBW_Helm1_tropen_HBO"];
_unit addHeadgear _helmearray;

// Brillen
_brillenarray = selectRandom [ "" , "PBW_Balaclava_schwarz","PBW_Balaclava_schwarzR","PBW_Balaclava_beige","PBW_shemagh_gruen","BWA3_G_Combat_Clear","BWA3_G_Combat_Black","BWA3_G_Combat_Orange"];
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
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_RangeCard";






// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["BWA3_G28_Standard","BWA3_10Rnd_762x51_G28"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["BWA3_optic_20x50"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["BWA3_P8","BWA3_15Rnd_9x19_P8"]];
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
_unit linkItem "dsk_nsv";
