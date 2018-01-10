





_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout_opf" call BIS_fnc_getParamValue;



//=================================================== Vanilla Nato ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {


                    case "O_Soldier_F": { [_unit] call TFW_fnc_csat_riflemann; };

                    case "O_Soldier_GL_F": { [_unit] call TFW_fnc_csat_grenadier; };

                    case "O_soldier_LAT_F": { [_unit] call TFW_fnc_csat_riflemannpanzer; };

                    case "O_soldier_AR_F": { [_unit] call TFW_fnc_csat_lmg; };

                    case "O_Soldier_TL_F": { [_unit] call TFW_fnc_csat_teamleader; };

                    case "O_Soldier_SL_F": { [_unit] call TFW_fnc_csat_squadleader; };

                    case "O_medic_F": { [_unit] call TFW_fnc_csat_medic; };

                    case "O_officer_F": { [_unit] call TFW_fnc_csat_offizier; };

                    case "O_soldier_M_F": { [_unit] call TFW_fnc_csat_marksman; };

                    case "O_crew_F": { [_unit] call TFW_fnc_csat_crewman; };

                    case "O_Helipilot_F": { [_unit] call TFW_fnc_csat_helipilot; };

                    case "O_helicrew_F": { [_unit] call TFW_fnc_csat_helicrew; };

                    case "O_soldier_repair_F": { [_unit] call TFW_fnc_csat_logistiker; };

                    case "O_HeavyGunner_F": { [_unit] call TFW_fnc_csat_mmg; };

                    case "O_soldier_AAR_F": { [_unit] call TFW_fnc_csat_mmgassist; };

                    case "O_soldier_AT_F": { [_unit] call TFW_fnc_csat_atsoldier; };

                    case "O_soldier_AAT_F": { [_unit] call TFW_fnc_csat_atassist; };

                    case "O_soldier_AA_F": { [_unit] call TFW_fnc_csat_aasoldier; };

                    case "O_soldier_AAA_F": { [_unit] call TFW_fnc_csat_aaassist; };

                    case "O_soldier_UAV_F": { [_unit] call TFW_fnc_csat_uav; };

                    case "O_soldier_exp_F": { [_unit] call TFW_fnc_csat_eod; };

                    case "O_Fighter_Pilot_F": { [_unit] call TFW_fnc_csat_jetpilot; };

                    case "O_sniper_F": { [_unit] call TFW_fnc_csat_sniper; };

                    case "O_spotter_F": { [_unit] call TFW_fnc_csat_spotter; };

                    case "O_recon_JTAC_F": { [_unit] call TFW_fnc_csat_jtac; };



                    default { [_unit] call TFW_fnc_loadoutentfernen ; };
            };

    };

//=================================================== RHS Russland EMR ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {


                    case "O_Soldier_F": { [_unit] call TFW_fnc_rus_emr_riflemann; };

                    case "O_Soldier_GL_F": { [_unit] call TFW_fnc_rus_emr_grenadier; };

                    case "O_soldier_LAT_F": { [_unit] call TFW_fnc_rus_emr_riflemannpanzer; };

                    case "O_soldier_AR_F": { [_unit] call TFW_fnc_rus_emr_lmg; };

                    case "O_Soldier_TL_F": { [_unit] call TFW_fnc_rus_emr_teamleader; };

                    case "O_Soldier_SL_F": { [_unit] call TFW_fnc_rus_emr_squadleader; };

                    case "O_medic_F": { [_unit] call TFW_fnc_rus_emr_medic; };

                    case "O_officer_F": { [_unit] call TFW_fnc_rus_emr_offizier; };

                    case "O_soldier_M_F": { [_unit] call TFW_fnc_rus_emr_marksman; };

                    case "O_crew_F": { [_unit] call TFW_fnc_rus_emr_crewman; };

                    case "O_Helipilot_F": { [_unit] call TFW_fnc_rus_emr_helipilot; };

                    case "O_helicrew_F": { [_unit] call TFW_fnc_rus_emr_helicrew; };

                    case "O_soldier_repair_F": { [_unit] call TFW_fnc_rus_emr_logistiker; };

                    case "O_HeavyGunner_F": { [_unit] call TFW_fnc_rus_emr_mmg; };

                    case "O_soldier_AAR_F": { [_unit] call TFW_fnc_rus_emr_mmgassist; };

                    case "O_soldier_AT_F": { [_unit] call TFW_fnc_rus_emr_atsoldier; };

                    case "O_soldier_AAT_F": { [_unit] call TFW_fnc_rus_emr_atassist; };

                    case "O_soldier_AA_F": { [_unit] call TFW_fnc_rus_emr_aasoldier; };

                    case "O_soldier_AAA_F": { [_unit] call TFW_fnc_rus_emr_aaassist; };

                    case "O_soldier_UAV_F": { [_unit] call TFW_fnc_rus_emr_uav; };

                    case "O_soldier_exp_F": { [_unit] call TFW_fnc_rus_emr_eod; };

                    case "O_Fighter_Pilot_F": { [_unit] call TFW_fnc_rus_emr_jetpilot; };

                    case "O_sniper_F": { [_unit] call TFW_fnc_rus_emr_sniper; };

                    case "O_spotter_F": { [_unit] call TFW_fnc_rus_emr_spotter; };

                    case "O_recon_JTAC_F": { [_unit] call TFW_fnc_rus_emr_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };