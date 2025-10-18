waitUntil {!(isNull (findDisplay 602))};
while {!(isNull (findDisplay 602))} do {
	{
		ctrlEnable [_x, false];
	} forEach [
		/*6216, // goggles*/
		6331, // uniform
		6240, // headgear
		6381 // vest
	];
};