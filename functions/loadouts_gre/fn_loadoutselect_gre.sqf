





_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout_gre" call BIS_fnc_getParamValue;



//=================================================== Vanilla AAF ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {


                    case "I_Soldier_F": { [_unit] call TFW_fnc_aaf_riflemann; };

                    case "I_Soldier_GL_F": { [_unit] call TFW_fnc_aaf_grenadier; };

                    case "I_soldier_LAT_F": { [_unit] call TFW_fnc_aaf_riflemannpanzer; };

                    case "I_soldier_AR_F": { [_unit] call TFW_fnc_aaf_lmg; };

                    case "I_Soldier_TL_F": { [_unit] call TFW_fnc_aaf_teamleader; };

                    case "I_Soldier_SL_F": { [_unit] call TFW_fnc_aaf_squadleader; };

                    case "I_medic_F": { [_unit] call TFW_fnc_aaf_medic; };

                    case "I_officer_F": { [_unit] call TFW_fnc_aaf_offizier; };

                    case "I_soldier_M_F": { [_unit] call TFW_fnc_aaf_marksman; };

                    case "I_crew_F": { [_unit] call TFW_fnc_aaf_crewman; };

                    case "I_Helipilot_F": { [_unit] call TFW_fnc_aaf_helipilot; };

                    case "I_helicrew_F": { [_unit] call TFW_fnc_aaf_helicrew; };

                    case "I_soldier_repair_F": { [_unit] call TFW_fnc_aaf_logistiker; };

                    case "I_HeavyGunner_F": { [_unit] call TFW_fnc_aaf_mmg; };

                    case "I_soldier_AAR_F": { [_unit] call TFW_fnc_aaf_mmgassist; };

                    case "I_soldier_AT_F": { [_unit] call TFW_fnc_aaf_atsoldier; };

                    case "I_soldier_AAT_F": { [_unit] call TFW_fnc_aaf_atassist; };

                    case "I_soldier_AA_F": { [_unit] call TFW_fnc_aaf_aasoldier; };

                    case "I_soldier_AAA_F": { [_unit] call TFW_fnc_aaf_aaassist; };

                    case "I_soldier_UAV_F": { [_unit] call TFW_fnc_aaf_uav; };

                    case "I_soldier_exp_F": { [_unit] call TFW_fnc_aaf_eod; };

                    case "I_Fighter_Pilot_F": { [_unit] call TFW_fnc_aaf_jetpilot; };

                    case "I_sniper_F": { [_unit] call TFW_fnc_aaf_sniper; };

                    case "I_spotter_F": { [_unit] call TFW_fnc_aaf_spotter; };

                    case "I_Soldier_AAT_F": { [_unit] call TFW_fnc_aaf_jtac; };



                    default { [_unit] call TFW_fnc_loadoutentfernen ; };
            };

    };

//=================================================== Syndikat ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {


                    case "I_Soldier_F": { [_unit] call TFW_fnc_syndikat_riflemann; };

                    case "I_Soldier_GL_F": { [_unit] call TFW_fnc_syndikat_grenadier; };

                    case "I_soldier_LAT_F": { [_unit] call TFW_fnc_syndikat_riflemannpanzer; };

                    case "I_soldier_AR_F": { [_unit] call TFW_fnc_syndikat_lmg; };

                    case "I_Soldier_TL_F": { [_unit] call TFW_fnc_syndikat_teamleader; };

                    case "I_Soldier_SL_F": { [_unit] call TFW_fnc_syndikat_squadleader; };

                    case "I_medic_F": { [_unit] call TFW_fnc_syndikat_medic; };

                    case "I_officer_F": { [_unit] call TFW_fnc_syndikat_offizier; };

                    case "I_soldier_M_F": { [_unit] call TFW_fnc_syndikat_marksman; };

                    case "I_crew_F": { [_unit] call TFW_fnc_syndikat_crewman; };

                    case "I_Helipilot_F": { [_unit] call TFW_fnc_syndikat_helipilot; };

                    case "I_helicrew_F": { [_unit] call TFW_fnc_syndikat_helicrew; };

                    case "I_soldier_repair_F": { [_unit] call TFW_fnc_syndikat_logistiker; };

                    case "I_HeavyGunner_F": { [_unit] call TFW_fnc_syndikat_mmg; };

                    case "I_soldier_AAR_F": { [_unit] call TFW_fnc_syndikat_mmgassist; };

                    case "I_soldier_AT_F": { [_unit] call TFW_fnc_syndikat_atsoldier; };

                    case "I_soldier_AAT_F": { [_unit] call TFW_fnc_syndikat_atassist; };

                    case "I_soldier_AA_F": { [_unit] call TFW_fnc_syndikat_aasoldier; };

                    case "I_soldier_AAA_F": { [_unit] call TFW_fnc_syndikat_aaassist; };

                    case "I_soldier_UAV_F": { [_unit] call TFW_fnc_syndikat_uav; };

                    case "I_soldier_exp_F": { [_unit] call TFW_fnc_syndikat_eod; };

                    case "I_Fighter_Pilot_F": { [_unit] call TFW_fnc_syndikat_jetpilot; };

                    case "I_sniper_F": { [_unit] call TFW_fnc_syndikat_sniper; };

                    case "I_spotter_F": { [_unit] call TFW_fnc_syndikat_spotter; };

                    case "I_Soldier_AAT_F": { [_unit] call TFW_fnc_syndikat_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };