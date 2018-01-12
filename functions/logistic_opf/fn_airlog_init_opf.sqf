_controller_opf = _this select 0;





if ((_controller_opf isKindOf "Man") or (_controller_opf isKindOf "LandVehicle")) then
	{

		//menue

		_log_airlog_main_opf = ["log_airlog_main_opf", "Luft Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions"], _log_airlog_main_opf] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_airlog_medizin_opf = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_opf = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_opf = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_opf = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_opf = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_opf = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_opf = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_airlog_main_opf"], _log_airlog_leer_opf] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_airlog_main_opf = ["log_airlog_main_opf", "Frachtnetz Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions"], _log_airlog_main_opf] call ace_interact_menu_fnc_addActionToObject;


		// Kisten

		_log_airlog_medizin_opf = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_opf = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_opf = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_opf = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_opf = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_opf = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_opf = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_MainActions", "log_airlog_main_opf"], _log_airlog_leer_opf] call ace_interact_menu_fnc_addActionToObject;


	};