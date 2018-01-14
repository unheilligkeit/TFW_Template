
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TFW_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["SWISS_WOODLAND_Uniform","SWISS_WOODLAND_Uniform_rolledup","SWISS_WOODLAND_Uniform_tshirt"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["SWISS_WOODLAND_Vest_Assaulter","SWISS_WOODLAND_Vest_Heavy","SWISS_WOODLAND_Vest_SpiSchu","SWISS_WOODLAND_Vest"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["tf_rt1523g_big"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["SWISS_WOODLAND_Helmet","SWISS_WOODLAND_Helmet_Light"];
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
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_HuntIR_M203";};
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";
_unit addItemToVest "ItemcTabHCam";
_unit addItemToBackpack "ACE_HuntIR_monitor";





// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["SG553_GL","30Rnd_56x45_GP90_Armour_Piercing"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;
_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};




// Primär Waffe Visire
_visierarray = selectRandom ["optic_Arco","optic_mrco","optic_hamr","optic_Holosight"];
_unit addPrimaryWeaponItem  _visierarray;

// Primär Waffe Items
_unit addPrimaryWeaponItem "acc_pointer_IR";


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["SIG_P226","16Rnd_9x21_Mag"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;
_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};




// =========== Items Linked verteilen ============ //

// Feldstecher
_unit addWeapon "Rangefinder";

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
