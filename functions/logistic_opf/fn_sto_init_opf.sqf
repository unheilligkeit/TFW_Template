_controller = _this select 0;

if (isServer) then
{
	stocount_opf = 0
};




if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{


		_log_sto_main_opf = ["log_sto_main_opf", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_sto_main_opf] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_opf = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_opf = ["log_sto_munition_opf", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_opf = ["log_sto_atmunition_opf", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_opf = ["log_sto_granaten_opf", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_opf = ["log_sto_sprengstoff_opf", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_opf = ["log_sto_support_opf", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_opf = ["log_sto_leer_opf", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_leer_opf] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_sto_main_opf = ["log_sto_main_opf", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions"], _log_sto_main_opf] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_opf = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_opf = ["log_sto_munition_opf", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_opf = ["log_sto_atmunition_opf", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_opf = ["log_sto_granaten_opf", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_opf = ["log_sto_sprengstoff_opf", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_opf = ["log_sto_support_opf", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_opf = ["log_sto_leer_opf", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_opf"], _log_sto_leer_opf] call ace_interact_menu_fnc_addActionToObject;

	};