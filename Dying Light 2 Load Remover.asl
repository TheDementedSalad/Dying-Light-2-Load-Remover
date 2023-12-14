// Dying Light 2 Autosplitter v1.10.1 (22/04/2023)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Main Script & Pointers by TheDementedSalad
// 1.10.2, 1.10.3 & 1.11.3 pointers by BabyRapZero
// Quest ID found by Ero (Huge Thanks o7)

//Special thanks to SpiceeTV, 7rayD and AvuKamu for being my lab rats and testing
//Thanks to Mysterion for helping me throughout the creation of the splitter

state("DyingLightGame_x64_rwdi", "1.0.5-1.0.6") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x322A;
	float X: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD4;
	float Y: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CD8;
	float Z: "engine_x64_rwdi.dll", 0x1FC3B28, 0x750, 0x18, 0x2CDC;
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x23A6DF0, 0x0, 0x1C8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x2163B28, 0x1200, 0x8, 0x0, 0x8;
	byte menuState: "engine_x64_rwdi.dll", 0x21E3A80, 0x880;
	byte Shop: "engine_x64_rwdi.dll", 0x21E3A80, 0x88C;
	long QuestID: "engine_x64_rwdi.dll", 0x220C798, 0x7A0, 0x280, 0x40, 0x8, 0x8;
	long DialogueID: "engine_x64_rwdi.dll", 0x21E3A80, 0xD00, 0x20, 0x8;
} 

state("DyingLightGame_x64_rwdi", "1.2.0-1.2.1") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x215BAC8, 0x750, 0x18, 0x3256; 
	float X: "engine_x64_rwdi.dll", 0x215BAC8, 0x750, 0x18, 0x2CFC;
	float Y: "engine_x64_rwdi.dll", 0x215BAC8, 0x750, 0x18, 0x2D00;
	float Z: "engine_x64_rwdi.dll", 0x215BAC8, 0x750, 0x18, 0x2D04;
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x254E7A0, 0x0, 0x1D8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x1FCBB88, 0x1200, 0x8, 0x0, 0x8;
	byte menuState: "engine_x64_rwdi.dll", 0x238B1E0, 0x890;
	byte Shop: "engine_x64_rwdi.dll", 0x238B1E0, 0x89C;
	long QuestID: "engine_x64_rwdi.dll", 0x23B4428, 0x7B0, 0x280, 0x40, 0x8, 0x8;
	long DialogueID: "engine_x64_rwdi.dll", 0x238B1E0, 0xD10, 0x20, 0x8;
} 

state("DyingLightGame_x64_rwdi", "1.3.0") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1DB11F8, 0x720, 0x30, 0x3262; 
	float X: "engine_x64_rwdi.dll", 0x1DB11F8, 0x720, 0x30, 0x2D08; 
	float Y: "engine_x64_rwdi.dll", 0x1DB11F8, 0x720, 0x30, 0x2D0C; 
	float Z: "engine_x64_rwdi.dll", 0x1DB11F8, 0x720, 0x30, 0x2D10; 
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x2191420, 0x0, 0x1D8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x1DB9258, 0x1200, 0x8, 0x0, 0x8;
	byte menuState: "engine_x64_rwdi.dll", 0x1FF9038, 0x908;
	byte Shop: "engine_x64_rwdi.dll", 0x1FF9038, 0x914;
	long QuestID: "engine_x64_rwdi.dll", 0x1FD4CF8, 0x828, 0x280, 0x40, 0x8, 0x8;
	long DialogueID: "engine_x64_rwdi.dll", 0x1FD4CF8, 0xD88, 0x20, 0x8;
} 

