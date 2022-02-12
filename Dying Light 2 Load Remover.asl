// Dying Light 2 Load Time Remover v1.0.6 (11/02/2022)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Script & Pointers by TheDementedSalad

state("DyingLightGame_x64_rwdi") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x322A; 
	float X: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD4;
	byte blackScreen: "AnimDriver_x64_rwdi.dll", 0x152F38, 0xA88, 0x20, 0x28, 0xE80;
	byte Loading: "engine_x64_rwdi.dll", 0x1FCBB88, 0x1200, 0x8, 0x0, 0x8;
	byte onlineState: "engine_x64_rwdi.dll", 0x2BE1988, 0x38, 0x30, 0x20, 0x68, 0x40;
	byte Paused: "engine_x64_rwdi.dll", 0x21E3A80, 0x1E8, 0x6C0, 0x88, 0x58;
} 

start 
{
	return current.blackScreen == 0 && old.blackScreen == 1 && current.X >= 590f && current.X <= 595f ||
		current.menuCutsStart == 28 && old.menuCutsStart == 32 && current.X >= 590f && current.X <= 595f;
}

isLoading 
{ 
	return current.Loading == 2 || current.menuCutsStart == 200 || current.Paused != 0 && current.onlineState == 0 || current.blackScreen != 0;
}

reset
{
	return current.blackScreen == 1 && old.blackScreen == 0 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
}
