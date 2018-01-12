_controller_blu = _this select 0;

if (isServer) then
{
	al6count_blu = 0
};




if ((_controller_blu isKindOf "Man") or (_controller_blu isKindOf "LandVehicle")) then
	{


		_log_al6_main_blu = ["log_al6_main_blu", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions"], _log_al6_main_blu] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_blu = ["log_al6_medizin_blu", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_blu = ["log_al6_munition_blu", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_blu = ["log_al6_mgmunition_blu", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_mgmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_blu = ["log_al6_granaten_blu", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_blu = ["log_al6_sprengstoff_blu", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_blu = ["log_al6_support_blu", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_blu = ["log_al6_flugblatter_blu", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_flugblatter_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_blu = ["log_al6_leer_blu", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 1, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_leer_blu] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_al6_main_blu = ["log_al6_main_blu", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions"], _log_al6_main_blu] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_blu = ["log_al6_medizin_blu", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_medizin_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_blu = ["log_al6_munition_blu", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_munition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_blu = ["log_al6_mgmunition_blu", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_mgmunition_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_blu = ["log_al6_granaten_blu", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_granaten_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_blu = ["log_al6_sprengstoff_blu", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_sprengstoff_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_blu = ["log_al6_support_blu", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_support_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_blu = ["log_al6_flugblatter_blu", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_flugblatter_blu] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_blu = ["log_al6_leer_blu", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_blu }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_blu, 0, ["ACE_SelfActions", "log_al6_main_blu"], _log_al6_leer_blu] call ace_interact_menu_fnc_addActionToObject;


	};













