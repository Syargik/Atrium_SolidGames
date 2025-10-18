enableSaving [false, false];
0 = execVM "add_med.sqf"; // инициализация скрипта выдачи медицины
setTerrainGrid 3.125; // отрисовка сетки террейна

// Init modules
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

if (!isDedicated) then
{
    [] spawn {
    waitUntil {sleep 10; a3a_var_started};
         [
            [
             ["ххх, ", "<t align = 'right' shadow = '1' size = '0.7' >%1</t>"],
             ["ххх", "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"],
             ["ххх", "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"],
             ["","<br/>"],
             ["Solid Games", "<t align = 'right' shadow = '1' size = '1.0'font='PuristaBold'>%1</t>", 15]
            ]
        ] spawn BIS_fnc_typeText;
    };
}; // Титры в начале миссии (опционально)