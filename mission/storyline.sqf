if (!isServer && hasInterface) exitWith {};

if !(isServer || hasInterface) then {TFW_headless = 1;};
if (isServer) then {TFW_headless = 0;};
publicVariable "TFW_headless";

if (isNil "TFW_taskVar") then { TFW_taskVar = 0; };





waitUntil {sleep 1; TFW_taskVar == 1};

