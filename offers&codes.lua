local codes = {
	{
		Obfuscated = ""; -- generate these via the chat command !obfuscatecode <CodePlayersEnter>
		Rewards = {-- to get your code back, use !deobfuscatecode <Obfuscated>
			Cards = {["Necromantic Acolyte"] = 1}; -- {["Medic Kit"] = 1};
			RandomCards = {
				Pool = {["Necromantic Acolyte"] = 1, ["Fried Acolyte"] = 1, ["Nova"] = 1};
				Amount = 3;
			}; -- {{"Medic Kit" = 1, ["Froot Ninja"] = 1}, 2}; ie, 50/50 chance for either card, 2 cards are given
			-- Packs = {"Exine" = 5};
			BloxBux = 10;
			Charms = {1,1}; -- rabbit, clover
			Sleeves = {"Legendary"}; -- {"Basic"}
			Ranks = {"Tester"}; -- {"DanTDM Superfan"}
			--BestBefore = tick() + (3600*hours) + (86400*days) + (604800*weeks); doesnt work and pointless.
		}
	};
		
	{
		Obfuscated = "3QM3";
		Rewards = {
			Packs = {Exine = 5};
			BloxBux = 500;
		}
	};

	{
		Obfuscated = "7qj+7";
		Rewards = {
			Cards = {["Safe Chat"] = 1};
		}
	};
	
	{
		Obfuscated = "M3G++Gf7M";
		Rewards = {
			Cards = {["Cow God"] = 1};
			Packs = {Stirrings = 5};
		}
	};
		
	{
		Obfuscated = "pjNa+QafQ+k";
		Rewards = {
			Cards = {["FILTHYPRANKS"] = 1};
		}
	};
		
	{
		Obfuscated = "MUa00 e0GU5 5+afJ";
		Rewards = {
			BloxBux = 1000;
		}
	};
	
	{
		Obfuscated = "M3G00 3WQ eQM3";
		Rewards = {
			Cards = {["Gravity InspectorV2"] = 3};
		}
	};
	
	{
		Obfuscated = "OGYQ";
		Rewards = {
			Cards = {["Hyperblue"] = 1, ["RukatuKDH"] = 1, ["InceptionTime"] = 1};
		}
	};
	
	{
		Obfuscated = "+jej3GR";
		Rewards = {
			Cards = {["BrokenBone"] = 1};
		}
	};
	
	{		
		Obfuscated = "0Qa7NQ";
		Rewards = {
			Packs = {Obvious = 4};
			Charms = {3,3};
		}
	};
	
	{
		Obfuscated = "7QFQ+a3Q";
		Rewards = {
			Cards = {["ChickenDuckBird V2"] = 1};
			BloxBux = 200;
		}
	};
	
	{
		Obfuscated = "7QfJG KQ fQ";
		Rewards = {
			Cards = {["Lunar Acolyte"] = 3, ["Acolyte of the Rift"] = 3, ["Infernal Acolyte"] = 3, ["Necromantic Acolyte"] = 3, ["Fried Acolyte"] = 3, ["Nova"] = 3};
		}
	};
	
	{
		Obfuscated = "M5jjJp e0jl";
		Rewards = {
			Charms = {2,2};
			Sleeves = {"Goopy"};
		}
	};
	
	{
		Obfuscated = "MRa+p Ra+km";
		Rewards = {
			Cards = {["Disturbing Thoughts"] = 3};
			Packs = {Stirrings = 1};
			Sleeves = {"Spooky Scary"};
		}
	};
	
	{
		Obfuscated = "3N3j+Ga0";
		Rewards = {
			Packs = {Exine = 5};
			Sleeves = {"Spooky Scary"};
		}
	};
	
	{
		Obfuscated = "e0NQeQa+K";
		Rewards = {
			Cards = {["Grand Pirate King"] = 2, ["Ship Raider"] = 4, ["Bearded Captain"] = 3, ["Pirate"] = 4, ["Brickmason"] = 1};
		}
	};
	
	{
		Obfuscated = "7jjK Tje";
		Rewards = {
			Cards = {["ROBLOXian Reborn"] = 1};
		}
	};
	
	{
		Obfuscated = "YG03Wp 5+afJM";
		Rewards = {
			Cards = {["FILTHY PRANKS"] = -1};
			BloxBux = -100
		}
	};
	
	{
		Obfuscated = "/a0Qf3GfQM";
		Rewards = {
			Packs = {["Tough Love"] = 2};
		}
	};
	
	{
		Obfuscated = "RW+GM3UaM";
		Rewards = {
			Cards = {["Unwanted Gift"] = 1};
			RandomCards = {
				Pool = {["Unwanted Gift"] = 999, ["ROBLOX-C"] = 1};
				Amount = 1;
			};
			Packs = {["Teaism's Gifts"] = 1};
			BloxBux = 1;
		};
	};
	
	{
		Obfuscated = "KGMRjNf3 RjKQ aRaG";
		Rewards = {
			Packs = {["Innovative"] = 5};
			BloxBux = 1000;
			Charms = {2,2};
			Sleeves = {"YuGiOh"};
		}
	};
	
	{
		Obfuscated = "eQaRW ea+eQRNQ";
		Rewards = {
			Packs = {["Summer Salt"] = 1};
			BloxBux = 500;
			Charms = {1,1};
		}
	};
	
	{
		Obfuscated = "KQM5aRG3j";
		Rewards = {
			Cards = {["Despacito"] = 2};
			Charms = {2,2};
			Ranks = {"Despacito"};
		}
	};
}

