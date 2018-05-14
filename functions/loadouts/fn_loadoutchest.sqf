_loadoutchest = _this select 0;
_loadoutsettings = _this select 1;
_loadoutfraktion = "param_loadout" call BIS_fnc_getParamValue;


if (_loadoutsettings) then
{

	// Nato Vanilla

	_nato_main = ["nato_main", "Nato Vanilla", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _nato_main] call ace_interact_menu_fnc_addActionToObject;

	_nato_mannschaft = ["nato_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_nato_fuehrung = ["nato_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_nato_spezial = ["nato_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_spezial] call ace_interact_menu_fnc_addActionToObject;

	_nato_Luftwaffe = ["nato_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_nato_rifleman = ["nato_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_nato_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_nato_grenadier = ["nato_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_nato_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_nato_riflemannpanzer = ["nato_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_nato_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_nato_lmg= ["nato_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_nato_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_lmg] call ace_interact_menu_fnc_addActionToObject;

	_nato_teamleader= ["nato_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_nato_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_nato_squadleader= ["nato_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_nato_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_nato_medic= ["nato_medic", "Medic", "", { [_this select 1] call TFW_fnc_nato_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_medic] call ace_interact_menu_fnc_addActionToObject;

	_nato_offizier= ["nato_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_nato_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_offizier] call ace_interact_menu_fnc_addActionToObject;

	_nato_marksman= ["nato_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_nato_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_marksman] call ace_interact_menu_fnc_addActionToObject;

	_nato_crewman= ["nato_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_nato_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_crewman] call ace_interact_menu_fnc_addActionToObject;

	_nato_helipilot= ["nato_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_nato_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_nato_helicrew= ["nato_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_nato_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_nato_logistiker= ["nato_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_nato_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_nato_mmg= ["nato_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_nato_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_mmg] call ace_interact_menu_fnc_addActionToObject;

	_nato_mmgassist= ["nato_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_nato_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_atsoldier= ["nato_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_nato_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_nato_atassist= ["nato_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_nato_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_atassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_aasoldier= ["nato_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_nato_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_nato_aaassist= ["nato_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_nato_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_uav= ["nato_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_nato_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_uav] call ace_interact_menu_fnc_addActionToObject;

	_nato_eod= ["nato_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_nato_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_eod] call ace_interact_menu_fnc_addActionToObject;

	_nato_jetpilot= ["nato_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_nato_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_nato_sniper= ["nato_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_nato_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_sniper] call ace_interact_menu_fnc_addActionToObject;

	_nato_spotter= ["nato_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_nato_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_spotter] call ace_interact_menu_fnc_addActionToObject;

	_nato_jtac= ["nato_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_nato_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_jtac] call ace_interact_menu_fnc_addActionToObject;


	// US Army OCP

	_us_ocp_main = ["us_ocp_main", "US Army OCP", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _us_ocp_main] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mannschaft = ["us_ocp_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_fuehrung = ["us_ocp_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_spezial = ["us_ocp_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_spezial] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_Luftwaffe = ["us_ocp_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_us_ocp_rifleman = ["us_ocp_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_grenadier = ["us_ocp_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_us_ocp_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_riflemannpanzer = ["us_ocp_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_us_ocp_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_lmg= ["us_ocp_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_lmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_teamleader= ["us_ocp_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_us_ocp_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_squadleader= ["us_ocp_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_us_ocp_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_medic= ["us_ocp_medic", "Medic", "", { [_this select 1] call TFW_fnc_us_ocp_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_medic] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_offizier= ["us_ocp_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_us_ocp_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_offizier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_marksman= ["us_ocp_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_us_ocp_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_marksman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_crewman= ["us_ocp_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_us_ocp_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_crewman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_helipilot= ["us_ocp_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_us_ocp_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_helicrew= ["us_ocp_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_us_ocp_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_logistiker= ["us_ocp_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_us_ocp_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mmg= ["us_ocp_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_mmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mmgassist= ["us_ocp_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_us_ocp_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_atsoldier= ["us_ocp_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_atassist= ["us_ocp_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_us_ocp_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_atassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_aasoldier= ["us_ocp_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_aaassist= ["us_ocp_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_us_ocp_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_uav= ["us_ocp_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_uav] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_eod= ["us_ocp_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_eod] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_jetpilot= ["us_ocp_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_us_ocp_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_sniper= ["us_ocp_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_us_ocp_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_sniper] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_spotter= ["us_ocp_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_us_ocp_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_spotter] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_jtac= ["us_ocp_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_us_ocp_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_jtac] call ace_interact_menu_fnc_addActionToObject;


	// US Army UCP

	_us_ucp_main = ["us_ucp_main", "US Army UCP", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _us_ucp_main] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mannschaft = ["us_ucp_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_fuehrung = ["us_ucp_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_spezial = ["us_ucp_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_spezial] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_Luftwaffe = ["us_ucp_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_us_ucp_rifleman = ["us_ucp_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_grenadier = ["us_ucp_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_us_ucp_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_riflemannpanzer = ["us_ucp_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_us_ucp_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_lmg= ["us_ucp_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_lmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_teamleader= ["us_ucp_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_us_ucp_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_squadleader= ["us_ucp_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_us_ucp_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_medic= ["us_ucp_medic", "Medic", "", { [_this select 1] call TFW_fnc_us_ucp_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_medic] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_offizier= ["us_ucp_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_us_ucp_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_offizier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_marksman= ["us_ucp_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_us_ucp_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_marksman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_crewman= ["us_ucp_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_us_ucp_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_crewman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_helipilot= ["us_ucp_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_us_ucp_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_helicrew= ["us_ucp_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_us_ucp_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_logistiker= ["us_ucp_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_us_ucp_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mmg= ["us_ucp_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_mmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mmgassist= ["us_ucp_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_us_ucp_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_atsoldier= ["us_ucp_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_atassist= ["us_ucp_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_us_ucp_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_atassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_aasoldier= ["us_ucp_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_aaassist= ["us_ucp_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_us_ucp_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_uav= ["us_ucp_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_uav] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_eod= ["us_ucp_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_eod] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_jetpilot= ["us_ucp_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_us_ucp_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_sniper= ["us_ucp_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_us_ucp_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_sniper] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_spotter= ["us_ucp_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_us_ucp_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_spotter] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_jtac= ["us_ucp_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_us_ucp_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_jtac] call ace_interact_menu_fnc_addActionToObject;






// BW Fleck

	_bw_fleck_main = ["bw_fleck_main", "BW Fleck", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _bw_fleck_main] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mannschaft = ["bw_fleck_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_fuehrung = ["bw_fleck_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_spezial = ["bw_fleck_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_spezial] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_Luftwaffe = ["bw_fleck_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_bw_fleck_rifleman = ["bw_fleck_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_grenadier = ["bw_fleck_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_bw_fleck_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_riflemannpanzer = ["bw_fleck_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_bw_fleck_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_lmg= ["bw_fleck_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_lmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_teamleader= ["bw_fleck_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_bw_fleck_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_squadleader= ["bw_fleck_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_bw_fleck_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_medic= ["bw_fleck_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_bw_fleck_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_medic] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_offizier= ["bw_fleck_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_bw_fleck_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_offizier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_marksman= ["bw_fleck_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_bw_fleck_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_marksman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_crewman= ["bw_fleck_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_bw_fleck_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_crewman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_helipilot= ["bw_fleck_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_bw_fleck_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_helicrew= ["bw_fleck_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_bw_fleck_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_logistiker= ["bw_fleck_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_bw_fleck_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mmg= ["bw_fleck_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_mmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mmgassist= ["bw_fleck_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_atsoldier= ["bw_fleck_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_atassist= ["bw_fleck_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_atassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_aasoldier= ["bw_fleck_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_aaassist= ["bw_fleck_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_uav= ["bw_fleck_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_uav] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_eod= ["bw_fleck_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_eod] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_jetpilot= ["bw_fleck_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_bw_fleck_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_sniper= ["bw_fleck_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_bw_fleck_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_sniper] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_spotter= ["bw_fleck_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_bw_fleck_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_spotter] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_jtac= ["bw_fleck_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_bw_fleck_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_jtac] call ace_interact_menu_fnc_addActionToObject;

// BW Tropen

	_bw_tropen_main = ["bw_tropen_main", "BW Tropen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _bw_tropen_main] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mannschaft = ["bw_tropen_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_fuehrung = ["bw_tropen_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_spezial = ["bw_tropen_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_spezial] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_Luftwaffe = ["bw_tropen_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_bw_tropen_rifleman = ["bw_tropen_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_grenadier = ["bw_tropen_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_bw_tropen_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_riflemannpanzer = ["bw_tropen_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_bw_tropen_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_lmg= ["bw_tropen_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_lmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_teamleader= ["bw_tropen_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_bw_tropen_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_squadleader= ["bw_tropen_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_bw_tropen_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_medic= ["bw_tropen_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_bw_tropen_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_medic] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_offizier= ["bw_tropen_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_bw_tropen_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_offizier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_marksman= ["bw_tropen_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_bw_tropen_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_marksman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_crewman= ["bw_tropen_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_bw_tropen_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_crewman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_helipilot= ["bw_tropen_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_bw_tropen_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_helicrew= ["bw_tropen_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_bw_tropen_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_logistiker= ["bw_tropen_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_bw_tropen_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mmg= ["bw_tropen_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_mmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mmgassist= ["bw_tropen_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_atsoldier= ["bw_tropen_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_atassist= ["bw_tropen_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_atassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_aasoldier= ["bw_tropen_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_aaassist= ["bw_tropen_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_uav= ["bw_tropen_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_uav] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_eod= ["bw_tropen_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_eod] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_jetpilot= ["bw_tropen_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_bw_tropen_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_sniper= ["bw_tropen_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_bw_tropen_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_sniper] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_spotter= ["bw_tropen_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_bw_tropen_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_spotter] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_jtac= ["bw_tropen_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_bw_tropen_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_jtac] call ace_interact_menu_fnc_addActionToObject;


	// US Marine WD

	_marine_wd_main = ["marine_wd_main", "US Marine WD", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _marine_wd_main] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mannschaft = ["marine_wd_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_fuehrung = ["marine_wd_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_spezial = ["marine_wd_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_spezial] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_Luftwaffe = ["marine_wd_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_marine_wd_rifleman = ["marine_wd_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_grenadier = ["marine_wd_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_marine_wd_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_riflemannpanzer = ["marine_wd_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_marine_wd_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_lmg= ["marine_wd_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_lmg] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_teamleader= ["marine_wd_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_marine_wd_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_squadleader= ["marine_wd_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_marine_wd_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_medic= ["marine_wd_medic", "Medic", "", { [_this select 1] call TFW_fnc_marine_wd_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_medic] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_offizier= ["marine_wd_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_marine_wd_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_offizier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_marksman= ["marine_wd_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_marine_wd_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_marksman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_crewman= ["marine_wd_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_marine_wd_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_crewman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_helipilot= ["marine_wd_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_marine_wd_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_helicrew= ["marine_wd_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_marine_wd_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_logistiker= ["marine_wd_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_marine_wd_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mmg= ["marine_wd_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_mmg] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mmgassist= ["marine_wd_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_marine_wd_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_atsoldier= ["marine_wd_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_atassist= ["marine_wd_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_marine_wd_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_atassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_aasoldier= ["marine_wd_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_aaassist= ["marine_wd_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_marine_wd_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_uav= ["marine_wd_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_uav] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_eod= ["marine_wd_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_eod] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_jetpilot= ["marine_wd_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_marine_wd_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_sniper= ["marine_wd_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_marine_wd_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_sniper] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_spotter= ["marine_wd_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_marine_wd_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_spotter] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_jtac= ["marine_wd_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_marine_wd_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_jtac] call ace_interact_menu_fnc_addActionToObject;


	// Schweizer Armee

	_swiss_main = ["swiss_main", "Schweizer Armee", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _swiss_main] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mannschaft = ["swiss_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_swiss_fuehrung = ["swiss_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_swiss_spezial = ["swiss_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_spezial] call ace_interact_menu_fnc_addActionToObject;

	_swiss_Luftwaffe = ["swiss_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_swiss_rifleman = ["swiss_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_swiss_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_grenadier = ["swiss_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_swiss_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_riflemannpanzer = ["swiss_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_swiss_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_swiss_lmg= ["swiss_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_swiss_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_lmg] call ace_interact_menu_fnc_addActionToObject;

	_swiss_teamleader= ["swiss_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_swiss_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_swiss_squadleader= ["swiss_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_swiss_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_swiss_medic= ["swiss_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_swiss_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_medic] call ace_interact_menu_fnc_addActionToObject;

	_swiss_offizier= ["swiss_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_swiss_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_offizier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_marksman= ["swiss_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_swiss_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_marksman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_crewman= ["swiss_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_swiss_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_crewman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_helipilot= ["swiss_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_swiss_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_swiss_helicrew= ["swiss_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_swiss_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_swiss_logistiker= ["swiss_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_swiss_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mmg= ["swiss_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_swiss_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_mmg] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mmgassist= ["swiss_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_swiss_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_atsoldier= ["swiss_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_swiss_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_atassist= ["swiss_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_swiss_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_atassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_aasoldier= ["swiss_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_swiss_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_aaassist= ["swiss_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_swiss_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_uav= ["swiss_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_swiss_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_uav] call ace_interact_menu_fnc_addActionToObject;

	_swiss_eod= ["swiss_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_swiss_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_eod] call ace_interact_menu_fnc_addActionToObject;

	_swiss_jetpilot= ["swiss_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_swiss_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_swiss_sniper= ["swiss_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_swiss_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_sniper] call ace_interact_menu_fnc_addActionToObject;

	_swiss_spotter= ["swiss_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_swiss_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_spotter] call ace_interact_menu_fnc_addActionToObject;

	_swiss_jtac= ["swiss_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_swiss_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_jtac] call ace_interact_menu_fnc_addActionToObject;


	// CSAT Viper Hex

	_csat_viper_hex_main = ["csat_viper_hex_main", "CSAT Viper Hex", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _csat_viper_hex_main] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_rifleman = ["csat_viper_hex_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_csat_viper_hex_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_riflemannpanzer = ["csat_viper_hex_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_csat_viper_hex_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_teamleader= ["csat_viper_hex_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_csat_viper_hex_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_squadleader= ["csat_viper_hex_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_csat_viper_hex_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_medic= ["csat_viper_hex_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_csat_viper_hex_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_medic] call ace_interact_menu_fnc_addActionToObject;


	// CSAT Viper Grün Hex

	_csat_viper_ghex_main = ["csat_viper_ghex_main", "CSAT Viper Grün Hex", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _csat_viper_ghex_main] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_rifleman = ["csat_viper_ghex_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_riflemannpanzer = ["csat_viper_ghex_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_teamleader= ["csat_viper_ghex_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_squadleader= ["csat_viper_ghex_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_medic= ["csat_viper_ghex_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_medic] call ace_interact_menu_fnc_addActionToObject;





} else {

	// Vanilla Nato

	if (_loadoutfraktion == 0) then
	{

		_nato_main = ["nato_main", "Nato Vanilla", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _nato_main] call ace_interact_menu_fnc_addActionToObject;

	_nato_mannschaft = ["nato_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_nato_fuehrung = ["nato_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_nato_spezial = ["nato_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_spezial] call ace_interact_menu_fnc_addActionToObject;

	_nato_Luftwaffe = ["nato_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","nato_main"], _nato_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_nato_rifleman = ["nato_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_nato_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_nato_grenadier = ["nato_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_nato_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_nato_riflemannpanzer = ["nato_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_nato_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_nato_lmg= ["nato_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_nato_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_lmg] call ace_interact_menu_fnc_addActionToObject;

	_nato_teamleader= ["nato_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_nato_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_nato_squadleader= ["nato_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_nato_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_nato_medic= ["nato_medic", "Medic", "", { [_this select 1] call TFW_fnc_nato_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_medic] call ace_interact_menu_fnc_addActionToObject;

	_nato_offizier= ["nato_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_nato_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_fuehrung"], _nato_offizier] call ace_interact_menu_fnc_addActionToObject;

	_nato_marksman= ["nato_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_nato_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_marksman] call ace_interact_menu_fnc_addActionToObject;

	_nato_crewman= ["nato_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_nato_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_mannschaft"], _nato_crewman] call ace_interact_menu_fnc_addActionToObject;

	_nato_helipilot= ["nato_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_nato_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_nato_helicrew= ["nato_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_nato_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_nato_logistiker= ["nato_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_nato_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_nato_mmg= ["nato_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_nato_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_mmg] call ace_interact_menu_fnc_addActionToObject;

	_nato_mmgassist= ["nato_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_nato_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_atsoldier= ["nato_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_nato_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_nato_atassist= ["nato_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_nato_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_atassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_aasoldier= ["nato_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_nato_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_nato_aaassist= ["nato_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_nato_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_nato_uav= ["nato_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_nato_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_uav] call ace_interact_menu_fnc_addActionToObject;

	_nato_eod= ["nato_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_nato_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_eod] call ace_interact_menu_fnc_addActionToObject;

	_nato_jetpilot= ["nato_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_nato_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_Luftwaffe"], _nato_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_nato_sniper= ["nato_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_nato_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_sniper] call ace_interact_menu_fnc_addActionToObject;

	_nato_spotter= ["nato_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_nato_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_spotter] call ace_interact_menu_fnc_addActionToObject;

	_nato_jtac= ["nato_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_nato_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "nato_main","nato_spezial"], _nato_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 1) then
	{

	// US Army OCP

	_us_ocp_main = ["us_ocp_main", "US Army OCP", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _us_ocp_main] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mannschaft = ["us_ocp_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_fuehrung = ["us_ocp_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_spezial = ["us_ocp_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_spezial] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_Luftwaffe = ["us_ocp_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ocp_main"], _us_ocp_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_us_ocp_rifleman = ["us_ocp_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_grenadier = ["us_ocp_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_us_ocp_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_riflemannpanzer = ["us_ocp_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_us_ocp_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_lmg= ["us_ocp_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_lmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_teamleader= ["us_ocp_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_us_ocp_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_squadleader= ["us_ocp_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_us_ocp_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_medic= ["us_ocp_medic", "Medic", "", { [_this select 1] call TFW_fnc_us_ocp_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_medic] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_offizier= ["us_ocp_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_us_ocp_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_fuehrung"], _us_ocp_offizier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_marksman= ["us_ocp_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_us_ocp_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_marksman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_crewman= ["us_ocp_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_us_ocp_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_mannschaft"], _us_ocp_crewman] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_helipilot= ["us_ocp_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_us_ocp_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_helicrew= ["us_ocp_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_us_ocp_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_logistiker= ["us_ocp_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_us_ocp_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mmg= ["us_ocp_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_us_ocp_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_mmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_mmgassist= ["us_ocp_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_us_ocp_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_atsoldier= ["us_ocp_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_atassist= ["us_ocp_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_us_ocp_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_atassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_aasoldier= ["us_ocp_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_aaassist= ["us_ocp_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_us_ocp_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_uav= ["us_ocp_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_uav] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_eod= ["us_ocp_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_us_ocp_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_eod] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_jetpilot= ["us_ocp_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_us_ocp_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_Luftwaffe"], _us_ocp_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_sniper= ["us_ocp_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_us_ocp_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_sniper] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_spotter= ["us_ocp_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_us_ocp_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_spotter] call ace_interact_menu_fnc_addActionToObject;

	_us_ocp_jtac= ["us_ocp_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_us_ocp_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ocp_main","us_ocp_spezial"], _us_ocp_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 2) then
	{

	// US Army UCP

		_us_ucp_main = ["us_ucp_main", "US Army UCP", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _us_ucp_main] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mannschaft = ["us_ucp_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_fuehrung = ["us_ucp_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_spezial = ["us_ucp_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_spezial] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_Luftwaffe = ["us_ucp_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","us_ucp_main"], _us_ucp_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_us_ucp_rifleman = ["us_ucp_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_grenadier = ["us_ucp_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_us_ucp_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_riflemannpanzer = ["us_ucp_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_us_ucp_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_lmg= ["us_ucp_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_lmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_teamleader= ["us_ucp_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_us_ucp_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_squadleader= ["us_ucp_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_us_ucp_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_medic= ["us_ucp_medic", "Medic", "", { [_this select 1] call TFW_fnc_us_ucp_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_medic] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_offizier= ["us_ucp_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_us_ucp_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_fuehrung"], _us_ucp_offizier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_marksman= ["us_ucp_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_us_ucp_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_marksman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_crewman= ["us_ucp_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_us_ucp_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_mannschaft"], _us_ucp_crewman] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_helipilot= ["us_ucp_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_us_ucp_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_helicrew= ["us_ucp_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_us_ucp_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_logistiker= ["us_ucp_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_us_ucp_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mmg= ["us_ucp_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_us_ucp_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_mmg] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_mmgassist= ["us_ucp_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_us_ucp_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_atsoldier= ["us_ucp_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_atassist= ["us_ucp_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_us_ucp_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_atassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_aasoldier= ["us_ucp_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_aaassist= ["us_ucp_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_us_ucp_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_uav= ["us_ucp_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_uav] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_eod= ["us_ucp_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_us_ucp_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_eod] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_jetpilot= ["us_ucp_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_us_ucp_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_Luftwaffe"], _us_ucp_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_sniper= ["us_ucp_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_us_ucp_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_sniper] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_spotter= ["us_ucp_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_us_ucp_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_spotter] call ace_interact_menu_fnc_addActionToObject;

	_us_ucp_jtac= ["us_ucp_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_us_ucp_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "us_ucp_main","us_ucp_spezial"], _us_ucp_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 3) then
	{

	// BW Fleck

	_bw_fleck_main = ["bw_fleck_main", "BW Fleck", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _bw_fleck_main] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mannschaft = ["bw_fleck_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_fuehrung = ["bw_fleck_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_spezial = ["bw_fleck_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_spezial] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_Luftwaffe = ["bw_fleck_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_fleck_main"], _bw_fleck_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_bw_fleck_rifleman = ["bw_fleck_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_grenadier = ["bw_fleck_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_bw_fleck_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_riflemannpanzer = ["bw_fleck_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_bw_fleck_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_lmg= ["bw_fleck_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_lmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_teamleader= ["bw_fleck_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_bw_fleck_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_squadleader= ["bw_fleck_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_bw_fleck_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_medic= ["bw_fleck_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_bw_fleck_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_medic] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_offizier= ["bw_fleck_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_bw_fleck_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_fuehrung"], _bw_fleck_offizier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_marksman= ["bw_fleck_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_bw_fleck_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_marksman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_crewman= ["bw_fleck_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_bw_fleck_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_mannschaft"], _bw_fleck_crewman] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_helipilot= ["bw_fleck_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_bw_fleck_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_helicrew= ["bw_fleck_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_bw_fleck_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_logistiker= ["bw_fleck_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_bw_fleck_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mmg= ["bw_fleck_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_bw_fleck_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_mmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_mmgassist= ["bw_fleck_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_atsoldier= ["bw_fleck_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_atassist= ["bw_fleck_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_atassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_aasoldier= ["bw_fleck_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_aaassist= ["bw_fleck_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_bw_fleck_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_uav= ["bw_fleck_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_uav] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_eod= ["bw_fleck_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_bw_fleck_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_eod] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_jetpilot= ["bw_fleck_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_bw_fleck_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_Luftwaffe"], _bw_fleck_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_sniper= ["bw_fleck_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_bw_fleck_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_sniper] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_spotter= ["bw_fleck_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_bw_fleck_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_spotter] call ace_interact_menu_fnc_addActionToObject;

	_bw_fleck_jtac= ["bw_fleck_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_bw_fleck_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_fleck_main","bw_fleck_spezial"], _bw_fleck_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 4) then
	{

	// BW Tropen

	_bw_tropen_main = ["bw_tropen_main", "BW Tropen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _bw_tropen_main] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mannschaft = ["bw_tropen_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_fuehrung = ["bw_tropen_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_spezial = ["bw_tropen_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_spezial] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_Luftwaffe = ["bw_tropen_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","bw_tropen_main"], _bw_tropen_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_bw_tropen_rifleman = ["bw_tropen_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_grenadier = ["bw_tropen_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_bw_tropen_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_riflemannpanzer = ["bw_tropen_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_bw_tropen_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_lmg= ["bw_tropen_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_lmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_teamleader= ["bw_tropen_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_bw_tropen_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_squadleader= ["bw_tropen_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_bw_tropen_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_medic= ["bw_tropen_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_bw_tropen_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_medic] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_offizier= ["bw_tropen_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_bw_tropen_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_fuehrung"], _bw_tropen_offizier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_marksman= ["bw_tropen_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_bw_tropen_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_marksman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_crewman= ["bw_tropen_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_bw_tropen_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_mannschaft"], _bw_tropen_crewman] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_helipilot= ["bw_tropen_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_bw_tropen_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_helicrew= ["bw_tropen_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_bw_tropen_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_logistiker= ["bw_tropen_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_bw_tropen_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mmg= ["bw_tropen_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_bw_tropen_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_mmg] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_mmgassist= ["bw_tropen_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_atsoldier= ["bw_tropen_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_atassist= ["bw_tropen_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_atassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_aasoldier= ["bw_tropen_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_aaassist= ["bw_tropen_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_bw_tropen_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_uav= ["bw_tropen_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_uav] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_eod= ["bw_tropen_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_bw_tropen_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_eod] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_jetpilot= ["bw_tropen_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_bw_tropen_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_Luftwaffe"], _bw_tropen_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_sniper= ["bw_tropen_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_bw_tropen_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_sniper] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_spotter= ["bw_tropen_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_bw_tropen_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_spotter] call ace_interact_menu_fnc_addActionToObject;

	_bw_tropen_jtac= ["bw_tropen_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_bw_tropen_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "bw_tropen_main","bw_tropen_spezial"], _bw_tropen_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 5) then
	{

	// US Marine WD

	_marine_wd_main = ["marine_wd_main", "US Marine WD", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _marine_wd_main] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mannschaft = ["marine_wd_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_fuehrung = ["marine_wd_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_spezial = ["marine_wd_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_spezial] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_Luftwaffe = ["marine_wd_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","marine_wd_main"], _marine_wd_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_marine_wd_rifleman = ["marine_wd_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_grenadier = ["marine_wd_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_marine_wd_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_riflemannpanzer = ["marine_wd_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_marine_wd_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_lmg= ["marine_wd_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_lmg] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_teamleader= ["marine_wd_teamleader", "Teamleader", "", { [_this select 1] call TFW_fnc_marine_wd_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_squadleader= ["marine_wd_squadleader", "Squadleader", "", { [_this select 1] call TFW_fnc_marine_wd_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_medic= ["marine_wd_medic", "Medic", "", { [_this select 1] call TFW_fnc_marine_wd_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_medic] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_offizier= ["marine_wd_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_marine_wd_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_fuehrung"], _marine_wd_offizier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_marksman= ["marine_wd_marksman", "Marksman", "", { [_this select 1] call TFW_fnc_marine_wd_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_marksman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_crewman= ["marine_wd_crewman", "Crewman", "", { [_this select 1] call TFW_fnc_marine_wd_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_mannschaft"], _marine_wd_crewman] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_helipilot= ["marine_wd_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_marine_wd_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_helicrew= ["marine_wd_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_marine_wd_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_logistiker= ["marine_wd_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_marine_wd_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mmg= ["marine_wd_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_marine_wd_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_mmg] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_mmgassist= ["marine_wd_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_marine_wd_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_atsoldier= ["marine_wd_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_atassist= ["marine_wd_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_marine_wd_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_atassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_aasoldier= ["marine_wd_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_aaassist= ["marine_wd_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_marine_wd_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_uav= ["marine_wd_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_uav] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_eod= ["marine_wd_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_marine_wd_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_eod] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_jetpilot= ["marine_wd_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_marine_wd_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_Luftwaffe"], _marine_wd_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_sniper= ["marine_wd_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_marine_wd_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_sniper] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_spotter= ["marine_wd_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_marine_wd_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_spotter] call ace_interact_menu_fnc_addActionToObject;

	_marine_wd_jtac= ["marine_wd_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_marine_wd_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "marine_wd_main","marine_wd_spezial"], _marine_wd_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 7) then
	{

	// Schweizer Armee

	_swiss_main = ["swiss_main", "Schweizer Armee", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _swiss_main] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mannschaft = ["swiss_mannschaft", "Mannschaft", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_mannschaft] call ace_interact_menu_fnc_addActionToObject;

	_swiss_fuehrung = ["swiss_fuehrung", "Führung", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_fuehrung] call ace_interact_menu_fnc_addActionToObject;

	_swiss_spezial = ["swiss_spezial", "Spezial Rollen", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_spezial] call ace_interact_menu_fnc_addActionToObject;

	_swiss_Luftwaffe = ["swiss_Luftwaffe", "Luftwaffe", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions","swiss_main"], _swiss_Luftwaffe] call ace_interact_menu_fnc_addActionToObject;



	_swiss_rifleman = ["swiss_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_swiss_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_grenadier = ["swiss_grenadier", "Grenadier", "", { [_this select 1] call TFW_fnc_swiss_grenadier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_grenadier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_riflemannpanzer = ["swiss_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_swiss_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_swiss_lmg= ["swiss_lmg", "LMG Schütze", "", { [_this select 1] call TFW_fnc_swiss_lmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_lmg] call ace_interact_menu_fnc_addActionToObject;

	_swiss_teamleader= ["swiss_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_swiss_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_swiss_squadleader= ["swiss_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_swiss_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_swiss_medic= ["swiss_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_swiss_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_medic] call ace_interact_menu_fnc_addActionToObject;

	_swiss_offizier= ["swiss_offizier", "Offizier", "", { [_this select 1] call TFW_fnc_swiss_offizier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_fuehrung"], _swiss_offizier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_marksman= ["swiss_marksman", "Gruppenscharfschütze", "", { [_this select 1] call TFW_fnc_swiss_marksman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_marksman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_crewman= ["swiss_crewman", "Besatzungsmitglied", "", { [_this select 1] call TFW_fnc_swiss_crewman}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_mannschaft"], _swiss_crewman] call ace_interact_menu_fnc_addActionToObject;

	_swiss_helipilot= ["swiss_helipilot", "Helipilot", "", { [_this select 1] call TFW_fnc_swiss_helipilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_helipilot] call ace_interact_menu_fnc_addActionToObject;

	_swiss_helicrew= ["swiss_helicrew", "Helicrew", "", { [_this select 1] call TFW_fnc_swiss_helicrew}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_helicrew] call ace_interact_menu_fnc_addActionToObject;

	_swiss_logistiker= ["swiss_logistiker", "Logistiker", "", { [_this select 1] call TFW_fnc_swiss_logistiker}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_logistiker] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mmg= ["swiss_mmg", "MMG Schütze", "", { [_this select 1] call TFW_fnc_swiss_mmg}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_mmg] call ace_interact_menu_fnc_addActionToObject;

	_swiss_mmgassist= ["swiss_mmgassist", "MMG Assist", "", { [_this select 1] call TFW_fnc_swiss_mmgassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_mmgassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_atsoldier= ["swiss_atsoldier", "AT Spezialist", "", { [_this select 1] call TFW_fnc_swiss_atsoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_atsoldier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_atassist= ["swiss_atassist", "AT Assist", "", { [_this select 1] call TFW_fnc_swiss_atassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_atassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_aasoldier= ["swiss_aasoldier", "AA Spezialist", "", { [_this select 1] call TFW_fnc_swiss_aasoldier}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_aasoldier] call ace_interact_menu_fnc_addActionToObject;

	_swiss_aaassist= ["swiss_aaassist", "AA Assist", "", { [_this select 1] call TFW_fnc_swiss_aaassist}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_aaassist] call ace_interact_menu_fnc_addActionToObject;

	_swiss_uav= ["swiss_uav", "UAV Spezialist", "", { [_this select 1] call TFW_fnc_swiss_uav}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_uav] call ace_interact_menu_fnc_addActionToObject;

	_swiss_eod= ["swiss_eod", "EOD Spezialist", "", { [_this select 1] call TFW_fnc_swiss_eod}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_eod] call ace_interact_menu_fnc_addActionToObject;

	_swiss_jetpilot= ["swiss_jetpilot", "Jetpilot", "", { [_this select 1] call TFW_fnc_swiss_jetpilot}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_Luftwaffe"], _swiss_jetpilot] call ace_interact_menu_fnc_addActionToObject;

	_swiss_sniper= ["swiss_sniper", "Sniper", "", { [_this select 1] call TFW_fnc_swiss_sniper}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_sniper] call ace_interact_menu_fnc_addActionToObject;

	_swiss_spotter= ["swiss_spotter", "Spotter", "", { [_this select 1] call TFW_fnc_swiss_spotter}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_spotter] call ace_interact_menu_fnc_addActionToObject;

	_swiss_jtac= ["swiss_jtac", "JTAC", "", { [_this select 1] call TFW_fnc_swiss_jtac}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "swiss_main","swiss_spezial"], _swiss_jtac] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 8) then
	{

	// CSAT Viper Hex

	_csat_viper_hex_main = ["csat_viper_hex_main", "CSAT Viper Hex", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _csat_viper_hex_main] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_rifleman = ["csat_viper_hex_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_csat_viper_hex_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_riflemannpanzer = ["csat_viper_hex_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_csat_viper_hex_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_teamleader= ["csat_viper_hex_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_csat_viper_hex_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_squadleader= ["csat_viper_hex_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_csat_viper_hex_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_hex_medic= ["csat_viper_hex_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_csat_viper_hex_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_hex_main"], _csat_viper_hex_medic] call ace_interact_menu_fnc_addActionToObject;

	};

	if (_loadoutfraktion == 9) then
	{

	// CSAT Viper Grün Hex

	_csat_viper_ghex_main = ["csat_viper_ghex_main", "CSAT Viper Grün Hex", "", {}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions"], _csat_viper_ghex_main] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_rifleman = ["csat_viper_ghex_rifelman", "Schütze", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_riflemann}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_rifleman] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_riflemannpanzer = ["csat_viper_ghex_riflemannpanzer", "Schütze (AT)", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_riflemannpanzer}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_riflemannpanzer] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_teamleader= ["csat_viper_ghex_teamleader", "Truppführer", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_teamleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_teamleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_squadleader= ["csat_viper_ghex_squadleader", "Gruppenführer", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_squadleader}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_squadleader] call ace_interact_menu_fnc_addActionToObject;

	_csat_viper_ghex_medic= ["csat_viper_ghex_medic", "Sanitäter", "", { [_this select 1] call TFW_fnc_csat_viper_ghex_medic}, {true}] call ace_interact_menu_fnc_createAction;
	[_loadoutchest, 0, ["ACE_MainActions", "csat_viper_ghex_main"], _csat_viper_ghex_medic] call ace_interact_menu_fnc_addActionToObject;

	};








};