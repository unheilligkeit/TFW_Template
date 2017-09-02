





_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout" call BIS_fnc_getParamValue;



//=================================================== Vanilla Nato ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_nato_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_nato_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_nato_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_nato_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_nato_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_nato_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_nato_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_nato_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_nato_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_nato_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_nato_helipilot; };

                    case "B_Helicrew_F": { [_unit] call TFW_fnc_nato_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_nato_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_nato_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_nato_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_nato_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_nato_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_nato_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_nato_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_nato_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_nato_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_nato_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_nato_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_nato_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_nato_jtac; };



                    default { [_unit] call TFW_fnc_loadoutentfernen ; };
            };

    };

//=================================================== US Army OCP ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_us_ocp_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_us_ocp_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_us_ocp_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_us_ocp_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_us_ocp_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_us_ocp_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_us_ocp_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_us_ocp_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_us_ocp_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_us_ocp_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_us_ocp_helipilot; };

                    case "B_Helicrew_F": { [_unit] call TFW_fnc_us_ocp_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_us_ocp_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_us_ocp_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_us_ocp_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_us_ocp_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_us_ocp_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_us_ocp_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_us_ocp_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_us_ocp_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_us_ocp_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_us_ocp_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_us_ocp_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_us_ocp_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_us_ocp_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };


//=================================================== US Army UCP ================================================================//

    if(_loadoutfraktion == 2) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_us_ucp_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_us_ucp_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_us_ucp_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_us_ucp_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_us_ucp_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_us_ucp_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_us_ucp_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_us_ucp_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_us_ucp_marksman; };

                    case "B_crew_F": { [_unit] call TFW_fnc_us_ucp_crewman; };

                    case "B_Helipilot_F": { [_unit] call TFW_fnc_us_ucp_helipilot; };

                    case "B_Helicrew_F": { [_unit] call TFW_fnc_us_ucp_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call TFW_fnc_us_ucp_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call TFW_fnc_us_ucp_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call TFW_fnc_us_ucp_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call TFW_fnc_us_ucp_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call TFW_fnc_us_ucp_atassist; };

                    case "B_soldier_AA_F": { [_unit] call TFW_fnc_us_ucp_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call TFW_fnc_us_ucp_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call TFW_fnc_us_ucp_uav; };

                    case "B_soldier_exp_F": { [_unit] call TFW_fnc_us_ucp_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_us_ucp_jetpilot; };

                    case "B_sniper_F": { [_unit] call TFW_fnc_us_ucp_sniper; };

                    case "B_spotter_F": { [_unit] call TFW_fnc_us_ucp_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call TFW_fnc_us_ucp_jtac; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };


//=================================================== BW Fleck ================================================================//

    if(_loadoutfraktion == 3) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_bw_fleck_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_bw_fleck_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_bw_fleck_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_bw_fleck_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_bw_fleck_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_bw_fleck_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_bw_fleck_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_bw_fleck_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_bw_fleck_marksman; };
					
					case "B_HeavyGunner_F": { [_unit] call TFW_fnc_bw_fleck_mmg; };

					case "B_soldier_AAR_F": { [_unit] call TFW_fnc_bw_fleck_mmgassist; };

					case "B_soldier_AT_F": { [_unit] call TFW_fnc_bw_fleck_atsolider; };

					case "B_soldier_AAT_F": { [_unit] call TFW_fnc_bw_fleck_atassist; };

					case "B_soldier_AA_F": { [_unit] call TFW_fnc_bw_fleck_aasolider; };

					case "B_soldier_AAA_F": { [_unit] call TFW_fnc_bw_fleck_aaassist; };

					case "B_soldier_UAV_F": { [_unit] call TFW_fnc_bw_fleck_uav; };

					case "B_soldier_exp_F": { [_unit] call TFW_fnc_bw_fleck_eod; };

					case "B_recon_JTAC_F": { [_unit] call TFW_fnc_bw_fleck_jtac; };
					
					case "B_crew_F": { [_unit] call TFW_fnc_bw_fleck_crewman; };
					
					case "B_Helipilot_F": { [_unit] call TFW_fnc_bw_fleck_helipilot; };
					
					case "B_Helicrew_F": { [_unit] call TFW_fnc_bw_fleck_helicrew; };
					
					case "B_soldier_repair_F": { [_unit] call TFW_fnc_bw_fleck_logistiker; };
					
					case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_bw_fleck_jetpilot; };
					
					case "B_sniper_F": { [_unit] call TFW_fnc_bw_fleck_sniper; };
					
					case "B_spotter_F": { [_unit] call TFW_fnc_bw_fleck_spotter; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };


//=================================================== BW Tropen ================================================================//

    if(_loadoutfraktion == 4) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_bw_tropen_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call TFW_fnc_bw_tropen_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call TFW_fnc_bw_tropen_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call TFW_fnc_bw_tropen_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call TFW_fnc_bw_tropen_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call TFW_fnc_bw_tropen_squadleader; };

                    case "B_medic_F": { [_unit] call TFW_fnc_bw_tropen_medic; };

                    case "B_officer_F": { [_unit] call TFW_fnc_bw_tropen_offizier; };

                    case "B_soldier_M_F": { [_unit] call TFW_fnc_bw_tropen_marksman; };

					case "B_HeavyGunner_F": { [_unit] call TFW_fnc_bw_tropen_mmg; };

					case "B_soldier_AAR_F": { [_unit] call TFW_fnc_bw_tropen_mmgassist; };

					case "B_soldier_AT_F": { [_unit] call TFW_fnc_bw_tropen_atsolider; };

					case "B_soldier_AAT_F": { [_unit] call TFW_fnc_bw_tropen_atassist; };

					case "B_soldier_AA_F": { [_unit] call TFW_fnc_bw_tropen_aasolider; };

					case "B_soldier_AAA_F": { [_unit] call TFW_fnc_bw_tropen_aaassist; };

					case "B_soldier_UAV_F": { [_unit] call TFW_fnc_bw_tropen_uav; };

					case "B_soldier_exp_F": { [_unit] call TFW_fnc_bw_tropen_eod; };

					case "B_recon_JTAC_F": { [_unit] call TFW_fnc_bw_tropen_jtac; };
					
					case "B_crew_F": { [_unit] call TFW_fnc_bw_tropen_crewman; };
					
					case "B_Helipilot_F": { [_unit] call TFW_fnc_bw_tropen_helipilot; };
					
					case "B_Helicrew_F": { [_unit] call TFW_fnc_bw_tropen_helicrew; };
					
					case "B_soldier_repair_F": { [_unit] call TFW_fnc_bw_tropen_logistiker; };
					
					case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_bw_tropen_jetpilot; };
					
					case "B_sniper_F": { [_unit] call TFW_fnc_bw_tropen_sniper; };
					
					case "B_spotter_F": { [_unit] call TFW_fnc_bw_tropen_spotter; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };


//=================================================== US Marine WD ================================================================//

    if(_loadoutfraktion == 5) then
    {

            switch (_playerclass) do
            {


                    case "B_Soldier_F": { [_unit] call TFW_fnc_marine_wd_riflemann; };

					case "B_Soldier_GL_F": { [_unit] call TFW_fnc_marine_wd_grenadier; };

					case "B_soldier_LAT_F": { [_unit] call TFW_fnc_marine_wd_riflemannpanzer; };

					case "B_soldier_AR_F": { [_unit] call TFW_fnc_marine_wd_lmg; };

					case "B_Soldier_TL_F": { [_unit] call TFW_fnc_marine_wd_teamleader; };

					case "B_Soldier_SL_F": { [_unit] call TFW_fnc_marine_wd_squadleader; };

					case "B_medic_F": { [_unit] call TFW_fnc_marine_wd_medic; };

					case "B_officer_F": { [_unit] call TFW_fnc_marine_wd_offizier; };

					case "B_soldier_M_F": { [_unit] call TFW_fnc_marine_wd_marksman; };

					case "B_crew_F": { [_unit] call TFW_fnc_marine_wd_crewman; };

					case "B_Helipilot_F": { [_unit] call TFW_fnc_marine_wd_helipilot; };

					case "B_Helicrew_F": { [_unit] call TFW_fnc_marine_wd_helicrew; };

					case "B_HeavyGunner_F": { [_unit] call TFW_fnc_marine_wd_mmg; };

					case "B_soldier_AAR_F": { [_unit] call TFW_fnc_marine_wd_mmgassist; };

					case "B_soldier_UAV_F": { [_unit] call TFW_fnc_marine_wd_uav; };

					case "B_Fighter_Pilot_F": { [_unit] call TFW_fnc_marine_wd_jetpilot; };

					case "B_recon_JTAC_F": { [_unit] call TFW_fnc_marine_wd_jtac; };

					case "B_soldier_repair_F": { [_unit] call TFW_fnc_marine_wd_logister; };

					case "B_soldier_AT_F": { [_unit] call TFW_fnc_marine_wd_atsolider; };

					case "B_soldier_AAT_F": { [_unit] call TFW_fnc_marine_wd_atassist; };

					case "B_soldier_AA_F": { [_unit] call TFW_fnc_marine_wd_aasolider; };

					case "B_soldier_AAA_F": { [_unit] call TFW_fnc_marine_wd_aaassist; };

					case "B_soldier_exp_F": { [_unit] call TFW_fnc_marine_wd_eod; };

					case "B_sniper_F": { [_unit] call TFW_fnc_marine_wd_sniper; };

					case "B_spotter_F": { [_unit] call TFW_fnc_marine_wd_spotter; };


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };