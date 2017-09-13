_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;



_fm_drohen addItemCargoGlobal ["ACRE_PRC152", 2];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintGreen", 2];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintRed", 2];
_fm_drohen addItemCargoGlobal ["ACE_CableTie", 5];
_fm_drohen addItemCargoGlobal ["ACE_IR_Strobe_Item", 5];
_fm_drohen addItemCargoGlobal ["ACE_EntrenchingTool", 2];
_fm_drohen addItemCargoGlobal ["ACE_MapTools", 2];
_fm_drohen addItemCargoGlobal ["ACE_Flashlight_XL50", 2];
_fm_drohen addItemCargoGlobal ["ItemAndroid", 2];
_fm_drohen addWeaponCargoGlobal ["ACE_Vector", 2];

