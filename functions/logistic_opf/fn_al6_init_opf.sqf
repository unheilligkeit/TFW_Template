_controller_opf = _this select 0;

if (isServer) then
{
	al6count_opf = 0
};




if ((_controller_opf isKindOf "Man") or (_controller_opf isKindOf "LandVehicle")) then
	{


		_log_al6_main_opf = ["log_al6_main_opf", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions"], _log_al6_main_opf] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_opf = ["log_al6_medizin_opf", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_opf = ["log_al6_munition_opf", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_opf = ["log_al6_mgmunition_opf", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_mgmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_opf = ["log_al6_granaten_opf", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_opf = ["log_al6_sprengstoff_opf", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_opf = ["log_al6_support_opf", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_opf = ["log_al6_flugblatter_opf", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_flugblatter_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_opf = ["log_al6_leer_opf", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 1, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_leer_opf] call ace_interact_menu_fnc_addActionToObject;


	} else {



		_log_al6_main_opf = ["log_al6_main_opf", "AL 6 Logistik", "", {}, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions"], _log_al6_main_opf] call ace_interact_menu_fnc_addActionToObject;


		_log_al6_medizin_opf = ["log_al6_medizin_opf", "Medic", "", { [ 0 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_medizin_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_munition_opf = ["log_al6_munition_opf", "Munition", "", { [ 1 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_munition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_mgmunition_opf = ["log_al6_mgmunition_opf", "MG Munition", "", { [ 2 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_mgmunition_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_granaten_opf = ["log_al6_granaten_opf", "Granaten", "", { [ 3 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_granaten_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_sprengstoff_opf = ["log_al6_sprengstoff_opf", "Sprengstoff", "", { [ 4 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_sprengstoff_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_support_opf = ["log_al6_support_opf", "Support", "", { [ 5 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_support_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_flugblatter_opf = ["log_al6_flugblatter_opf", "Flugblätter", "", { [ 6 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_flugblatter_opf] call ace_interact_menu_fnc_addActionToObject;

		_log_al6_leer_opf = ["log_al6_leer_opf", "Leere Drohe", "", { [ 7 ] call TFW_fnc_al6_spawn_opf }, {true}] call ace_interact_menu_fnc_createAction;
		[_controller_opf, 0, ["ACE_SelfActions", "log_al6_main_opf"], _log_al6_leer_opf] call ace_interact_menu_fnc_addActionToObject;


	};













