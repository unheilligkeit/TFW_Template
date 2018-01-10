_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ACE_salineIV", 2];
_fm_drohen addItemCargoGlobal ["ACE_salineIV_500", 8];
_fm_drohen addItemCargoGlobal ["ACE_elasticBandage", 35];
_fm_drohen addItemCargoGlobal ["ACE_tourniquet", 2];
_fm_drohen addItemCargoGlobal ["ACE_epinephrine", 10];
_fm_drohen addItemCargoGlobal ["ACE_morphine", 10];



