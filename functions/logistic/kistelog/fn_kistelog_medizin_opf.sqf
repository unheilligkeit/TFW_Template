_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ACE_salineIV", 4];
_fm_drohen addItemCargoGlobal ["ACE_salineIV_500", 4];
_fm_drohen addItemCargoGlobal ["ACE_elasticBandage", 20];
_fm_drohen addItemCargoGlobal ["ACE_packingBandage", 10];
_fm_drohen addItemCargoGlobal ["ACE_tourniquet", 4];
_fm_drohen addItemCargoGlobal ["ACE_epinephrine", 10];
_fm_drohen addItemCargoGlobal ["ACE_morphine", 10];
_fm_drohen addItemCargoGlobal ["ACE_surgicalKit", 1];
_fm_drohen addItemCargoGlobal ["ACE_personalAidKit", 1];




