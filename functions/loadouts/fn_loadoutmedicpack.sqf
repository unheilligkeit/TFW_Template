_unit = _this select 0;



for "_i" from 1 to 35 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 18 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
_unit addItemToBackpack "ACE_surgicalKit";
_unit addItemToBackpack "adv_aceCPR_AED";


_unit setVariable ["ACE_medical_medicClass", 2];