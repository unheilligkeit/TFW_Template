
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["BWA3_Uniform_Ghillie_idz_Tropen"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["BWA3_Vest_Tropen","BWA3_Vest_Grenadier_Tropen","BWA3_Vest_Leader_Tropen","BWA3_Vest_Marksman_Tropen","BWA3_Vest_Autorifleman_Tropen","BWA3_Vest_Rifleman1_Tropen"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["BWA3_PatrolPack_Tropen"];
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
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToVest "ACE_SpraypaintRed";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_RangeCard";
_unit addItemToUniform "ACE_ATragMX";
for "_i" from 1 to 7 do {_unit addItemToBackpack "BWA3_10Rnd_127x99_G82";};

_unit setVariable ["ACE_medical_medicClass", 2];







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["hlc_rifle_G36V","hlc_30rnd_556x45_EPR_G36"],["hlc_rifle_G36KV","hlc_30rnd_556x45_EPR_G36"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["BWA3_optic_EOTech_Mag_Off","BWA3_optic_ZO4x30","BWA3_optic_RSAS","BWA3_optic_EOTech","BWA3_optic_ZO4x30_Single"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items



// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["BWA3_P8","BWA3_15Rnd_9x19_P8"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};


// Waffentasche Snipergewehr
private _gunbag = backpackContainer _unit;
private _weapon = "BWA3_G82";
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
_unit linkItem "dsk_nsv";