state("DyingLightGame_x64_rwdi", "1.4.0") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1DB0058, 0x720, 0x30, 0x328E; 
	float X: "engine_x64_rwdi.dll", 0x1DB0058, 0x720, 0x30, 0x2D30; 
	float Y: "engine_x64_rwdi.dll", 0x1DB0058, 0x720, 0x30, 0x2D34; 
	float Z: "engine_x64_rwdi.dll", 0x1DB0058, 0x720, 0x30, 0x2D38; 
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x218D2D0, 0x0, 0x1D8, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x1DB80B8, 0x1200, 0x8, 0x0, 0x8;
	byte menuState: "engine_x64_rwdi.dll", 0x1FD0B80, 0x918;
	byte Shop: "engine_x64_rwdi.dll", 0x1FD0B80, 0x924;
	long QuestID: "engine_x64_rwdi.dll", 0x1FD0B80, 0x838, 0x280, 0x40, 0x8, 0x8;
	long DialogueID: "engine_x64_rwdi.dll", 0x1FD0B80, 0xD98, 0x20, 0x8;
} 

state("DyingLightGame_x64_rwdi", "1.8.3") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1E037F8, 0x720, 0x10, 0x32C6;
	float X: "engine_x64_rwdi.dll", 0x1E037F8, 0x720, 0x10, 0x2D24;
	float Y: "engine_x64_rwdi.dll", 0x1E037F8, 0x720, 0x10, 0x2D28;
	float Z: "engine_x64_rwdi.dll", 0x1E037F8, 0x720, 0x10, 0x2D2C;
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x21E5E30, 0x0, 0x208, 0x4;
	byte Loading: "engine_x64_rwdi.dll", 0x203BC10, 0x1200, 0x8, 0x0, 0x8;
	byte menuState: "engine_x64_rwdi.dll", 0x2027CA0, 0x910;
	byte Shop: "engine_x64_rwdi.dll", 0x2027CA0, 0x91C;
	long QuestID: "engine_x64_rwdi.dll", 0x2027CA0, 0x838, 0x280, 0x40, 0x8, 0x8;
	long DialogueID: "engine_x64_rwdi.dll", 0x2027CA0, 0xF28, 0x20, 0x8;
} 

state("DyingLightGame_x64_rwdi", "1.9.3") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1E30858, 0x720, 0x10, 0x3306; 		
	float X: "engine_x64_rwdi.dll", 0x1E30858, 0x720, 0x10, 0x2DFC; 				
	float Y: "engine_x64_rwdi.dll", 0x1E30858, 0x720, 0x10, 0x2E00; 				
	float Z: "engine_x64_rwdi.dll", 0x1E30858, 0x720, 0x10, 0x2E04; 				
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x22197A0, 0x0, 0x208, 0x4;			
	byte Loading: "engine_x64_rwdi.dll", 0x2069678, 0x1200, 0x8, 0x0, 0x8;			
	byte menuState: "engine_x64_rwdi.dll", 0x2054938, 0x918;						
	byte Shop: "engine_x64_rwdi.dll", 0x2054938, 0x924;								
	long QuestID: "engine_x64_rwdi.dll", 0x2054938, 0x840, 0x280, 0x40, 0x8, 0x8;   
	long DialogueID: "engine_x64_rwdi.dll", 0x2054938, 0xF30, 0x20, 0x8;			
} 

state("DyingLightGame_x64_rwdi", "1.10.1") 
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1E3FA28, 0x720, 0x10, 0x3382; 		//200 menu, 28 in game, 32 cutscene
	float X: "engine_x64_rwdi.dll", 0x1E3FA28, 0x720, 0x10, 0x2DF8; 				//find ^ and then go to around 2D24 on final offset and look around as float
	float Y: "engine_x64_rwdi.dll", 0x1E3FA28, 0x720, 0x10, 0x2DFC; 				//""
	float Z: "engine_x64_rwdi.dll", 0x1E3FA28, 0x720, 0x10, 0x2E00; 				//""
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x22EDB50, 0x0, 0x208, 0x4;			//158 no blackscreen, 65 blackscreen
	byte Loading: "engine_x64_rwdi.dll", 0x2133158, 0x1F0, 0x8, 0x0, 0x8;			//2 in loading screen, 8 no loading
	byte menuState: "engine_x64_rwdi.dll", 0x211EA10, 0x928;						//6 in game, 8 in main menu/shop. Sometimes goes to 7 when loading shop
	byte Shop: "engine_x64_rwdi.dll", 0x211EA10, 0x934;								//find menuState then look nearby for 0 in game
	long QuestID: "engine_x64_rwdi.dll", 0x211EA10, 0x850, 0x280, 0x40, 0x8, 0x8;   //same base address as Shop & same offsets
	long DialogueID: "engine_x64_rwdi.dll", 0x211EA10, 0xF58, 0x20, 0x8;			//6935734554263853647 at the beginning when it says 2036, then search for 6935736001417070820 when character is on screen running
} 

