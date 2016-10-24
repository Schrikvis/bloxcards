--Ignore for now. Is for storage purposes!


	["Jason Voorhees"] =
		["Id"] = 529601481,
		["Name"] = "Jason Voorhees",
		["Health"] = 175,
		["Power"] = 175,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["CounterAttackBlock"] = true,
		["Charge"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Halloween",
			Description = "JKason can't be counterattacked and can attack when summoned.",
			["Type"] = "OnSummon",
			["Power"] = {{"Heal",0,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Hmph.",
	},
	
	["Vampire Hunter"] =
		["Id"] = PENDING,
		["Name"] = "Vampire Hunter",
		["Health"] = 550,
		["Power"] = 550,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3, ["Neutral"] = 3,},
		["Effect"] = {
			Name = "Purify",
			Description = "Deal 150 damage to a target fighter, all enemy fighters, and the opponent.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",150,"Opponent"},{"Damage",150},{"Inflict",150,"Opponent"}},
			Target = "Single",
		},
		["Bio"] = "With a whip, a stake, and some self-determination, I can get anything done.",
	},
	
	["Flaming Darkseed"] =
		["Id"] = PENDING,
		["Name"] = "Flaming Darkseed",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Deal 250 damage to a target fighter.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",250}},
			Target = "Single",
		},
		["Bio"] = "For villagers, these bombs are signs that god has forsaken them. For Hallow, it's Tuesday.",
	},
	
	["Vampire Bite"] =
		["Id"] = PENDING,
		["Name"] = "Vampire Bite",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Deal 100 damage to all enemy fighters. Allied fighters gain 100 power.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",100,"Opponent"},{"Strengthen",100}},
			Target = "Ally",
		},
		["Bio"] = "With a cloak, a fang, and some darkness, Vampires can get anything done.",
	},
	
	["Dead Tree"] =
		["Id"] = 529624169,
		["Name"] = "Dead Tree",
		["Health"] = 700,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "When this card is targeted, reverse it back into the Final Tree,",
			["Type"] = "OnTarget",
			["Power"] = {{"Destrpy",9999,"Self"},{"Summon","Final Tree"}},
			Target = "Ally",
		},
		["Bio"] = "This tree is a reminder of what we've lost in these dark times.",
	},
	
	["Spicy Lolipop"] =
		["Id"] = 529628496,
		["Name"] = "Spicy Lolipop",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3, ["Neutral"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "All allied fighters gain 300 power. End the turn.",
			["Type"] = "OnSummon",
			["Power"] = {{"Strengthen",300},{"End",1}},
			Target = "Ally",
		},
		["Bio"] = "Why did you think giving our entire army a vindaloo was a good idea, sir? Now they have to cool off!",
	},
	
	["Blood Moon Shard"] =
		["Id"] = PENDING,
		["Name"] = "Blood Moon Shard",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 4,},
		["Effect"] = {
			Name = "Stud",
			Description = "Terrain. Each player loses 150 life at the start of their turn.",
			["Type"] = "Field",
			["Power"] = {{"Cost",-150}},
			Target = "All",
		},
		["Bio"] = "Both Hallow and Eisenhower looked at the crystallised blood with astonishment. How could there be a werewolf this powerful lurking about?",
	},
	
	["Kruger's Apprentice"] =
		["Id"] = PENDING,
		["Name"] = "Kruger's Apprentice",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["AttackBlock"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 4,},
		["Effect"] = {
			Name = "Stud",
			Description = "Can't attack. When this fighter destroys another, it gains 200 health and power.",
			["Type"] = "Field",
			["Power"] = {{"Heal",0}},
			Target = "All",
		},
		["Bio"] = "Both Hallow and Eisenhower looked at the crystallised blood with astonishment. How could there be a werewolf this powerful lurking about?",
	},
	
	

