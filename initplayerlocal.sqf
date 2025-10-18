player createDiaryRecord ["diary", ["Форма сторон", loadFile "A3A_BRIEFING\briefing_UNIFORMS.html"]]; // Добавление вкладки "Форма сторон"

if (!isDedicated) then {	
	waitUntil {!(isNull player)};
	player addEventHandler ["inventoryOpened","_nul=execVM 'script.sqf'"];
};