_controller = _this select 0;





if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{

		//menue

		_log_kistelog_main = ["log_kistelog_main", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_kistelog_main] call ace_interact_menu_fnc_addActionToObject;

		// Kisten

		_log_kistelog_medizin = ["log_kistelog_medizin", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition = ["log_kistelog_munition", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition = ["log_kistelog_mgmunition", "AT Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_mgmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition = ["log_kistelog_atmunition", "Leeres Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten = ["log_kistelog_granaten", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff = ["log_kistelog_sprengstoff", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support = ["log_kistelog_support", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_support] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer = ["log_kistelog_zigarette", "Zigartten Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_leer] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer = ["log_kistelog_leer", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_kistelog_main"], _log_kistelog_leer] call ace_interact_menu_fnc_addActionToObject;




	} else {


		//menue

		_log_kistelog_main = ["log_kistelog_main", "Kisten Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions"], _log_kistelog_main] call ace_interact_menu_fnc_addActionToObject;


		// Kisten

		_log_kistelog_medizin = ["log_kistelog_medizin", "Medic Kisten", "", { [ 0 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_medizin] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_munition = ["log_kistelog_munition", "Munition Kisten", "", { [ 1 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_munition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_mgmunition = ["log_kistelog_mgmunition", "MG Munition Kisten", "", { [ 2 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_mgmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_atmunition = ["log_kistelog_atmunition", "AT Munition Kisten", "", { [ 3 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_atmunition] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_granaten = ["log_kistelog_granaten", "Granaten Kisten", "", { [ 4 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_granaten] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_sprengstoff = ["log_kistelog_sprengstoff", "Sprengstoff Kisten", "", { [ 5 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_sprengstoff] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_support = ["log_kistelog_support", "Support Kisten", "", { [ 6 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_support] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer = ["log_kistelog_leer", "Leeres Kisten", "", { [ 7 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_leer] call ace_interact_menu_fnc_addActionToObject;

		_log_kistelog_leer = ["log_kistelog_leer", "Leeres Kisten", "", { [ 8 ] call TFW_fnc_kistelog_spawn }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_MainActions", "log_kistelog_main"], _log_kistelog_leer] call ace_interact_menu_fnc_addActionToObject;


	};