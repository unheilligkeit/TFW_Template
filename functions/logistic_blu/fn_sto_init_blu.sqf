_controller = _this select 0;

if (isServer) then
{
	stocount_blu = 0
};




if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{


		_log_sto_main_blu = ["log_sto_main_blu", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_sto_main_blu] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_blu = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_blu = ["log_sto_munition_blu", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_blu = ["log_sto_atmunition_blu", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_blu = ["log_sto_granaten_blu", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_blu = ["log_sto_sprengstoff_blu", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_blu = ["log_sto_support_blu", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_support] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_blu = ["log_sto_leer_blu", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_leer] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_sto_main_blu = ["log_sto_main_blu", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions"], _log_sto_main_blu] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_blu = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_blu = ["log_sto_munition_blu", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_blu = ["log_sto_atmunition_blu", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_blu = ["log_sto_granaten_blu", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_blu = ["log_sto_sprengstoff_blu", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_blu = ["log_sto_support_blu", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_support] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_blu = ["log_sto_leer_blu", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_blu"], _log_sto_leer] call ace_interact_menu_fnc_addActionToObject;

	};