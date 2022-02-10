// Dying Light 2 Load Time Remover v1.0.6 (10/02/2022)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Script & Pointers by TheDementedSalad

state("DyingLightGame_x64_rwdi") 
{ 
	float IGT: "gamedll_ph_x64_rwdi.dll", 0x2EFB4B8, 0x35C;
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x322A; 
	byte cutsIngame: "gamedll_ph_x64_rwdi.dll", 0x02E1AB38, 0xDE0, 0x0, 0x38;
	float X: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD4;
	byte blackScreen: "gamedll_ph_x64_rwdi.dll", 0x2F26680, 0x20, 0xE80;
	byte Loading: "engine_x64_rwdi.dll", 0x1FCBB88, 0x1200, 0x8, 0x0, 0x8;
	byte onlineState: "gamedll_ph_x64_rwdi.dll", 0x2F9EDD0, 0x10, 0x8, 0x10, 0x218;
	byte Paused: "engine_x64_rwdi.dll", 0x220C780, 0x2F0, 0x10;
} 

start {
	return current.blackScreen == 0 && old.blackScreen == 1 && current.X >= 590f && current.X <= 595f ||
		current.cutsIngame == 0 && old.cutsIngame == 1 && current.X >= 590f && current.X <= 595f;
}

isLoading 
{ 
	return current.Loading == 2 || current.menuCutsStart == 200 || (current.Paused == 144 || current.Paused == 200) && current.onlineState == 3 || current.blackScreen == 1;
}

reset
{
	return current.blackScreen == 1 && old.blackScreen == 0 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
}