state("DyingLightGame_x64_rwdi", "1.10.2")
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1E3EA28, 0x720, 0x10, 0x3382; 		
	float X: "engine_x64_rwdi.dll", 0x1E3EA28, 0x720, 0x10, 0x2DF8; 				
	float Y: "engine_x64_rwdi.dll", 0x1E3EA28, 0x720, 0x10, 0x2DFC; 				
	float Z: "engine_x64_rwdi.dll", 0x1E3EA28, 0x720, 0x10, 0x2E00; 				
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x22ECBC0, 0x0, 0x208, 0x4;			
	byte Loading: "engine_x64_rwdi.dll", 0x1E46A88, 0x1F0, 0x8, 0x0, 0x8;			
	byte menuState: "engine_x64_rwdi.dll", 0x211DA80, 0x928;						
	byte Shop: "engine_x64_rwdi.dll", 0x211DA80, 0x934;								
	long QuestID: "engine_x64_rwdi.dll", 0x211DA80, 0x850, 0x280, 0x40, 0x8, 0x8;   
	long DialogueID: "engine_x64_rwdi.dll", 0x211DA80, 0xF58, 0x20, 0x8;			
}

state("DyingLightGame_x64_rwdi", "1.10.3")
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x1E3DA28, 0x720, 0x10, 0x3382; 		
	float X: "engine_x64_rwdi.dll", 0x1E3DA28, 0x720, 0x10, 0x2DF8; 				
	float Y: "engine_x64_rwdi.dll", 0x1E3DA28, 0x720, 0x10, 0x2DFC; 				
	float Z: "engine_x64_rwdi.dll", 0x1E3DA28, 0x720, 0x10, 0x2E00; 				
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x22EBBC0, 0x0, 0x208, 0x4;			
	byte Loading: "engine_x64_rwdi.dll", 0x1E45A88, 0x1F0, 0x8, 0x0, 0x8;			
	byte menuState: "engine_x64_rwdi.dll", 0x211CA80, 0x928;						
	byte Shop: "engine_x64_rwdi.dll", 0x211CA80, 0x934;								
	long QuestID: "engine_x64_rwdi.dll", 0x211CA80, 0x850, 0x280, 0x40, 0x8, 0x8;   
	long DialogueID: "engine_x64_rwdi.dll", 0x211CA80, 0xF58, 0x20, 0x8;	
}

state("DyingLightGame_x64_rwdi", "1.11.3")
{ 
	byte menuCutsStart: "engine_x64_rwdi.dll", 0x219F228, 0x720, 0x10, 0x33AA; 		
	float X: "engine_x64_rwdi.dll", 0x219F228, 0x720, 0x10, 0x2E08; 				
	float Y: "engine_x64_rwdi.dll", 0x219F228, 0x720, 0x10, 0x2E0C; 				
	float Z: "engine_x64_rwdi.dll", 0x219F228, 0x720, 0x10, 0x2E10; 				
	byte blackscreenNew: "engine_x64_rwdi.dll", 0x230BF60, 0x0, 0x208, 0x34;			
	byte Loading: "engine_x64_rwdi.dll", 0x21A7288, 0x1F0, 0x8, 0x0, 0x8;			
	byte menuState: "engine_x64_rwdi.dll", 0x2156828, 0x938;						
	byte Shop: "engine_x64_rwdi.dll", 0x2156828, 0x944;								
	long QuestID: "engine_x64_rwdi.dll", 0x2156828, 0x860, 0x280, 0x40, 0x8, 0x8;   
	long DialogueID: "engine_x64_rwdi.dll", 0x2156828, 0xF68, 0x20, 0x8;		
}

startup
{
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
	vars.Helper.Settings.CreateFromXml("Components/DL2.Settings.xml");
}

