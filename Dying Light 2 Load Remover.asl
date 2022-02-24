// Dying Light 2 Autosplitter v1.1.0 (21/02/2022)
// Removes load times from loading screens, main menu and when the game is paused on single player
// Main Script & Pointers by TheDementedSalad
// Quest ID found by Ero (Huge Thanks o7)

//Special thanks to SpiceeTV, 7rayD and AvuKamu for being my lab rats and testing
//Thanks to Mysterion for helping me throughout the creation of the splitter

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
	long DialogueID: "engine_x64_rwdi.dll", 0x21E3A80, 0xD00, 0x20, 0x8;
	
	
} 

startup
{
	settings.Add("Pilgrim", true, "Pilgrim's Path");
	settings.Add("6935736438940396261", false, "Spike Catches You", "Pilgrim");
	settings.Add("6955779402475474343", false, "Did Spike Skip His Lines?", "Pilgrim");
	settings.Add("6961324886743747933", false, "Spike Opens the Gate", "Pilgrim");
	settings.Add("6950631123466199982", false, "See The Rats", "Pilgrim");
	settings.Add("6950633928245030047", false, "Open the Double Doors", "Pilgrim");
	settings.Add("6950635249820691247", false, "Look at the Picture", "Pilgrim");
	settings.Add("6935737825684148760", false, "Have a Drink With Spike", "Pilgrim");
	settings.Add("6959503313781553921", false, "Eugh, Biters", "Pilgrim");
	settings.Add("MistyPark", false, "Bottom of Misty Mountain Climb", "Pilgrim");
	settings.Add("6956496709085682889", false, "Reach The Motel", "Pilgrim");
	settings.Add("6991803159886828128", false, "Killed Banshee", "Pilgrim");
	settings.Add("6956515670732469708", false, "Call Informant After Waking Up", "Pilgrim");
	settings.Add("6935745780863265659", false, "Call Informant After Swimming", "Pilgrim");
	settings.Add("6935747558900041453", false, "Call Informant In Tunnel", "Pilgrim");
	settings.Add("6950872432433566814", false, "Bit By Volatile", "Pilgrim");
	settings.Add("6959515562990857547", false, "Finding Informant Beaten Up", "Pilgrim");
	settings.Add("6950982873346619016", false, "Checking On Informant", "Pilgrim");
	settings.Add("6935757995315861215", false, "Escape the Renegades", "Pilgrim");
	settings.Add("6959523380287154457", false, "Damn, that hurts", "Pilgrim");
	settings.Add("6586995861741614531", false, "PILGRIM'S PATH END", "Pilgrim");
	
	settings.Add("Strong", true, "Getting Stronger");
	settings.Add("6936133018867755656", false, "Hakon Knows the Moves", "Strong");
	settings.Add("6861114474711331788", false, "Grabbed Crystal", "Strong");
	settings.Add("6929440313876199830", false, "Meet the PK's", "Strong");
	settings.Add("6792922744968405179", false, "Reach GRE Crate", "Strong");
	settings.Add("6792922376917220763", false, "Denied at the Bazaar", "Strong");
	settings.Add("6850400084937621414", false, "Reach Cillians", "Strong");
	settings.Add("6586995703058443329", false, "GETTING STRONGER END", "Strong");
	
	settings.Add("Marker", true, "Markers of Plague");
	settings.Add("6886765242681724036", false, "Met With Hakon at Hospital", "Marker");
	settings.Add("6888752120353466355", false, "Lockpick The Door", "Marker");
	settings.Add("6864802055122228815", false, "Flashbacks", "Marker");
	settings.Add("6755464768408493935", false, "Reach Stealth Section", "Marker");
	settings.Add("6751285997867603032", false, "Could Hakon BE Any Slower?", "Marker");
	settings.Add("6751286002541830187", false, "Reach Elevator", "Marker");
	settings.Add("6789180837785206582", false, "See Volatile", "Marker");
	settings.Add("6863785742662639256", false, "Inject First Inhib", "Marker");
	settings.Add("6751285997256594844", false, "Recieve Biomarker", "Marker");
	settings.Add("6792922770922209812", false, "Escape Hospital", "Marker");
	settings.Add("6951739946446564163", false, "Binoculars Tutorial", "Marker");
	settings.Add("6586997102680853885", false, "MARKERS OF PLAGUE END", "Marker");
	
	settings.Add("WayOut", true, "The Only Way Out");
	settings.Add("6919466785342882821", false, "Reach The Bazaar", "WayOut");
	settings.Add("6965819209827745994", false, "Finish Spark of Invention", "WayOut");
	settings.Add("6888625767760758182", false, "Begin All In The Family", "WayOut");
	settings.Add("6888626900658414115", false, "Finish All In The Family", "WayOut");
	settings.Add("6929823893118467595", false, "Speak to Hakon before Tunnel", "WayOut");
	settings.Add("6952028081988680691", false, "Entered Tunnel", "WayOut");
	settings.Add("6969151351981770375", false, "Meet Spitter", "WayOut");
	settings.Add("6929825434093921368", false, "Meet Aitor", "WayOut");
	settings.Add("6929829041976656692", false, "Talk to Hakon Outside PK Base", "WayOut");
	settings.Add("6929831297360563601", false, "Speak to Benny", "WayOut");
	settings.Add("6952032361503677066", false, "Where is Hubert?", "WayOut");
	settings.Add("6929833697361394510", false, "Confront Hubert", "WayOut");
	settings.Add("6929840761954460629", false, "Obtain Lazarus", "WayOut");
	settings.Add("6929837541817257720", false, "Give Lazarus to Aitor", "WayOut");
	settings.Add("6929838880738728535", false, "Talk to Hakon", "WayOut");
	settings.Add("6849232219065612999", false, "Trying to get into Bazaar", "WayOut");
	settings.Add("6763910963472150144", false, "Meet Sophie", "WayOut");
	settings.Add("6929775083912986139", false, "Alberto's Massive...what?", "WayOut");
	settings.Add("6631466094824427058", false, "THE ONLY WAY OUT END", "WayOut");
	
	settings.Add("Unruly", true, "Unruly Brother");
	settings.Add("6818044262152623331", false, "Don't Help Donald", "Unruly");
	settings.Add("6846304903466059266", false, "Reach Barney", "Unruly");
	settings.Add("6846309392289132487", false, "Back to Barney After Combat", "Unruly");
	settings.Add("6929783172367756961", false, "Reach Birdie", "Unruly");
	settings.Add("6929786087399886132", false, "Confront Barney", "Unruly");
	settings.Add("6941072862062894380", false, "UNRULY BROTHER END", "Unruly");
	
	settings.Add("Arrive", true, "The Arrival");
	settings.Add("6941372377051524095", false, "See the Bandits", "Arrive");
	settings.Add("6885725039829264560", false, "Talk To Suzie", "Arrive");
	settings.Add("6846316259623390006", false, "Looted All Bodies", "Arrive");
	settings.Add("6764266303857422847", false, "THE ARRIVAL END", "Arrive");
	
	settings.Add("Raid", true, "The Raid");
	settings.Add("6929788633964978330", false, "Talk to Aitor", "Raid");
	settings.Add("6929792385176768080", false, "Talk to Sophie and Barney", "Raid");
	settings.Add("6867085135245014083", false, "Spy on Bandit Camp", "Raid");
	settings.Add("6891232327643746418", false, "Raid Start", "Raid");
	settings.Add("6846321662880425607", false, "Free Carl", "Raid");
	settings.Add("6929794707812379180", false, "Go to Aitor or Sophie", "Raid");
	settings.Add("6524327801237491574", false, "THE RAID END", "Raid");
	
	
	settings.Add("Water", true, "Water Tower");
	settings.Add("6989956221651356487", false, "Reach Base of Water Tower", "Water");
	settings.Add("6989961015349673951", false, "Remove Final Bomb", "Water");
	settings.Add("6751648762721161857", false, "Meet Joe and Jack", "Water");
	settings.Add("6929803722500973811", false, "Give Water Tower to PK's", "Water");
	settings.Add("6929815864164397451", false, "Arrest Barney", "Water");
	settings.Add("6719774613488049961", false, "WATER TOWER END", "Water");
	
	settings.Add("Dark", true, "Into The Dark");
	settings.Add("6943882498136884743", false, "Talk To Guard Outside Tunnel", "Dark");
	settings.Add("6943890248699503849", false, "Hakon Autoscroller", "Dark");
	settings.Add("6943891834879873699", false, "Go Turn On Ventilation", "Dark");
	settings.Add("6943892401648377480", false, "Didn't Work", "Dark");
	settings.Add("6943892800171465043", false, "Turned On Ventilation", "Dark");
	settings.Add("6943893212778987801", false, "Return to Hakon", "Dark");
	settings.Add("6943895428704522284", false, "Begin Holdout", "Dark");
	settings.Add("6943913888719855236", false, "Anderson Asks If You're There", "Dark");
	settings.Add("6943915947269204397", false, "Anderson Gives You Booster", "Dark");
	settings.Add("6943917517562921880", false, "Anderson Is Back", "Dark");
	settings.Add("6943918059936933879", false, "Anderson Gives You A Bomb", "Dark");
	settings.Add("6949085210351180222", false, "Captured By Barney", "Dark");
	settings.Add("6949085962292918003", false, "Killed Barney", "Dark");
	settings.Add("6719777300904351619", false, "INTO THE DARK END", "Dark");
	
	settings.Add("Waltz", true, "Let's Waltz");
	settings.Add("6940984541482425355", false, "Did Aitor Know About Waltz?", "Waltz");
	settings.Add("6842563699713012588", false, "Inside Tunnel", "Waltz");
	settings.Add("6969169391602115749", false, "Try To Turn On Generator", "Waltz");
	settings.Add("6758718579255451704", false, "Actually Turn On Generator", "Waltz");
	settings.Add("6992075547817140805", false, "Who Could Have Come Through Here?", "Waltz");
	settings.Add("6798494160180462495", false, "Find Waltz In Tunnel", "Waltz");
	settings.Add("6943546733447113732", false, "Wake Up Outside Tunnel", "Waltz");
	settings.Add("6792922887736249818", false, "Begin Waltz Escape", "Waltz");
	settings.Add("6852666377449833253", false, "Into Train Station", "Waltz");
	settings.Add("6842579087644024008", false, "Escaped Waltz", "Waltz");
	settings.Add("6872665544743326340", false, "Talk to Lawan", "Waltz");
	settings.Add("6725682675157433682", false, "LET'S WALTZ END", "Waltz");
	
	settings.Add("Home", true, "A Place to Call Home");
	settings.Add("6930909243162029452", false, "Follow Lawan to the Roof", "Home");
	settings.Add("6900881585858749967", false, "Start Paraglider 1 Tutorial", "Home");
	settings.Add("6930913722254414155", false, "Start Paraglider 2 Tutorial", "Home");
	settings.Add("6930914209333513828", false, "Start Paraglider 3 Tutorial", "Home");
	settings.Add("6937993453530942671", false, "Finish Paraglider Tutorial", "Home");
	settings.Add("6940231143339199498", false, "Can This Paraglider Be Faster?", "Home");
	settings.Add("6854112312749174543", false, "Begin Combat With Renegades", "Home");
	settings.Add("6854126562269066615", false, "Finish Combat With Renegades", "Home");
	settings.Add("6854802964507014265", false, "Enter Downtown Electrical Station", "Home");
	settings.Add("6937998923994718360", false, "Activated Elevator", "Home");
	settings.Add("6854132201099938387", false, "Give PK's Downtown Electrical Station", "Home");
	settings.Add("6967246031831914816", false, "Imagine, Power For The Entire City", "Home");
	settings.Add("6930915193008823056", false, "Enter Fish Eye", "Home");
	settings.Add("6930917094416497719", false, "At the Bar", "Home");
	settings.Add("6932089074461311043", false, "Meet Frank", "Home");
	settings.Add("6963614067404065739", false, "Go Diffuse Cannon", "Home");
	settings.Add("6963614509502051199", false, "More Enemies Lower Level", "Home");
	settings.Add("6964357684233391052", false, "Diffused 2nd Cannon", "Home");
	settings.Add("6963615411121163892", false, "Diffused 3rd Cannon", "Home");
	settings.Add("6786968470164355614", false, "A PLACE TO CALL HOME END", "Home");
	
	settings.Add("Elec2", true, "Garrison Electrical Tower");
	settings.Add("Elec2Start", false, "Enter Garrison Electric Station", "Elec2");
	settings.Add("Elec2fin", false, "Finish Garrison Electric Station", "Elec2");
	
	settings.Add("Sunken", true, "Sunken Treasure");
	settings.Add("SunkReach", false, "Reached Sunken Treasure", "Sunken");
	
	settings.Add("Metros", true, "Metro Stations");
	settings.Add("FishStart", false, "Enter Fish Eye Metro", "Metros");
	settings.Add("FishFin", false, "Finish Fish Eye Metro", "Metros");
	settings.Add("MetroEnt", false, "Enter Garrison Metro", "Metros");
	settings.Add("MetroFin", false, "Finish Garrison Metro", "Metros");
	
	
	settings.Add("Orders", true, "Orders");
	settings.Add("6934673331842599385", false, "Speak To Lawan", "Orders");
	settings.Add("6786989399222930648", false, "Speak To Grady", "Orders");
	settings.Add("6786994287055120365", false, "Speak To Mateo 1", "Orders");
	settings.Add("6934700140794436804", false, "Speak To Mateo 2", "Orders");
	settings.Add("6934709451601583510", false, "Find Rowe", "Orders");
	settings.Add("6984683066173098584", false, "ORDERS END", "Orders");
	
	settings.Add("Observatory", true, "Observatory");
	settings.Add("6934683012841928905", false, "Jack Matt Call", "Observatory");
	settings.Add("6984684398903732155", false, "OBSERVATORY END", "Observatory");
	
	
	settings.Add("Welcome", true, "Welcome On Board");
	settings.Add("6782112217855025416", false, "Reach the Boat", "Welcome");
	settings.Add("6826692286826942476", false, "Talk to Jack Matt", "Welcome");
	settings.Add("6937205857860768910", false, "Go to Juans house", "Welcome");
	settings.Add("6937207417864034544", false, "Meet Juan at Fish Eye", "Welcome");
	settings.Add("6937252112211993570", false, "Go to Lawans", "Welcome");
	settings.Add("ArtAp", false, "Enter Art Dealers Apartment", "Welcome");
	settings.Add("6937212576892709177", false, "Find Art Dealers Body", "Welcome");
	settings.Add("BoardEnd", false, "WELCOME ON BOARD END", "Welcome");
	
	settings.Add("Light", true, "The Lost Light");
	settings.Add("6943247357780964709", false, "Finish Wrecking Ball", "Light");
	settings.Add("6844089232900545153", false, "Meet Demoulin", "Light");
	settings.Add("6902757557492661369", false, "Check Body 2", "Light");
	settings.Add("6787735280624216650", false, "Speak to Survivors", "Light");
	settings.Add("6906872893416984141", false, "Knocked Out by Wrecking Ball", "Light");
	settings.Add("6825960832947123794", false, "Retrieve UV Lamps", "Light");
	settings.Add("6779627417734707475", false, "THE LOST LIGHT END", "Light");
	
	settings.Add("Broadcast", true, "Broadcast");
	settings.Add("6938347014034918733", false, "Jacks Call on the Boat", "Broadcast");
	settings.Add("6938742847233756566", false, "Planning The Tower", "Broadcast");
	settings.Add("6921638229521064970", false, "Speak to Lawan Before Tower", "Broadcast");
	settings.Add("6792922479614608680", false, "Meet Rowe in the Tower", "Broadcast");
	settings.Add("6921645020787467377", false, "Meet Leon", "Broadcast");
	settings.Add("6921649207757338208", false, "Restore Power", "Broadcast");
	settings.Add("6792930725809135490", false, "Restore Elevators", "Broadcast");
	settings.Add("6877846044033492501", false, "Everything Goes Wrong", "Broadcast");
	settings.Add("6921662298435869338", false, "Say Goodbye To Rowe", "Broadcast");
	settings.Add("6877851047096848054", false, "Get Grappling Hook", "Broadcast");
	settings.Add("6877851377825561047", false, "Reach Outside", "Broadcast");
	settings.Add("6921665482628994005", false, "Reach Bottom of Tower Climb", "Broadcast");
	settings.Add("6951040695683782854", false, "Get Flamed by Frank", "Broadcast");
	settings.Add("6951041782107291259", false, "New Radio Hope", "Broadcast");
	settings.Add("6951042477725412817", false, "Frank Had A Solid Plan", "Broadcast");
	settings.Add("6877852958904137946", false, "Give Control to Matt/Frank", "Broadcast");
	settings.Add("6949121008916742189", false, "BROADCAST END", "Broadcast");
	
	settings.Add("Shoe", true, "The Shoe");
	settings.Add("6949072789469898440", false, "Meet Lawan Outside Her Apartment", "Shoe");
	settings.Add("6949073874748307240", false, "Enter Apartment", "Shoe");
	settings.Add("6949074185203312455", false, "Find Picture", "Shoe");
	settings.Add("6949075335827864061", false, "Find Shoes", "Shoe");
	settings.Add("6949076654408927074", false, "Meet Lawan on Rooftop", "Shoe");
	settings.Add("ShoeEnd", false, "THE SHOE END", "Shoe");
	
	settings.Add("Empire", true, "Empire");
	settings.Add("6950562180479382846", false, "Aiden Calls Lawan on Boat", "Empire");
	settings.Add("6836253812468089259", false, "Meet Jack on Boat", "Empire");
	settings.Add("6961700032206838300", false, "Franks Call to Aiden", "Empire");
	settings.Add("6836255389275975496", false, "Activate First Antenna", "Empire");
	settings.Add("6919758564274124049", false, "Disabled Cannon", "Empire");
	settings.Add("6871283625070616617", false, "Activate Second Antenna", "Empire");
	settings.Add("6919758103924711922", false, "Disabled Both Cannons", "Empire");
	settings.Add("6725778646519233855", false, "EMPIRE END", "Empire");
	
	settings.Add("Veronika", true, "Veronika");
	settings.Add("6991449492800666796", false, "Speak to Sophie At Bazaar", "Veronika");
	settings.Add("VerBuild", false, "Enter The Building", "Veronika");
	settings.Add("6991478174385769039", false, "Speak to Vincenzo", "Veronika");
	settings.Add("7039703436298482826", false, "Need to find Dr Ryan", "Veronika");
	settings.Add("6782143292365090878", false, "Meet Veronika", "Veronika");
	settings.Add("6981835844101308917", false, "Reach First Dome", "Veronika");
	settings.Add("6884150521996883829", false, "Reach Second Dome", "Veronika");
	settings.Add("6884157407854169211", false, "Turn on Power", "Veronika");
	settings.Add("6835843003278968886", false, "Talk To Veronika", "Veronika");
	settings.Add("6982131040894055687", false, "Turn the GRE Key", "Veronika");
	settings.Add("6965106974872865197", false, "Return to Veronika", "Veronika");
	settings.Add("6966896039700209189", false, "Get Blocker", "Veronika");
	settings.Add("6920124963615898104", false, "Check on Veronika", "Veronika");
	settings.Add("6982164656724953783", false, "Begin Renegade Combat", "Veronika");
	settings.Add("6982189448716463802", false, "Finish Renegade Combat", "Veronika");
	settings.Add("6797330224537895109", false, "Begin Waltz Escape", "Veronika");
	settings.Add("6955769373493964841", false, "Escape Waltz", "Veronika");
	settings.Add("6986239164504225373", false, "VERONIKA END", "Veronika");
	
	settings.Add("Assassin", true, "Assassination");
	settings.Add("6950617053701170578", false, "Juan Gets Hung", "Assassin");
	settings.Add("6950618243477101615", false, "Confront Jack", "Assassin");
	settings.Add("6950612340759337646", false, "Meet Lawan at Fish Eye", "Assassin");
	settings.Add("6950616838199752778", false, "Stop Lawan", "Assassin");
	settings.Add("6838984222336485600", false, "ASSASSINATION END", "Assassin");
	
	settings.Add("Never", true, "Now or Never");
	settings.Add("6993271335167613092", false, "Large Renegade Fight", "Never");
	settings.Add("6805092895580390700", false, "Enter Stronghold", "Never");
	settings.Add("6950619814970437236", false, "Try to Stop Lawan", "Never");
	settings.Add("6844404122235799953", false, "Confront The Butcher", "Never");
	settings.Add("6957254303141313925", false, "Investiage Bed", "Never");
	settings.Add("6963200732507420772", false, "Cillians Call", "Never");
	settings.Add("6796674366368284542", false, "NOW OR NEVER END", "Never");
	
	settings.Add("X13", true, "X13");
	settings.Add("7000696247927709223", false, "Killed PK's", "X13");
	settings.Add("6994397771519076950", false, "Killed Jack Matt", "X13");
	settings.Add("6963219234838478176", false, "Reached Door In Volatile Mode", "X13");
	settings.Add("TunnelEnt", false, "Enter Tunnel", "X13");
	settings.Add("7000966506933858837", false, "Exiting Cave", "X13");
	settings.Add("6963222842523160032", false, "Confronted By Lawan", "X13");
	settings.Add("6963227295121629094", false, "Begin Combat", "X13");
	settings.Add("6963230872814038156", false, "Finish Combat", "X13");
	settings.Add("EscVol", false, "Escape Volatiles", "X13");
	settings.Add("6963247968542008763", false, "Waltz Tormenting Aiden", "X13");
	settings.Add("6976207285085716418", false, "Aiden Almost Catches Waltz", "X13");
	settings.Add("6963248653937833880", false, "Begin Waltz 1", "X13");
	settings.Add("6963249638297881671", false, "Begin Waltz 2", "X13");
	settings.Add("7000997363420796466", false, "Begin Waltz 3", "X13");
	settings.Add("6963250046542176073", false, "Begin Waltz 4", "X13");
	settings.Add("6994758198199493876", false, "Beat Waltz", "X13");
	settings.Add("6963532338237599348", false, "Save Mia", "X13");
}

init
{
	vars.completedSplits = new List<string>();
}

update
{
    if (timer.CurrentPhase == TimerPhase.NotRunning)
    {
        vars.completedSplits.Clear();
    }
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
	if (current.DialogueID != old.DialogueID)
	{
		vars.DialogueString = current.DialogueID.ToString();
		if (settings[vars.DialogueString] && !vars.completedSplits.Contains(vars.DialogueString))
		{
			vars.completedSplits.Add(vars.DialogueString);
			return true;
		}
	}
	
	if (current.QuestID != old.QuestID)
	{
		vars.QuestString = current.QuestID.ToString();
		if (settings[vars.QuestString] && !vars.completedSplits.Contains(vars.QuestString))
		{
			vars.completedSplits.Add(vars.QuestString);
			return true;
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
	return current.blackScreen == 1 && old.blackScreen == 0 && current.X >= 590f && current.X <= 595f && current.menuCutsStart != 200 ||
		current.Loading == 8 && old.Loading == 2 && current.X >= 620f && current.X <= 621f && current.menuCutsStart != 200;	
}
