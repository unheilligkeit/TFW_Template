_controller = _this select 0;

if (isServer) then
{
	stocount_gre = 0
};




if ((_controller isKindOf "Man") or (_controller isKindOf "LandVehicle")) then
	{


		_log_sto_main_gre = ["log_sto_main_gre", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions"], _log_sto_main_gre] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_gre = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_gre = ["log_sto_munition_gre", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_gre = ["log_sto_atmunition_gre", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_gre = ["log_sto_granaten_gre", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_gre = ["log_sto_sprengstoff_gre", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_gre = ["log_sto_support_gre", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_gre = ["log_sto_leer_gre", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 1, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_leer_gre] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_sto_main_gre = ["log_sto_main_gre", "Stomper Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions"], _log_sto_main_gre] call ace_interact_menu_fnc_addActionToObject;


		_log_sto_medizin_gre = ["log_sto_medizin", "Medic", "", { [ 0 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_munition_gre = ["log_sto_munition_gre", "Munition", "", { [ 1 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_atmunition_gre = ["log_sto_atmunition_gre", "AT Munition", "", { [ 2 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_atmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_granaten_gre = ["log_sto_granaten_gre", "Granaten", "", { [ 3 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_sprengstoff_gre = ["log_sto_sprengstoff_gre", "Sprengstoff", "", { [ 4 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_support_gre = ["log_sto_support_gre", "Support", "", { [ 5 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_sto_leer_gre = ["log_sto_leer_gre", "Leere Drohe", "", { [ 6 ] call TFW_fnc_sto_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller, 0, ["ACE_SelfActions", "log_sto_main_gre"], _log_sto_leer_gre] call ace_interact_menu_fnc_addActionToObject;

	};