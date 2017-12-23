_fm_drohen = _this select 0;


// Löscht inhalt der Drohne

[_fm_drohen] call TFW_fnc_clearcargo ;


_fm_drohen addMagazineCargoGlobal ["murshun_cigs_cigpack", 20];
_fm_drohen addMagazineCargoGlobal ["murshun_cigs_matches", 5];
_fm_drohen addMagazineCargoGlobal ["murshun_cigs_lighter", 5];

