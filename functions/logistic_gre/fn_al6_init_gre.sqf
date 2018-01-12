_controller_gre = _this select 0;

if (isServer) then
{
	al6count_gre = 0
};




if ((_controller_gre isKindOf "Man") or (_controller_gre isKindOf "LandVehicle")) then
	{


		_log_al6_main_gre = ["log_al6_main_gre", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions"], _log_al6_main_gre] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_gre = ["log_al6_medizin_gre", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_gre = ["log_al6_munition_gre", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_gre = ["log_al6_mgmunition_gre", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_mgmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_gre = ["log_al6_granaten_gre", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_gre = ["log_al6_sprengstoff_gre", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_gre = ["log_al6_support_gre", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_gre = ["log_al6_flugblatter_gre", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_flugblatter_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_gre = ["log_al6_leer_gre", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 1, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_leer_gre] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_al6_main_gre = ["log_al6_main_gre", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions"], _log_al6_main_gre] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_gre = ["log_al6_medizin_gre", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_medizin_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_gre = ["log_al6_munition_gre", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_munition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_gre = ["log_al6_mgmunition_gre", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_mgmunition_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_gre = ["log_al6_granaten_gre", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_granaten_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_gre = ["log_al6_sprengstoff_gre", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_sprengstoff_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_gre = ["log_al6_support_gre", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_support_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_gre = ["log_al6_flugblatter_gre", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_flugblatter_gre] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_gre = ["log_al6_leer_gre", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_gre }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_gre, 0, ["ACE_SelfActions", "log_al6_main_gre"], _log_al6_leer_gre] call ace_interact_menu_fnc_addActionToObject;


	};













