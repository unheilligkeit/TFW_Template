_stokiste = _this select 0;
_stocenter = getPosATL stomper_spawn_gre;
_stospawn = _stocenter findEmptyPosition [0,20,"I_UGV_01_F"];
stocount_gre = stocount_gre + 1;

stoUAV_gre = "I_UGV_01_F" createVehicle _stospawn;
createVehicleCrew stoUAV_gre;


switch (_stokiste) do
{
	case 0:
	{
		_string1 = "STO_Medizin_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_medizin_gre;

	};

	case 1:
	{
		_string1 = "STO_Munition_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_munition_gre;

	};

	case 2:
	{
		_string1 = "STO_ATmunition_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_atmunition_gre;

	};

	case 3:
	{
		_string1 = "STO_Granaten_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_granaten_gre;

	};

	case 4:
	{
		_string1 = "STO_Sprengstoff_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_sprengstoff_gre;

	};

	case 5:
	{
		_string1 = "STO_Support_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_sto_support_gre;

	};

	case 6:
	{
		_string1 = "STO_Esel_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		// Leere Drohne
		[stoUAV_gre] call TFW_fnc_clearcargo;

	};


	default
	{

		_string1 = "STO_Banana_";
		_string2 = str stocount_gre;
		_string3 = _string1 + _string2;
		(group stoUAV_gre)  setGroupIdGlobal [_string3];
		[stoUAV_gre] call TFW_fnc_al6_fruchtkorb_gre;
	};
};