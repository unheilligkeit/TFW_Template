


if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
    if(isDedicated) exitWith {};



    ["ACRE_PRC148", "default", "example1"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC117F", "default", "example1"] call acre_api_fnc_copyPreset;

    ["ACRE_PRC148", "example1", 1, "description", "Kampfkreis"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 2, "description", "Wolf1"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 3, "description", "Wolf2"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 4, "description", "Biber"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 5, "description", "Adler"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 6, "description", "Gepard"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "example1", 7, "description", "Zeus"] call acre_api_fnc_setPresetChannelField;

    ["ACRE_PRC152", "example1", 1, "description", "Kampfkreis"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 2, "description", "Wolf1"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 3, "description", "Wolf2"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 4, "description", "Biber"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 5, "description", "Adler"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 6, "description", "Gepard"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "example1", 7, "description", "Zeus"] call acre_api_fnc_setPresetChannelField;

    ["ACRE_PRC117F", "example1", 1, "name", "Kampfkreis"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 2, "name", "Wolf1"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 3, "name", "Wolf2"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 4, "name", "Biber"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 5, "name", "Adler"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 6, "name", "Gepard"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "example1", 7, "name", "Zeus"] call acre_api_fnc_setPresetChannelField;

    ["ACRE_PRC148", "example1"] call acre_api_fnc_setPreset;
    ["ACRE_PRC152", "example1"] call acre_api_fnc_setPreset;
    ["ACRE_PRC117F", "example1"] call acre_api_fnc_setPreset;
};