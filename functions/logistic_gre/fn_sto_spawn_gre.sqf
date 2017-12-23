_stokiste = _this select 0;
_stocenter = getPosATL stomper_spawn;
_stospawn = _stocenter findEmptyPosition [0,20,"B_UGV_01_F"];
stocount = stocount + 1;

stoUAV = "B_UGV_01_F" createVehicle _stospawn;
createVehicleCrew stoUAV;


switch (_stokiste) do
{
	case 0:
	{
		_string1 = "STO_Medizin_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_medizin;

	};

	case 1:
	{
		_string1 = "STO_Munition_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_munition;

	};

	case 2:
	{
		_string1 = "STO_ATmunition_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_atmunition;

	};

	case 3:
	{
		_string1 = "STO_Granaten_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_granaten;

	};

	case 4:
	{
		_string1 = "STO_Sprengstoff_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_sprengstoff;

	};

	case 5:
	{
		_string1 = "STO_Support_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_sto_support;

	};

	case 6:
	{
		_string1 = "STO_Esel_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[stoUAV] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "STO_Banana_";
		_string2 = str stocount;
		_string3 = _string1 + _string2;
		(group stoUAV)  setGroupIdGlobal [_string3];
		[stoUAV] call TFW_fnc_al6_fruchtkorb;
	};
};