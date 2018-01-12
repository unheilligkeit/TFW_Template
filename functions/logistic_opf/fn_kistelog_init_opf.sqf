_controller_opf = _this select 0;





if ((_controller_opf isKindOf "Man") or (_controller_opf isKindOf "LandVehicle")) then
	{

		//menue

		_log_kistelog_main_opf = ["log_kistelog_main_opf", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions"], _log_kistelog_main_opf] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_opf = ["log_kistelog_medizin_opf", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_opf = ["log_kistelog_munition_opf", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_opf = ["log_kistelog_mgmunition_opf", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_mgmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_opf = ["log_kistelog_atmunition_opf", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_opf = ["log_kistelog_granaten_opf", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_opf = ["log_kistelog_sprengstoff_opf", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_opf = ["log_kistelog_support_opf", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_opf = ["log_kistelog_zigarette_opf", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_zigi_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_opf = ["log_kistelog_leer_opf", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_leer_opf] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_kistelog_main_opf = ["log_kistelog_main_opf", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions"], _log_kistelog_main_opf] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_opf = ["log_kistelog_medizin_opf", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_opf = ["log_kistelog_munition_opf", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_opf = ["log_kistelog_mgmunition_opf", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_mgmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_opf = ["log_kistelog_atmunition_opf", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_atmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_opf = ["log_kistelog_granaten_opf", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_opf = ["log_kistelog_sprengstoff_opf", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_opf = ["log_kistelog_support_opf", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_opf = ["log_kistelog_zigarette_opf", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_zigi_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_opf = ["log_kistelog_leer_opf", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_kistelog_main_opf"], _log_kistelog_leer_opf] call ace_interact_menu_fnc_addActionToObject;


	};