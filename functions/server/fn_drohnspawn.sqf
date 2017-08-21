/*

[spawn2] call TFW_fnc_drohnspawn;

[object] call TFW_fnc_drohnspawn;



*/


_spawn = _this select 0;



_myUAV = [getPos _spawn, 0, "B_UAV_02_F", WEST] call BIS_fnc_spawnVehicle;

createVehicleCrew (_myUAV select 0);

_transport = _myUAV select 2;
_weg1 = _transport addWaypoint [(getPos _spawn), 0,1];
[_transport, 1] setWaypointType "HOLD";
