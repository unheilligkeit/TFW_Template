/*
buur_fn_aircommander
shows all airvehicle from all sides on map. Airvehicles from own fraction will have theire role as name from all
others only type of airplane is shown.
Also shown hight and speed of air venhicles.
Arguments:
_minHightASL : below these hight over sea planes will not shown
_minHightAGL : below these hight over land planes will not shown
_aircommanders : array with the role description of players whos allowed to see the planes
example:
[20,80,["Zeus 1","Zeus 2"]] call TFW_fnc_aircommander;
*/

params [["_minHightASL", 50], ["_minHightAGL", 100], ["_aircommanders",[]]];


  if (roleDescription player in _aircommanders) then
  {

		findDisplay 12 displayCtrl 51 ctrlAddEventHandler
		[
		  "Draw",
      format [
        "
		    {
		      if (_x iskindof 'Air') then
		      {
		        if ((getPosATL _x select 2) >= %1 && (getPosASL _x select 2 >= %2)) then
		        {
		          if (canmove _x) then
		           {
		             if (!isNull driver (_x)) then
		             {
		               if (side _x == side player) then
		               {
		                 _this select 0 drawIcon
		                 [
		                   getText (configFile/'CfgVehicles'/typeOf _x/'Icon'),
		                   [ side _x, false ] call BIS_fnc_sideColor,
		                   getpos _x,
		                   24,
		                   24,
		                   getDir _x,
		                   roleDescription (driver _x),
		                   1,
		                   0.04,
		                   'TahomaB',
		                   'right'
		                   ];
		               } else
		              {
		                _this select 0 drawIcon
		                [
		                  getText (configFile/'CfgVehicles'/typeOf _x/'Icon'),
		                  [ side _x, false ] call BIS_fnc_sideColor,
		                  getpos _x,
		                  24,
		                  24,
		                  getDir _x,
		                  gettext (configfile >> 'CfgVehicles' >> typeof _x >> 'displayName'),
		                  1,
		                  0.04,
		                  'TahomaB',
		                  'right'
		                  ];
		              };
		              _this select 0 drawIcon
		              [
		                '#(argb,8,8,3)color(0,0,0,0)',
		                [ side _x, false ] call BIS_fnc_sideColor,
		                getpos _x,
		                24,
		                24,
		                getDir _x,
		                'H:' + str (ceil (getPosASLvisual _x select 2)) + ' S:' + str (ceil (speed _x)),
		                1,
		                0.04,
		                'TahomaB',
		                'left'
		                ];
		              };
		          };
		        };
		      };
		    }forEach vehicles;
		  ",
      _minHightASL,
      _minHightAGL
      ]
		];
};