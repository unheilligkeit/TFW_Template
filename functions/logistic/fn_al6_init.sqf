_controller = _this select 0;

if (isServer) then
{
	al6count = 0
};




if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{


		_log_al6_main = ["log_al6_main", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_al6_main] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin = ["log_al6_medizin", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition = ["log_al6_munition", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition = ["log_al6_mgmunition", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_mgmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten = ["log_al6_granaten", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff = ["log_al6_sprengstoff", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support = ["log_al6_support", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_support] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter = ["log_al6_flugblatter", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_flugblatter] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer = ["log_al6_leer", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_al6_main"], _log_al6_leer] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_al6_main = ["log_al6_main", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions"], _log_al6_main] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin = ["log_al6_medizin", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition = ["log_al6_munition", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition = ["log_al6_mgmunition", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_mgmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten = ["log_al6_granaten", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff = ["log_al6_sprengstoff", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support = ["log_al6_support", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_support] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter = ["log_al6_flugblatter", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_flugblatter] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer = ["log_al6_leer", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_al6_main"], _log_al6_leer] call ace_interact_menu_fnc_addActionToObject;


	};













