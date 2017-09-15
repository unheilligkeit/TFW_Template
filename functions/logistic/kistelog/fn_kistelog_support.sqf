_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ACRE_PRC152", 2];
_fm_drohen addItemCargoGlobal ["ACRE_PRC117F", 1];
_fm_drohen addWeaponCargoGlobal ["ACE_Vector", 1];
_fm_drohen addWeaponCargoGlobal ["Laserdesignator", 1];
_fm_drohen addItemCargoGlobal ["Laserbatteries", 1];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintGreen", 1];
_fm_drohen addItemCargoGlobal ["ACE_SpraypaintRed", 1];
_fm_drohen addItemCargoGlobal ["ACE_CableTie", 4];
_fm_drohen addItemCargoGlobal ["ACE_EntrenchingTool", 2];
_fm_drohen addItemCargoGlobal ["ACE_MapTools", 2];
_fm_drohen addItemCargoGlobal ["ACE_Flashlight_XL50", 2];
_fm_drohen addItemCargoGlobal ["ItemAndroid", 2];
_fm_drohen addItemCargoGlobal ["ItemcTab", 1];
_fm_drohen addItemCargoGlobal ["ACE_DAGR", 1];
_fm_drohen addItemCargoGlobal ["ACE_RangeCard", 1];
_fm_drohen addItemCargoGlobal ["ACE_Kestrel4500", 1];
_fm_drohen addItemCargoGlobal ["ToolKit", 1];
_fm_drohen addBackpackCargoGlobal ["B_Kitbag_rgr", 1];