RED
COMMONS
1 - Jason Voorhees
2 - Vampire Hunter
3 - Flaming Darkseed
4 - Vampire Bite (Same Effect as Moorph but summon a Bob the Cursed instead) (Done and done)
5 - Dead Tree (High HP, No Attack)(Created)
6 - Spicy Lolipop(Trade HP For Attack) (Created)
7 - Blood Moon Shard (Story Piece)
8 - Kruger's Apprentice
9 - Masked Extortionist (Completed)
10 - Disturbing Thoughts - Needs to include a cheese grater
11 - Corrupt Guest (More powerful guest, but more dangerous effect) (Created) o3o
12 - Slenderman (Created) o3o
13 - Enrage
14 - Claudia Sinister (Created)
15 - Patric Sinister (Created)
16- Edgelord (Created by Big Yosh)
17 - Horse Breeder -> Werecentaur (Lycanthrope) :thumbup:
18 - Evil Prince -> Werefrog (Lycanthrope)
19 - Lumberjack -> Werebear (Lycanthrope)
20 - Wolfbitten Noob -> Werewolf Savage (Lycanthrope) (Created)
UNCOMMONS
1 - Paraselene Ascetic -> Lunar Rager (Lycanthrope) (Created)
2 - Blessed Acolyte -> Weredragon (Lycanthrope)
3 - Axeoattack
4 - Wolven Blitz (Lycanthrope Action)
5 - Pyramid Head
6 - Grove of the Burnwillows (Gain 2 red icons, your opponent gets a carniverous death moth)
7 - Priest of the Blood Rite
8 - Possessed Skull (Created)
9 - Homeless Man -> DIY:Werewolf (Lycanthrope)
RARES
1 - Headless Horseman(Created) o3o
2 - Haunted Redcliff Armor (Created)
3 - Grim Reaper (Created)
4 - Ignis Knight
5 - Death-Defying Demon (10 charges) (Created)
EPICS
1 - Flesh Vortex
2 - It that was Silenced -> It that is Whispering -> He that will Howl -> Eclipse, Werewolf Colossus (Lycanthrope) (Pen)
3 - Mitcrawl (Created)
LEGENDARIES
1 - Unspeakable Summoning (Your opponent summons Lezus.) (Pen/iiMas)

TOKENS:
Lezus

BLUE
COMMONS
1 - Mad Scientist(Created) o3o
2 - Bedsheet Ghost (Created) o3o
3 - Gooplast
4 - Roblox U Student (done)
5 - Hacker (Created)
6 - Ye Old Arte (References Arte71)
7 - Bitter Candy (Lock card for 3 turns, you gain 200 Life)
8 - Groucho Mask (Created) o3o
9 - Skeleton (Done)
10 - Script Robber (Twisted fusion of HeavenLogin and JaredValdez4) (Created) o3o
11 - Failed Experiment (Created)
12 - Unplumbed Lead (Fusion of Mario and Luigi) (Created by Big Yosh)
13 - Ghoost (Created) (Goo)
14- Psychotic Freak (Created)
15 - Frankenstein(Created) o3o
16 - Kalman Sinister (Completed)
17 - Victor Sinister (Completed)
18 Sibling Jayvote (Fusions of Jayson13 and Sibs.)
19 - Toxic Goo (Created) o3o
20 - DoeDoe (John and Jane Doe melded together in the shape of a bird) Done
UNCOMMONS
1 - Terry Sinister (Completed)
2 - DairingSpookHead (Created)
3 - Supercomputer's Skull (Created)
4 - Unexpected Results (Story Piece)
5 - Waspism (beeism in the form of a wasp) (done)
6 - Goo Golem (Goo) (Created) o3o
7 - Korblox Skeleton (Done)
8 - MS4_HappyFace_v8.exe
9 - RoboLoleris (AKA Mechahitler) (Created) o3o
RARES
1 - Haunted Korblox Armor (Created)
2 - Brothers Grotesque (Freakish combination of Jimminus and Yoshius stitched together) (done)
3 - Dark Book of Spells (Created by Big Yosh)
4 - Inexorable Goo Tide (Goo)
5 - Glaciem Knight
EPICS
1 - Grey Goo Scenario (Created)
2 - Horrarceusdon (Created by Dairingpoophead) 11/10
3 Stormchaser's Gambit (Created by Big Yosh)
LEGENDARIES
1 Eisenhower, the Alchemist (done)

TOKEN
Morphic Goo (When this card is targeted, reveal its true form.)

