_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ACE_salineIV", 20];
_fm_drohen addItemCargoGlobal ["ACE_salineIV_500", 30];
_fm_drohen addItemCargoGlobal ["ACE_elasticBandage", 80];
_fm_drohen addItemCargoGlobal ["ACE_packingBandage", 40];
_fm_drohen addItemCargoGlobal ["ACE_tourniquet", 10];
_fm_drohen addItemCargoGlobal ["ACE_epinephrine", 40];
_fm_drohen addItemCargoGlobal ["ACE_morphine", 40];
_fm_drohen addItemCargoGlobal ["ACE_surgicalKit", 2];
_fm_drohen addItemCargoGlobal ["ACE_personalAidKit", 2];
_fm_drohen addItemCargoGlobal ["ACE_bodyBag", 10];



