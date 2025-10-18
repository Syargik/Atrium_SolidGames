if (!isServer) exitWith {};

{
	if (side _x == west) then
	{
        (uniformContainer _x) additemcargoGlobal ["ACE_fieldDressing", 4];
		(uniformContainer _x) additemcargoGlobal ["ACE_elasticBandage", 4];
		(uniformContainer _x) additemcargoGlobal ["ACE_packingBandage", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_quikclot", 2];
    	(uniformContainer _x) additemcargoGlobal ["ACE_tourniquet", 2];
    	(uniformContainer _x) additemcargoGlobal ["ACE_morphine", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_epinephrine", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_splint", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_EarPlugs", 1];
		(uniformContainer _x) additemcargoGlobal ["ACE_painkillers", 1];
	}
	else
	{
        (uniformContainer _x) additemcargoGlobal ["ACE_fieldDressing", 4];
		(uniformContainer _x) additemcargoGlobal ["ACE_elasticBandage", 4];
		(uniformContainer _x) additemcargoGlobal ["ACE_packingBandage", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_quikclot", 2];
    	(uniformContainer _x) additemcargoGlobal ["ACE_tourniquet", 2];
    	(uniformContainer _x) additemcargoGlobal ["ACE_morphine", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_epinephrine", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_splint", 2];
		(uniformContainer _x) additemcargoGlobal ["ACE_EarPlugs", 1];
		(uniformContainer _x) additemcargoGlobal ["ACE_painkillers", 1];
	};

        if (_x getVariable "ace_medical_medicClass" > 0) then {
                clearItemCargoGlobal (backpackContainer _x);
                clearMagazineCargoGlobal (backpackContainer _x);
                clearWeaponCargoGlobal (backpackContainer _x);
                (backpackContainer _x) additemcargoGlobal ["ACE_fieldDressing", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_elasticBandage", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_packingBandage", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_quikclot", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_epinephrine", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_morphine", 10];
                (backpackContainer _x) additemcargoGlobal ["ACE_salineIV_500", 3];
				(backpackContainer _x) additemcargoGlobal ["ACE_salineIV", 2];
                (backpackContainer _x) additemcargoGlobal ["ACE_tourniquet", 10];
				(backpackContainer _x) additemcargoGlobal ["ACE_personalAidKit", 7];
                (backpackContainer _x) additemcargoGlobal ["ACE_surgicalKit", 1];
				(backpackContainer _x) additemcargoGlobal ["ACE_suture", 5];
        };

} forEach playableUnits;