_stokiste = _this select 0;
_stocenter = getPosATL stomper_spawn_blu;
_stospawn = _stocenter findEmptyPosition [0,20,"B_UGV_01_F"];
stocount_blu = stocount_blu + 1;

stoUAV_blu = "B_UGV_01_F" createVehicle _stospawn;
createVehicleCrew stoUAV_blu;


switch (_stokiste) do
{
	case 0:
	{
		_string1 = "STO_Medizin_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_medizin_blu;

	};

	case 1:
	{
		_string1 = "STO_Munition_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_munition_blu;

	};

	case 2:
	{
		_string1 = "STO_ATmunition_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_atmunition_blu;

	};

	case 3:
	{
		_string1 = "STO_Granaten_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_granaten_blu;

	};

	case 4:
	{
		_string1 = "STO_Sprengstoff_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_sprengstoff_blu;

	};

	case 5:
	{
		_string1 = "STO_Support_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_sto_support_blu;

	};

	case 6:
	{
		_string1 = "STO_Esel_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[stoUAV_blu] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "STO_Banana_";
		_string2 = str stocount_blu;
		_string3 = _string1 + _string2;
		(group stoUAV_blu)  setGroupIdGlobal [_string3];
		[stoUAV_blu] call TFW_fnc_al6_fruchtkorb_blu;
	};
};