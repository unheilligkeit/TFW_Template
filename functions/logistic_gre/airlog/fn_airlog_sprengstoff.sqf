_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;

_fm_drohen addItemCargoGlobal ["ACE_Clacker", 2];
_fm_drohen addItemCargoGlobal ["ACE_M26_Clacker", 2];
_fm_drohen addItemCargoGlobal ["ACE_DefusalKit", 2];
_fm_drohen addWeaponCargoGlobal ["ACE_VMM3",1];
_fm_drohen addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5];
_fm_drohen addMagazineCargoGlobal ["ATMine_Range_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSMine_Range_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 10];
_fm_drohen addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 10];
