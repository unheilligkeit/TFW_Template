_stokiste = _this select 0;
_stocenter = getPosATL stomper_spawn_opf;
_stospawn = _stocenter findEmptyPosition [0,20,"O_UGV_01_F"];
stocount_opf = stocount_opf + 1;

stoUAV_opf = "O_UGV_01_F" createVehicle _stospawn;
createVehicleCrew stoUAV_opf;


switch (_stokiste) do
{
	case 0:
	{
		_string1 = "STO_Medizin_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_medizin_opf;

	};

	case 1:
	{
		_string1 = "STO_Munition_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_munition_opf;

	};

	case 2:
	{
		_string1 = "STO_ATmunition_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_atmunition_opf;

	};

	case 3:
	{
		_string1 = "STO_Granaten_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_granaten_opf;

	};

	case 4:
	{
		_string1 = "STO_Sprengstoff_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_sprengstoff_opf;

	};

	case 5:
	{
		_string1 = "STO_Support_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_sto_support_opf;

	};

	case 6:
	{
		_string1 = "STO_Esel_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[stoUAV_opf] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "STO_Banana_";
		_string2 = str stocount_opf;
		_string3 = _string1 + _string2;
		(group stoUAV_opf)  setGroupIdGlobal [_string3];
		[stoUAV_opf] call TFW_fnc_al6_fruchtkorb_opf;
	};
};