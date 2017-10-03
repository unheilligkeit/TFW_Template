





_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout_gre" call BIS_fnc_getParamValue;



//=================================================== Vanilla AAF ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_aaf_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_aaf_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_aaf_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_aaf_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_aaf_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_aaf_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_aaf_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_aaf_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_aaf_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_aaf_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_aaf_helipilot; };

                    case "B_helicrew_F": { [_unit] call TFW_fnc_aaf_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_aaf_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_aaf_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_aaf_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_aaf_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_aaf_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_aaf_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_aaf_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_aaf_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_aaf_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_aaf_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_aaf_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_aaf_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_aaf_jtac; };



                    default { [_unit] call TFW_fnc_loadoutentfernen ; };
            };

    };

//=================================================== Syndikat ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_syndikat_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_syndikat_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_syndikat_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_syndikat_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_syndikat_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_syndikat_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_syndikat_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_syndikat_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_syndikat_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_syndikat_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_syndikat_helipilot; };

                    case "B_helicrew_F": { [_unit] call TFW_fnc_syndikat_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_syndikat_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_syndikat_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_syndikat_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_syndikat_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_syndikat_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_syndikat_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_syndikat_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_syndikat_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_syndikat_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_syndikat_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_syndikat_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_syndikat_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_syndikat_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };