_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;

_fm_drohen addItemCargoGlobal ["ACE_M26_Clacker", 1];
_fm_drohen addItemCargoGlobal ["ACE_DefusalKit", 2];
_fm_drohen addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 1];
_fm_drohen addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 4];