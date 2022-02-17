// Dying Light 2 Load Time Remover v1.1.0 (17/02/2022)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Script & Pointers by TheDementedSalad

state("DyingLightGame_x64_rwdi") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x322A; 
	float X: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD4;
	byte blackScreen: "AnimDriver_x64_rwdi.dll", 0x152F38, 0xA88, 0x20, 0x28, 0xE80;
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x23A6DF0, 0x0, 0x1C8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x1FCBB88, 0x1200, 0x8, 0x0, 0x8;
	byte onlineState: "engine_x64_rwdi.dll", 0x220D818, 0x30, 0x20, 0x68, 0x40;
	byte Paused: "engine_x64_rwdi.dll", 0x220C790, 0x2F0, 0x20;
	byte Paused2: "engine_x64_rwdi.dll", 0x23A6FF8, 0x78, 0x60;
	byte Paused3: "engine_x64_rwdi.dll", 0x220C790, 0x2F0, 0x1D;
	byte Options: "engine_x64_rwdi.dll", 0x21E3A80, 0x1E8, 0x6C0, 0x88, 0x78;
	byte Options2: "engine_x64_rwdi.dll", 0x21E3A80, 0x1E8, 0x6C0, 0x88, 0x58;
} 

start 
{
	return current.blackscreenNew == 0 && old.blackScreen == 1 && current.X >= 590f && current.X <= 595f ||
		current.menuCutsStart == 28 && old.menuCutsStart == 32 && current.X >= 590f && current.X <= 595f;
}

isLoading 
{ 
	return current.Loading == 2 || current.menuCutsStart == 200 || (current.Options == 1 && current.Paused2 == 1 || current.Options == 2 || 
	current.Options == 3 || current.Paused == 1 || current.Paused3 == 2 || current.Paused == 1 || current.Options2 == 3 && current.Options == 1) && current.onlineState == 0 || 
	current.blackscreenNew != 158;
}

reset
{
	return current.blackScreen == 1 && old.blackScreen == 0 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
}
