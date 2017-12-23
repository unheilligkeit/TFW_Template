_controller = _this select 0;





if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{

		//menue

		_log_airlog_main = ["log_airlog_main", "Luft Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_airlog_main] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_airlog_medizin = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_support] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_leer] call ace_interact_menu_fnc_addActionToObject;

		// Huron

		_log_airlog_fob = ["log_airlog_fob", "FOB Container", "", { [ 7 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_fob] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_lazarett = ["log_airlog_lazarett", "Lazarett Container", "", { [ 8 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_lazarett] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_fahrzeugmunition = ["log_airlog_fahrzeugmunition", "Fahrzeug Munition", "", { [ 9 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_fahrzeugmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_reperatur = ["log_airlog_reperatur", "Reperatur Container", "", { [ 10 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_reperatur] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_treibstoff = ["log_airlog_treibstoff", "Treibstoff Container", "", { [ 11 ] call TFW_fnc_airlog_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_airlog_main"], _log_airlog_treibstoff] call ace_interact_menu_fnc_addActionToObject;


	} else {


		//menue

		_log_airlog_main = ["log_airlog_main", "Frachtnetz Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions"], _log_airlog_main] call ace_interact_menu_fnc_addActionToObject;


		// Kisten

		_log_airlog_medizin = ["log_airlog_medizin", "Medic Frachtnetz", "", { [ 0 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_munition = ["log_airlog_munition", "Munition Frachtnetz", "", { [ 1 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_atmunition = ["log_airlog_atmunition", "AT Munition Frachtnetz", "", { [ 2 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_granaten = ["log_airlog_granaten", "Granaten Frachtnetz", "", { [ 3 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_sprengstoff = ["log_airlog_sprengstoff", "Sprengstoff Frachtnetz", "", { [ 4 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_support = ["log_airlog_support", "Support Frachtnetz", "", { [ 5 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_support] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_leer = ["log_airlog_leer", "Leeres Frachtnetz", "", { [ 6 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_leer] call ace_interact_menu_fnc_addActionToObject;

		// Huron

		_log_airlog_fob = ["log_airlog_fob", "FOB Container", "", { [ 7 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_fob] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_lazarett = ["log_airlog_lazarett", "Lazarett Container", "", { [ 8 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_lazarett] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_fahrzeugmunition = ["log_airlog_fahrzeugmunition", "Fahrzeug Munition", "", { [ 9 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_fahrzeugmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_reperatur = ["log_airlog_reperatur", "Reperatur Container", "", { [ 10 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_reperatur] call ace_interact_menu_fnc_addActionToObject;

		_log_airlog_treibstoff = ["log_airlog_treibstoff", "Treibstoff Container", "", { [ 11 ] call TFW_fnc_airlog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_airlog_main"], _log_airlog_treibstoff] call ace_interact_menu_fnc_addActionToObject;

	};