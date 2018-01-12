_controller_blu = _this select 0;





if ((_controller_blu isKindOf "Man") or (_controller_blu isKindOf "LandVehicle")) then
	{

		//menue

		_log_kistelog_main_blu = ["log_kistelog_main_blu", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions"], _log_kistelog_main_blu] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_blu = ["log_kistelog_medizin_blu", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_blu = ["log_kistelog_munition_blu", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_blu = ["log_kistelog_mgmunition_blu", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_mgmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_blu = ["log_kistelog_atmunition_blu", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_blu = ["log_kistelog_granaten_blu", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_blu = ["log_kistelog_sprengstoff_blu", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_blu = ["log_kistelog_support_blu", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_blu = ["log_kistelog_zigarette_blu", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_zigi_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_blu = ["log_kistelog_leer_blu", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_leer_blu] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_kistelog_main_blu = ["log_kistelog_main_blu", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions"], _log_kistelog_main_blu] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin_blu = ["log_kistelog_medizin_blu", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition_blu = ["log_kistelog_munition_blu", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition_blu = ["log_kistelog_mgmunition_blu", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_mgmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition_blu = ["log_kistelog_atmunition_blu", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten_blu = ["log_kistelog_granaten_blu", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff_blu = ["log_kistelog_sprengstoff_blu", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support_blu = ["log_kistelog_support_blu", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_zigi_blu = ["log_kistelog_zigarette_blu", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_zigi_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer_blu = ["log_kistelog_leer_blu", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_kistelog_main_blu"], _log_kistelog_leer_blu] call ace_interact_menu_fnc_addActionToObject;


	};