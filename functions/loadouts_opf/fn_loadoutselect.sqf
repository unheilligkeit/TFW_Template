





_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout_opf" call BIS_fnc_getParamValue;



//=================================================== Vanilla Nato ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_csat_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_csat_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_csat_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_csat_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_csat_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_csat_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_csat_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_csat_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_csat_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_csat_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_csat_helipilot; };

                    case "B_helicrew_F": { [_unit] call TFW_fnc_csat_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_csat_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_csat_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_csat_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_csat_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_csat_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_csat_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_csat_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_csat_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_csat_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_csat_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_csat_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_csat_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_csat_jtac; };



                    default { [_unit] call TFW_fnc_loadoutentfernen ; };
            };

    };

//=================================================== RHS Russland EMR ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_rus_emr_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_rus_emr_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_rus_emr_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_rus_emr_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_rus_emr_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_rus_emr_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_rus_emr_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_rus_emr_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_rus_emr_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_rus_emr_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_rus_emr_helipilot; };

                    case "B_helicrew_F": { [_unit] call TFW_fnc_rus_emr_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_rus_emr_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_rus_emr_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_rus_emr_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_rus_emr_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_rus_emr_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_rus_emr_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_rus_emr_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_rus_emr_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_rus_emr_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_rus_emr_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_rus_emr_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_rus_emr_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_rus_emr_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };