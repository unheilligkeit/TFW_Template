





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


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };


//=================================================== US Army OCP ================================================================//

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


                    default { [_unit] call TFW_fnc_loadoutentfernen ; };

            };

    };