init
{
	vars.completedSplits = new List<string>();

	string md5 = "";
    try {
        md5 = (string)vars.Helper.GetMD5Hash();
    } catch {
        // Failed to open file for MD5 computation.
    }

    switch (md5) {
        // Latest Steam updates that share same MemorySize
		case "000B2279C2055F0347D02B8D8981C2D1":
			version = "1.4.0";
			break;
        case "000B2279C2055F0347D02B8D8981C2D9":
            version = "1.10.2";
            break;
		case "FDF46508B6EC7CE6EA9986BC13E1F470":
			version = "1.10.3";
			break;
		case "F5BFDD269A537F2EDB4F4F59E5AF2599":
			version = "1.11.3";
			break;	
        default:
           
		// No version found with hash, fallback to memorySize
        switch ((int)vars.Helper.GetMemorySize()) {
            case 1998848:
				version = "1.0.5-1.0.6";
				break;
			case 2011136:
				version = "1.2.0-1.2.1";
				break;
			case 2019328:
				version = "1.3.0";
				break;
			case 2076672:
				version = "1.8.3";
				break;
			case 2256896:
				version = "1.9.3";
				break;
			case 2318336:
				version = "1.10.1";
				break;
        }
        break;
    }
}

update
{
	//print(modules.First().ModuleMemorySize.ToString());
	
    if (timer.CurrentPhase == TimerPhase.NotRunning)
    {
        vars.completedSplits.Clear();
    }
}

start 
{
	if(settings ["NG"]){
	return current.QuestID == 6418103557892807278 && old.QuestID != 6418103557892807278;
	}
	
	if(settings ["NG+"]){
	return current.menuState == 6 && old.Shop == 44 && current.X >= 2112f && current.X <= 2114f;
	}
}

isLoading 
{ 
	return current.Loading == 2 || current.menuCutsStart != 32 && current.menuCutsStart != 28 || current.menuState == 8 && current.Shop == 0 || current.blackscreenNew != 158 || current.menuState == 10;
}

split
{	
	if (current.DialogueID != old.DialogueID)
	{
		vars.DialogueString = current.DialogueID.ToString();
		if (settings[vars.DialogueString] && !vars.completedSplits.Contains(vars.DialogueString))
		{
			vars.completedSplits.Add(vars.DialogueString);
			return true;
		}
	}
	
	if(settings ["NG"]){
	if (current.QuestID != old.QuestID)
	{
		vars.QuestString = current.QuestID.ToString();
		if (settings[vars.QuestString] && !vars.completedSplits.Contains(vars.QuestString))
		{
			vars.completedSplits.Add(vars.QuestString);
			return true;
		}
	}
	}
	
	if(settings ["NG+"]){
	if (current.QuestID != old.QuestID && current.QuestID != 6586995861741614531 && current.QuestID != 6586995861741614531 && current.QuestID != 6586997102680853885)
	{
		vars.QuestString = current.QuestID.ToString();
		if (settings[vars.QuestString] && !vars.completedSplits.Contains(vars.QuestString))
		{
			vars.completedSplits.Add(vars.QuestString);
			return true;
		}
	}
	}
	
	if(current.QuestID == 6418103557892807278 && current.X >= 308f && current.X <= 311f && current.Y >= 19f && current.Y <= 25f && current.Z >= 1348f && current.Z <= 1373f){
		if (settings["MistyPark"] && !vars.completedSplits.Contains("MistyPark")){
				vars.completedSplits.Add("MistyPark");
				return true;
			}
	}
	
	if(current.X >= 1134f && current.X <= 1135f && current.Y >= 6f && current.Y <= 8f && current.Z >= -152f && current.Z <= -151f){
		if (settings["FishStart"] && !vars.completedSplits.Contains("FishStart")){
				vars.completedSplits.Add("FishStart");
				return true;
			}
	}
	
	if(current.X >= 1122f && current.X <= 1125f && current.Y >= -15f && current.Y <= -12f && current.Z >= -229f && current.Z <= -225f){
		if (settings["FishFin"] && !vars.completedSplits.Contains("FishFin")){
				vars.completedSplits.Add("FishFin");
				return true;
			}
	}
	
	if(current.X >= 1391f && current.X <= 1392f && current.Y >= 5f && current.Y <= 7f && current.Z >= -551f && current.Z <= -550f || current.X >= 1391f && current.X <= 1392f && current.Y >= 5f && current.Y <= 7f && current.Z >= -572f && current.Z <= -570f){
		if (settings["Elec2Start"] && !vars.completedSplits.Contains("Elec2Start")){
				vars.completedSplits.Add("Elec2Start");
				return true;
			}
	}
	
	if(current.X >= 1409f && current.X <= 1411f && current.Y >= 33f && current.Y <= 45f && current.Z >= -560f && current.Z <= -556f){
		if (settings["Elec2fin"] && !vars.completedSplits.Contains("Elec2fin")){
				vars.completedSplits.Add("Elec2fin");
				return true;
			}
	}
	
	if(current.X >= 1405f && current.X <= 1406 && current.Y >= 13f && current.Y <= 14f && current.Z >= -969f && current.Z <= -968){
		if (settings["SunkReach"] && !vars.completedSplits.Contains("SunkReach")){
				vars.completedSplits.Add("SunkReach");
				return true;
			}
	}
	
	if(current.X >= 1589f && current.X <= 1592 && current.Y >= 3f && current.Y <= 8f && current.Z >= -403f && current.Z <= -398){
		if (settings["MetroEnt"] && !vars.completedSplits.Contains("MetroEnt")){
				vars.completedSplits.Add("MetroEnt");
				return true;
			}
	}
	
	if(current.X >= 1643f && current.X <= 1645f && current.Y >= -9f && current.Y <= -8f && current.Z >= -420f && current.Z <= -418f){
		if (settings["MetroFin"] && !vars.completedSplits.Contains("MetroFin")){
				vars.completedSplits.Add("MetroFin");
				return true;
			}
	}
	
	
	if(current.DialogueID != old.DialogueID && old.DialogueID == 6826694838800894058){
		if (settings["BoardEnd"] && !vars.completedSplits.Contains("BoardEnd")){
				vars.completedSplits.Add("BoardEnd");
				return true;
			}
	}
	
	if(current.DialogueID != old.DialogueID && old.DialogueID == 6949078716470775332){
		if (settings["ShoeEnd"] && !vars.completedSplits.Contains("ShoeEnd")){
				vars.completedSplits.Add("ShoeEnd");
				return true;
			}
	}
	
	if(current.QuestID == 6984684398903732155 && current.X >= 1302f && current.X <= 1315f && current.Y >= 73f && current.Y <= 75f && current.Z >= 238f && current.Z <= 239f){
		if (settings["ArtAp"] && !vars.completedSplits.Contains("ArtAp")){
				vars.completedSplits.Add("ArtAp");
				return true;
			}
	}
	
	if(current.QuestID == 6725778646519233855 && current.X >= 2187f && current.X <= 2189f && current.Y >= 55f && current.Y <= 59f && current.Z >= 1362f && current.Z <= 1364f){
		if (settings["VerBuild"] && !vars.completedSplits.Contains("VerBuild")){
				vars.completedSplits.Add("VerBuild");
				return true;
			}
	}
			
	if(current.QuestID == 6796674366368284542 && current.X >= 2342f && current.X <= 2345f && current.Y >= 36f && current.Y <= 37f && current.Z >= -357f && current.Z <= -355f){
		if (settings["TunnelEnt"] && !vars.completedSplits.Contains("TunnelEnt")){
				vars.completedSplits.Add("TunnelEnt");
					return true;
			}
	}
	
	if(current.QuestID == 6796674366368284542 && current.X >= 2432f && current.X <= 2433f && current.Y >= 13f && current.Y <= 15f && current.Z >= -690f && current.Z <= -689f){
		if (settings["EscVol"] && !vars.completedSplits.Contains("EscVol")){
				vars.completedSplits.Add("EscVol");
				return true;
			}
	}
}

reset
{
	if(settings ["NG"]){
	return current.blackscreenNew == 158 && old.blackscreenNew == 65 && current.menuState != 10 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
	}
	
	if(settings ["NG+"]){
	return current.menuState == 8 && old.Shop == 44 && current.X >= 2112f && current.X <= 2114f;	
	}
}
