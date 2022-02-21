// Dying Light 2 Autosplitter v1.1.0 (21/02/2022)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Main Script & Pointers by TheDementedSalad
// Quest ID found by Ero (Huge Thanks o7)

//Special thanks to SpiceeTV, 7rayD and AvuKamu for being my lab rats and testing

state("DyingLightGame_x64_rwdi") 
{ 

	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x322A; 
	float X: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD4;
	float Y: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD8;
	float Z: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CDC;
	byte blackScreen: "AnimDriver_x64_rwdi.dll", 0x152F38, 0xA88, 0x20, 0x28, 0xE80;
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x23A6DF0, 0x0, 0x1C8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x1FCBB88, 0x1200, 0x8, 0x0, 0x8;
	byte onlineState: "engine_x64_rwdi.dll", 0x21E3EF0, 0x438, 0x30, 0x20, 0x68, 0x40;
	byte menuState: "engine_x64_rwdi.dll", 0x21E3A80, 0x880;
	byte Shop: "engine_x64_rwdi.dll", 0x21E3A80, 0x88C;
	long QuestID: "engine_x64_rwdi.dll", 0x220C798, 0x7A0, 0x280, 0x40, 0x8, 0x8;
	
	
} 

init
{
	vars.completedSplits = new List<long>();
}

update
{
    if (timer.CurrentPhase == TimerPhase.NotRunning)
    {
        vars.completedSplits.Clear();
    }
	
	if (old.QuestID != current.QuestID) print(">>>>> level changed from " + old.QuestID + " to " + current.QuestID);
}

start 
{
	return current.blackScreen == 0 && old.blackScreen == 1 && current.X >= 590f && current.X <= 595f ||
		current.menuCutsStart == 28 && old.menuCutsStart == 32 && current.X >= 590f && current.X <= 595f;
}

isLoading 
{ 
  return current.Loading == 2 || current.menuCutsStart != 32 && current.menuCutsStart != 28 || current.menuState == 8 && current.Shop == 0 || current.blackscreenNew != 158;
}

split
{	
	vars.questStorage = new List<long>()
	{6418103557892807278,6586995861741614531,6586995703058443329,6586997102680853885,6631466094824427058,6941072862062894380,6764266303857422847,6524327801237491574,6719774483581828149,6719774613488049961,
	6719777300904351619,6725682675157433682,6786968470164355614,6984683066173098584,6984684398903732155,6786968762091325234,6780320947725019186,6779627417734707475,6949121008916742189,6834786033552599748,
	6834785611998958730,6834785784551759023,6725778646519233855,6986239164504225373,6838984222336485600,6986219797990958667,6838983985811921869,6985511174689733775,6737236222943582532,6796674366368284542};
	
	if(current.QuestID != old.QuestID && vars.questStorage.Contains(current.QuestID) && current.QuestID != 6418103557892807278){
			if(vars.questStorage.Contains(current.QuestID) && !vars.completedSplits.Contains(current.QuestID)){
			vars.completedSplits.Add(current.QuestID);
			return true;
		}
	}
	
	return current.QuestID == 6796674366368284542 && current.menuCutsStart == 32 && current.X >=2551f && current.X <=2552f && current.Y >= 7f && current.Y <= 8f && current.Z >= -687f && current.Z <= -685;
}

reset
{
	return current.blackScreen == 1 && old.blackScreen == 0 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
}
