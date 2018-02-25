if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitWith {
	//TFAR:
	//für zusätzliche variablen/functions: https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API:-Variables
	compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";

	//tfar serious mode
	[] spawn {

		tf_radio_channel_name = "Coop Server ╔═══ TFAR ═══╗";
		tf_radio_channel_password = "123";
			if (isServer) then {
				{ publicVariable _x } forEach ["tf_radio_channel_name","tf_radio_channel_password"];
			};

	};

	tf_no_auto_long_range_radio = true;
	tf_give_personal_radio_to_regular_soldier = false;
	tf_give_microdagr_to_soldier = false;
	tf_same_sw_frequencies_for_side = true;
	tf_same_lr_frequencies_for_side = true;
	tf_terrain_interception_coefficient = 3.0;
	tf_speakerDistance = 20;

	//radios
	TF_defaultWestPersonalRadio = "tf_anprc152";
	TF_defaultEastPersonalRadio = "tf_fadak";
	TF_defaultGuerPersonalRadio = "tf_anprc148jem";

	TF_defaultWestRiflemanRadio = "tf_rf7800str";
	TF_defaultEastRiflemanRadio = "tf_pnr1000a";
	TF_defaultGuerRiflemanRadio = "tf_anprc154";




};