_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addItemCargoGlobal ["ACE_salineIV", 40];
_fm_drohen addItemCargoGlobal ["ACE_salineIV_500", 40];
_fm_drohen addItemCargoGlobal ["ACE_elasticBandage", 160];
_fm_drohen addItemCargoGlobal ["ACE_packingBandage", 80];
_fm_drohen addItemCargoGlobal ["ACE_tourniquet", 20];
_fm_drohen addItemCargoGlobal ["ACE_epinephrine", 80];
_fm_drohen addItemCargoGlobal ["ACE_morphine", 80];
_fm_drohen addItemCargoGlobal ["ACE_surgicalKit", 10];
_fm_drohen addItemCargoGlobal ["ACE_personalAidKit", 10];
_fm_drohen addItemCargoGlobal ["ACE_bodyBag", 20];


