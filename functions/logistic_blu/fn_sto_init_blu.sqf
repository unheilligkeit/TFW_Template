_controller = _this select 0;

if (isServer) then
{
	stocount = 0
};




if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{


		_log_sto_main = ["log_sto_main", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_sto_main] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition = ["log_sto_munition", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition = ["log_sto_atmunition", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten = ["log_sto_granaten", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff = ["log_sto_sprengstoff", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support = ["log_sto_support", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_support] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer = ["log_sto_leer", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main"], _log_sto_leer] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_sto_main = ["log_sto_main", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions"], _log_sto_main] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition = ["log_sto_munition", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition = ["log_sto_atmunition", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten = ["log_sto_granaten", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff = ["log_sto_sprengstoff", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support = ["log_sto_support", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_support] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer = ["log_sto_leer", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_sto_main"], _log_sto_leer] call ace_interact_menu_fnc_addActionToObject;


	};