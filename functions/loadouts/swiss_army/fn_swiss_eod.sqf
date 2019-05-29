
_unit = _this select 0;




// ========== Waffen entfernen =============== //

[_unit] call TF133_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //

// Uniform
_uniformarray = selectRandom ["SWISS_WOODLAND_TAZ","SWISS_WOODLAND_TAZ_rolledup"];
_unit forceAddUniform _uniformarray ;

// Westen
_westenarray = selectRandom ["SWISS_WOODLAND_Carrier_Spec","SWISS_WOODLAND_Carrier_Medium","SWISS_WOODLAND_Carrier_Heavy","SWISS_WOODLAND_Carrier_GL"];
_unit addVest _westenarray ;

// Rücksäcke
_rucksackearray = selectRandom ["B_Kitbag_rgr"];
_unit addBackpack _rucksackearray ;

// Helme
_helmearray = selectRandom ["SWISS_WOODLAND_Helmet","SWISS_WOODLAND_Helmet_Light"];
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
_unit linkItem "tf_anprc152";


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ACE_M26_Clacker";
_unit addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};







// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["KA_SG_550","KA_SIG_30rnd_M995_AP_mag"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;
_unit addWeapon _waffe;
for "_i" from 1 to 8 do {_unit addMagazine _munition;};


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

