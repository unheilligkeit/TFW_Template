_controller_gre = _this select 0;





if ((_controller_gre isKindOf "Man") or (_controller_gre isKindOf "LandVehicle")) then
	{

		//menue

		_log_kistelog_main_gre = ["log_kistelog_main_gre", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions"], _log_kistelog_main_gre] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_gre = ["log_kistelog_medizin_gre", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_gre = ["log_kistelog_munition_gre", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_gre = ["log_kistelog_mgmunition_gre", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_mgmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_gre = ["log_kistelog_atmunition_gre", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_gre = ["log_kistelog_granaten_gre", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_gre = ["log_kistelog_sprengstoff_gre", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_gre = ["log_kistelog_support_gre", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_gre = ["log_kistelog_zigarette_gre", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_zigi_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_gre = ["log_kistelog_leer_gre", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_leer_gre] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_kistelog_main_gre = ["log_kistelog_main_gre", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions"], _log_kistelog_main_gre] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_gre = ["log_kistelog_medizin_gre", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_gre = ["log_kistelog_munition_gre", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_gre = ["log_kistelog_mgmunition_gre", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_mgmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_gre = ["log_kistelog_atmunition_gre", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_gre = ["log_kistelog_granaten_gre", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_gre = ["log_kistelog_sprengstoff_gre", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_gre = ["log_kistelog_support_gre", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_gre = ["log_kistelog_zigarette_gre", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_zigi_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_gre = ["log_kistelog_leer_gre", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_kistelog_main_gre"], _log_kistelog_leer_gre] call ace_interact_menu_fnc_addActionToObject;


	};