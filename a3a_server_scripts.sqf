CrititalLosesWest = 8; // потери для синих
CrititalLosesEast = 8; // потери для красных

missionNamespace setVariable ["a3a_endMissionTime", 6000, true]; // 6000 - время в секундах, время на миссию

[] spawn {
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do {
	sleep 10; // Проверка условий окончания миссии каждые 10 секунд
		
		if ((east countside playableUnits) < CrititalLosesEast) then {
			srv_triggerFinished = true;
			["Текст победы WEST", west] call a3a_fnc_endMission; // Победа WEST по потерям
		};
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
			srv_triggerFinished = true;
			["Текст победы EAST", east] call a3a_fnc_endMission; // Победа EAST по потерям
		};
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then { 
			srv_triggerFinished = true;
			["Текст победы EAST/WEST", east] call a3a_fnc_endMission; // Победа по окончанию время миссии, вместо east можно поставить west
		};
    };
};