class TFW
{

	tag = "TFW";

	class server
	{
		file = "functions\server";
		class drohnspawn {};

	};

	class ai
	{
		file = "functions\ai";
		class groupattack {};
		class groupdefens {};
		class hunting {};
		class spawnjet {};
	};

	class client
	{
		file = "functions\client";
		class disco {};
		class aircommander {};
		class fpszeus {};
	};

	class loadouts
	{
		file = "functions\loadouts";
		class loadoutselect {};
		class loadoutentfernen {};
		class loadoutmedickit {};
		class loadoutgranaten {};
		class loadoutmedicpack {};

	};

	class nato_vanilla
	{
		file = "functions\loadouts\nato_vanilla";
		class nato_riflemann {};
		class nato_grenadier {};
		class nato_riflemannpanzer {};
		class nato_lmg {};
		class nato_teamleader {};
		class nato_squadleader {};
		class nato_medic {};
		class nato_offizier {};

	};

	class us_ocp
	{
		file = "functions\loadouts\us_ocp";
		class us_ocp_riflemann {};
		class us_ocp_grenadier {};
		class us_ocp_riflemannpanzer {};
		class us_ocp_lmg {};
		class us_ocp_teamleader {};
		class us_ocp_squadleader {};
		class us_ocp_medic {};
		class us_ocp_offizier {};

	};

	class us_ucp
	{
		file = "functions\loadouts\us_ucp";
		class us_ucp_riflemann {};
		class us_ucp_grenadier {};
		class us_ucp_riflemannpanzer {};
		class us_ucp_lmg {};
		class us_ucp_teamleader {};
		class us_ucp_squadleader {};
		class us_ucp_medic {};
		class us_ucp_offizier {};

	};


};

class ADV
{

	tag = "ADV"

	class adv
	{
		file = "functions\adv";
		class zeusObjects {};
	}
};
