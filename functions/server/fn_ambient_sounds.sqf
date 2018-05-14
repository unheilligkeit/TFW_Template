if (!isServer) exitWith {};

PZG_EnableSound = true;

params ["_logic"];

private _allSounds = [
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions1.wss", 20],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions2.wss", 23],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions3.wss", 22],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions4.wss", 15],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions5.wss", 27],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight1.wss", 16],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight2.wss", 14],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight3.wss", 18],
    ["A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight4.wss", 50]
];

private _fncPlaySound = {
    params ["_logic", "_allSounds", "_fncPlaySound", "_selectedSound"];
    _selectedSound params ["_soundFile", "_soundDuration"];

    if (PZG_EnableSound) then {
        playSound3D [_soundFile, objNull, true, getPosASL _logic, 10, 1, 0];
    };

    private _nextSound = selectRandom _allSounds;

    [_fncPlaySound, [_logic, _allSounds, _fncPlaySound, _nextSound], _soundDuration] call CBA_fnc_waitAndExecute;
};

[_logic, _allSounds, _fncPlaySound, selectRandom _allSounds] call _fncPlaySound;