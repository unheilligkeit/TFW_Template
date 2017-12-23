_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ToolKit", 5];
_fm_drohen addBackpackCargoGlobal ["B_Kitbag_rgr", 5];