local offers = {
	Example = { -- where Example is ideally something descriptive
		Title = "";    -- "A title should be about this length."
		SubTitle = ""; -- "A subtitle can be a little longer: about this long is fine."
		Image = "rbxassetid://"; -- aspect ratio is 4:1, can cleverly replace Title and SubTitle
		DateConstraint = {
			--year  = {2017, 2018}; -- 2017
			--month = {}; -- 01-12
			--yday  = {}; -- 000-356
			--day   = {}; -- 01-31
			--wday  = {}; -- 0-6; sunday-saturday			
			--hour  = {}; -- 00-23 don't use
			--min	  = {}; -- 00-59 don't use
			--sec   = {}; -- 00-61 don't use
		};
		BestBefore = 0;
		PriceInRobux = 250; -- robux amounts: 10, 50, 100, 150, 250, 500, 750, 1000, 2500
		PriceInBloxBux = 0;
		Cards = {}; -- {["Medic Kit"] = 1};
		RandomCards = {
			--Pool = {"Medic Kit" = 1, ["Froot Ninja"] = 1};
			--Amount = 2;
		}; -- In this example: 50/50 chance for either card, 2 cards are given
		Packs = {}; -- {Exine = 5};
		BloxBux = 0;
		Charms = {0,0}; -- rabbit, clover
		Sleeves = {}; -- {"Basic"}
		Ranks = {}; -- {"DanTDM Superfan"}
		Missions = { -- don't use
			--{
				--Title = "";
				--Instruction = "";
				--Event = "";
				--Requirement = 0;
			--};
		};
		SinglePurchase = false; -- can only be bought once, ie sleeve/rank offers
		Hidden = true; -- for internal use only, ie this example offer
	};
	
	Feet = {
		Title = "Rabbit's foot (synthetic)";
		SubTitle = "We'd never sell real ones.";
		Image = "rbxgameasset://Images/offer_feet";
		PriceInRobux = 10;
		Charms = {1,0};
		Hidden = true;
	};
	
	Clover = {
		Title = "4-leaf clover";
		SubTitle = "Luck of the Irish!";
		Image = "rbxgameasset://Images/offer_clover";
		PriceInRobux = 10;
		Charms = {0,1};
		Hidden = true;
	};
	
	BlueStarter = {
		Title = "STARTER DECK: Voidcutter"; 
		SubTitle = "Wield tricks and traps with this cunning blue deck.";
		PriceInBloxBux = 300;
		Cards = {["Silver_Semtexagon"] = 1, ["IcyTea"] = 1,
				["VetexGames"] = 1, ["Y05H1M4N"] = 1,
				["KrocoStar"] = 2, ["Mike"] = 2,
				["kickertoken"] = 3, ["ShyLightness"] = 3, ["Sylrath"] = 3, ["AsrielMemer"] = 3, ["2Hex"] = 3, ["Stud"] = 3, ["Eye Spy"] = 3, ["FuryBlocks"] = 3,
				["Spiderboy"] = 4, ["DairingPoopHead"] = 4};
		Ranks = {"Acolyte of the Rift"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	RedStarter = {
		Title = "STARTER DECK: Immolation"; 
		SubTitle = "Incinerate anything in your path with this destructive red deck.";
		PriceInBloxBux = 300;
		Cards = {["Aesura"] = 1, ["Jayson13"] = 1,
				["Player"] = 1, ["Dignity"] = 1,
				["WhiteScarf"] = 2,
				["Mitpaul"] = 3, ["Oz"] = 3,
				["Rad"] = 4, ["Anderson"] = 4, ["BenCanova1"] = 4, ["ThatGrimGuy"] = 4, ["Mag"] = 4, ["ProjectSlayer"] = 4, ["Ambamby"] = 4};
		Ranks = {"Infernal Acolyte"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	GreenStarter = {
		Title = "STARTER DECK: Overgrowth"; 
		SubTitle = "Grow over your foes with this overwhelming green deck.";
		PriceInBloxBux = 300;
		Cards = {["Murtic"] = 1, ["Ripull"] = 1,
				["Brick_Man"] = 1, ["KasoduS"] = 1,
				["KingCactaur"] = 2, ["Wustard"] = 2, ["IlIll"] = 2,
				["pa00"] = 3, ["Duckywow"] = 3, ["Inventor1116"] = 3, ["Stud"] = 3, ["Kcbeast666"] = 3, ["Oozlebachr"] = 3,
				["Brycen27"] = 4, ["Boogerguy123"] = 4, ["Langz"] = 4};
		Ranks = {"Necromantic Acolyte"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	YellowStarter = {
		Title = "STARTER DECK: Limitless Speed"; 
		SubTitle = "Flood the board with this speedy yellow deck.";
		PriceInBloxBux = 300;
		Cards = {["Lord of Auctions"] = 1, ["OstrichSized"] = 1,
				["Widgeon"] = 1, ["Ejob"] = 1,
				["Maelstronomer"] = 2,
				["Valletta"] = 3, ["Plushie Mummy"] = 3, ["Stud"] = 3, ["Gobble Squad"] = 3, ["Pikachukiller101"] = 3, ["WarbearNomkins"] = 3,
				["Guest"] = 4, ["Finland"] = 4, ["Pilgrim"] = 4, ["TeeVee"] = 4};
		Ranks = {"Fried Acolyte"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	Thaw = {
		Title = "EVENT DECK: Out of Time";
		SubTitle = "Cheat large fighters into play by removing their downsides with this devious blue deck.";
		PriceInRobux = 50;
		Cards = {["MesouricPhantom976"] = 2,
				["Sylrath"] = 3, ["Subata"] = 3, ["Stevenl15"] = 3, ["Mlgloga"] = 3, ["Darklord1506"] = 3, ["CinematicMind"] = 3, ["AsrielMemer"] = 3,
				["DairingPoopHead"] = 2, ["Icerain"] = 3, ["DigitalSon"] = 3, ["HatdaCat"] = 4, ["Gato Luz"] = 4};
		Ranks = {"Chilled Out"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	GrinderRed = {
		Title = "EVENT DECK: Grind to Dust";
		SubTitle = "Slowly grind away your opponent's resources with this attritious red deck.";
		PriceInRobux = 50;
		Cards = {["ClanAtlas"] = 1, ["WishNite"] = 1,
				["Tone"] = 1, ["Doneyes"] = 1, ["Taymaster"] = 1, ["Traumatic Clown"] = 1,
				["Divine Favor"] = 2,
				["Ninja Elite"] = 3, ["MarissaKitty04"] = 3, ["Infernal Acolyte"] = 3, ["Fire Fighter"] = 3,
				["ProjectSlayer"] = 4, ["Mag"] = 4, ["Corrupt Guest"] = 4, ["Ambamby"] = 4, ["Sorry"] = 2};
		Ranks = {"Grinder"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	VanillaIceCream = {
		Title = "EVENT DECK: Vicious Vanillas";
		SubTitle = "Decimate your opponent using bulky effectless fighters with this ordinary blue/red deck.";
		PriceInRobux = 50;
		Cards = {["Clockwork"] = 1,
				["Dued1"] = 1, ["Pizzablawk"] = 1, ["Dignity"] = 1, ["Rad"] = 1,
				["Wrath of Azure"] = 2, ["Doomed Adventurer"] = 2, ["Spiderboy"] = 2, ["Ambamby"] = 2, ["Mitpaul"] = 2,
				["Skullsten"] = 3, ["ShyLightness"] = 3, ["DeathETM"] = 3,
				["DeadZoneHark"] = 4, ["Mag"] = 4, ["Anderson"] = 4, ["ThatGrimGuy"] = 4,};
		Ranks = {"Plain"};
		SinglePurchase = true;
		Hidden = false;
	};
	
	RankPack = {
		Title = "Rank Pack";
		SubTitle = "Bling out your game with this selection of custom ranks!";
		PriceInRobux = 100;
		Ranks = {"Raised by Fluzards", "Master of Waves", "Broken Dreamer", "Hacked by SoulSearch", "Revelling Satyr", "Viable Lifegain Deckbuilder", "SAMPLETEXT", "An Enemy Stand", "AI Slayer", "Little Girl", "Surveyor of Degeneracy", "Shadow Clone", "Planetbuster", "Double Decker", "Pootis", "Nenjas Trader", "Reading the card explains the card.", "Sweep Sweep Sweep", "Prince", "Fun Hater", "Nerf Bees!", "0800 1111", "Rigged from the Start", "Got Nerfed", "Totally not a Meeboid", "Savior of Penguins", "Innovative", "Ultra Enthusiasm", "Bat Lives Matter", "Not in Smash", "Empowered by God and Anime", "Average Joe", "Dabmaster"};
		SinglePurchase = true;
		Hidden = false;
	};
}

return {Codes = codes; Offers = offers;}
