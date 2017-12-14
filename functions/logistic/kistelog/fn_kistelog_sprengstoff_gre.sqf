_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;

_fm_drohen addItemCargoGlobal ["ACE_Clacker", 2];
_fm_drohen addItemCargoGlobal ["ACE_DefusalKit", 2];
_fm_drohen addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 4];
_fm_drohen addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 6];
_fm_drohen addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 1];

