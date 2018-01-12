_controller_blu = _this select 0;





if ((_controller_blu isKindOf "Man") or (_controller_blu isKindOf "LandVehicle")) then
	{

		//menue

		_log_airlog_main_blu = ["log_airlog_main_blu", "Luft Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions"], _log_airlog_main_blu] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_airlog_medizin_blu = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_blu = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_blu = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_blu = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_blu = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_blu = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_blu = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_leer_blu] call ace_interact_menu_fnc_addActionToObject;

		// Huron

		_log_airlog_fob_blu = ["log_airlog_fob", "FOB Container", "", { [ 7 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_fob_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_lazarett_blu = ["log_airlog_lazarett", "Lazarett Container", "", { [ 8 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_lazarett_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_fahrzeugmunition_blu = ["log_airlog_fahrzeugmunition", "Fahrzeug Munition", "", { [ 9 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_fahrzeugmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_reperatur_blu = ["log_airlog_reperatur", "Reperatur Container", "", { [ 10 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_reperatur_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_treibstoff_blu = ["log_airlog_treibstoff", "Treibstoff Container", "", { [ 11 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_airlog_main_blu"], _log_airlog_treibstoff_blu] call ace_interact_menu_fnc_addActionToObject;


	} else {


		//menue

		_log_airlog_main_blu = ["log_airlog_main_blu", "Frachtnetz Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions"], _log_airlog_main_blu] call ace_interact_menu_fnc_addActionToObject;


		// Kisten

		_log_airlog_medizin_blu = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition_blu = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition_blu = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_atmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten_blu = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff_blu = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support_blu = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer_blu = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_leer_blu] call ace_interact_menu_fnc_addActionToObject;

		// Huron

		_log_airlog_fob_blu = ["log_airlog_fob", "FOB Container", "", { [ 7 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_fob_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_lazarett_blu = ["log_airlog_lazarett", "Lazarett Container", "", { [ 8 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_lazarett_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_fahrzeugmunition_blu = ["log_airlog_fahrzeugmunition", "Fahrzeug Munition", "", { [ 9 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_fahrzeugmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_reperatur_blu = ["log_airlog_reperatur", "Reperatur Container", "", { [ 10 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_reperatur_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_treibstoff_blu = ["log_airlog_treibstoff", "Treibstoff Container", "", { [ 11 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_MainActions", "log_airlog_main_blu"], _log_airlog_treibstoff_blu] call ace_interact_menu_fnc_addActionToObject;

	};