GREEN
COMMONS
1  - Little Girl (Nightmare Fuel is Finished)
2 - Bubbling Cauldron (Pen)
3 - Phyrric Invitation (Mythic Shadow)
4 - Verisimilitudal Dissonance (Mythic Shadow)
5 - Sour Candy (Lower all your cards HP, you gain 200 Life)
6 - Unresting Tombstone (EoT, Summon a zombie. Can't attack) (Created) o3o
7 - Zanzel's Recur (Story)
8 - Treasured Unicorn
9 - Magic Broom Black Cat (Created) o3o
10 - Stranglevines (Created) o3o
11 - Gentle Elder
12 - Failed Antidote
13 - Carniverous Death Moth (500/500, N/A effect)
14 - Infected Mushrooms (Created)
15 - Detached Shadow (Created)
16 - Noxious Gas (Created by Big Yosh)
17 - Explosive Toad (Created) o3o
18 - Graboid (From the film Tremors) (Created) o3o
19 - Wicked Witch(Created) o3o
20 - Sin Collector (Mythic Shadow)
21 - Nerf Zombie (Created) o3o
UNCOMMONS
1 - Meeboid Zombie  (Created)
2 - Engineered Syzygy (Story Piece, Mythic Shadow)
3 - Abhorrant Skull (Created)
4 - Beast Within (Destroy target fighter; your opponent gets a werewolf) (Created by Big Yosh)
5 -Final Tree (Created by Big Yosh)
6 Jungle Dweller (has to include the person Aeomancer)
7 - Triffid (Created) o3o
8 - KillCactaur
9  - Liechtenhauer's Sophistry (Created)
RARES
1 - Haunted Overseer Armor (Created)
2 - DIY:Dark Dominus (Completed)
3 - Ancient Stirrings (Story Piece) 
4 - Eldritch Horror
5 - Apheliotropic Syzygy (Mythic Shadow) (Done)
EPICS
1 - Corrupt Alpha Brick(Done)
2 - Quan Sinister (done)
3 - Fearmiredon
LEGENDARIES
1 - Priestess Zanzel, the Promised One (Done)

YELLOW
COMMONS
1 - Hallow's Enforcer
2 - Swarm of Bats (Created) o3o
3 - Pumpkin Bomb(Created) o3o
4 - Trick or Treat (Created by Big Yosh)
5 - Cheshire Cat (Created) o3o
6 - Fried One Cultist
7 - Bloody Knife (Created)
8 - Cereal Killer (Done)
9 - Pumpkin Carver (Created by Big Yosh) (Apparently already made, frowny face. MARK UP YOUR THINGS PEOPLE)
10 - Hallow's Boon (Hallow)
11 - Sweet Candy (Trade Attack for HP)
12 - Hallow's Gate (Terrain)
13 - Sugar Rush (Created by Big Yosh)
14 - Candy Robber (Done)
15 - Smiling Golem (Created by Big Yosh)
16 - Drown in Hedonism
17- Cotton Candy Lion (Created by Big Yosh)
18 - Hidden Razors (Heavy red cost) (Created) o3o
19 - Doll House
20 - Candy Crane (Hallow)
UNCOMMONS
1 - Sugar Skull (done)
2 - Obon Festival
3 - Tooth Decay (Created by Big Yosh)
4 - The Blob (Boardwhip and filler)
5 - The Forbidden Box - Forbidden Spirit(Token)
6 - Hallow's Eradicator
7 - Dun_Boof(Created) (Dairingpoophead)
8 - Hallow's Army (Hallow)
9 - Creepy Toy (Created by Big Yosh)
RARES
1 - Bribery (Story Piece)
2 - Hallow's Knight (Hallow)
3 - Haunted Doge Head (done)
4 - Dark Alliance (Story Piece)
5 - Final Revels (Unlock all yellow fighters. Destroy them at turn's end.) (Created by Big Yosh)
EPICS
1 - Cringeleaf (Created)
2 - The Skull Collector (Created)
3 - Dreadger980
LEGENDARIES
1 - Hallow, the Sugarlord (Created)

	["Wolfbitten Noob"] = {
		["Id"] = 504766884,
		["Name"] = "Wolfbitten Noob",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Archetype"] = "Noob",
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Halloween",
			Description = "Whenever you cast an action or terrain spell, transform this card.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Werewolf Savage"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Can he deliver his book to the library in time?",
	},

	["Werewolf Savage"] = {
		["Id"] = 504766771,
		["Name"] = "Werewolf Savage",
		["Health"] = 400,
		["Power"] = 400,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Archetype"] = "Lycanthrope",
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Halloween",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Wolfbitten Noob"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Can you escape in time?",
	},