_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;



_fm_drohen addItemCargoGlobal ["ACE_Banana", 40];