_controller_gre = _this select 0;





if ((_controller_gre isKindOf "Man") or (_controller_gre isKindOf "LandVehicle")) then
	{

		//menue

		_log_airlog_main_gre = ["log_airlog_main_gre", "Luft Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions"], _log_airlog_main_gre] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_airlog_medizin_gre = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_gre = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_gre = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_gre = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_gre = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_gre = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_gre = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_airlog_main_gre"], _log_airlog_leer_gre] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_airlog_main_gre = ["log_airlog_main_gre", "Frachtnetz Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions"], _log_airlog_main_gre] call ace_interact_menu_fnc_addActionToObject;


		// Kisten

		_log_airlog_medizin_gre = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_gre = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_gre = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_gre = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_gre = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_gre = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_gre = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_MainActions", "log_airlog_main_gre"], _log_airlog_leer_gre] call ace_interact_menu_fnc_addActionToObject;


	};