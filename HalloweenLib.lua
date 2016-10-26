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
			Description = "Jason can't be counterattacked and can attack when summoned.",
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
		["Archetype"] = "Lunar",
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
	
	["Possessed Skull"] =
		["Id"] = 529624169,
		["Name"] = "Possessed Skull",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Common",
		["Archetype"] = "Skull",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1, ["Neutral"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Deal 100 damage to a target fighter.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",100}},
			Target = "Single",
		},
		["Bio"] = "This tree is a reminder of what we've lost in these dark times.",
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
		["Bio"] = "The blood of a werewolf can stain both soul and soulless.",
	},
	
	["PW's Third Sinister"] =
		["Id"] = PENDING,
		["Name"] = "PW's Third Sinister",
		["Health"] = 100,
		["Power"] = 100,
		["Rarity"] = "Common",
		["Color"] = "Red", 
		["Archetype"] = "Sinister",
		["Cost"] = {["Red"] = 2, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Whenever your opponent gains life, put a member of the Sinister family into your hand.",
			["Type"] = "OnEnemyHealthGain",
			["Power"] = {{"RandomAdd","Sinister"}},
			Target = "Ally",
		},
		["Bio"] = "Do you know what makes a human being decent? Fear.",
	},
	
	["Masked Extortionist"] =
		["Id"] = PENDING,
		["Name"] = "Masked Extortionist",
		["Health"] = 375,
		["Power"] = 375,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3, ["Neutral"] = 1,},
		["Effect"] = {
			Name = "Damage for Top Deck",
			Description = "Your opponent loses a red, a green, a yellow, and a blue icon. This effect can cause people to go into negative icons.",
			["Type"] = "OnSummon",
			["Power"] = {{"Green",-1},{"Blue",-1},{"Yellow",-1},{"Red",-1}},
			Target = "Opponent",
		},
		["Bio"] = "Hallow was forced to cough up the sum to cross the river.",
	},
	
	["Disturbing Thoughts"] =
		["Id"] = PENDING,
		["Name"] = "Disturbing Thoughts",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Green"] = 1,},
		["Effect"] = {
			Name = "Hive Crack",
			Description = [[Put 2 Nightmares into your opponent's hand.]],
			Type = "OnSummon",
			Power = {{"Add","Nightmare"},{"Add","Nightmare"}},
			Target = "Opponent",
		},
		["Bio"] = "No! NOT THE CHEESE GRATER! Anything but that!",
	},
	
	["Corrupt Guest"] =
		["Id"] = PENDING,
		["Name"] = "Corrupt Guest",
		["Health"] = 400,
		["Power"] = 800,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "When this card dies, you lose 800 life.",
			["Type"] = "OnDeath",
			["Power"] = {{"Cost",800}},
			Target = "Ally",
		},
		["Bio"] = "Wanna be mincemeat?",
	},
	
	["Slenderman"] =
		["Id"] = PENDING,
		["Name"] = "Slenderman",
		["Health"] = 900,
		["Power"] = 1200,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 4, ["Neutral"] = 3,},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "When this card attacks, it loses 200 power.",
			["Type"] = "OnAttack",
			["Power"] = {{"Cost",800}},
			Target = "Ally",
		},
		["Bio"] = "Find the eight pages to best me. All you have to do is ring the bell by the hotel reception.",
	},
	
	["Enrage"] =
		["Id"] = PENDING,
		["Name"] = "Enrage",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Yellow"] = 1},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "All fighters gain 50 power and lose 50 health.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",50},{"Stregnthen",50}},
			Target = "All",
		},
		["Bio"] = "He raged at the world, at his family, at his live. But mostly he just raged.",
	},
	
	["Pyramid Head"] =
		["Id"] = PENDING,
		["Name"] = "Pyramid Head",
		["Health"] = 400,
		["Power"] = 400,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 4,},
		["Effect"] = {
			Name = "Stud",
			Description = "(EXPERIMENTAL EFFECT) After this card attacks, deal 200 damage to who it attacked.",
			["Type"] = "OnAttackEnd",
			["Power"] = {{"Damage",200}},
			Target = "Aggressor",
		},
		["Bio"] = "You're only supposed to blow the bloody doors off!",
	},
	
	["Patric Sinister"] =
		["Id"] = PENDING,
		["Name"] = "Patric Sinister",
		["Health"] = 350,
		["Power"] = 350,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Archetype"] = "Sinister",
		["Cost"] = {["Red"] = 2, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Whenever your opponent summons a fighter, deal 50 damage to all enemy fighters.",
			["Type"] = "OnEnemySummon",
			["Power"] = {{"Damage",50}},
			Target = "Opponent",
		},
		["Bio"] = "The books say you're in the red. The coroner agrees.",
	},
	
	["Edgelord"] =
		["Id"] = PENDING,
		["Name"] = "Edgelord",
		["Health"] = 550,
		["Power"] = 550,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["AttackBlock"] = true,
		["Archetype"] = "Defender",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 4,},
		["Effect"] = {
			Name = "Stud",
			Description = "Can't attack. When this fighter destroys another, it gains 200 health and power.",
			["Type"] = "OnDestroy",
			["Power"] = {{"Heal",200},{"Strengthen",200}},
			Target = "Self",
		},
		["Bio"] = "I came seeking a challenge. All I found was you.",
	},
	
	["Horse Breeder"] =
		["Id"] = PENDING,
		["Name"] = "Horse Breeder",
		["Health"] = 250,
		["Power"] = 250,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 1,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever you cast an action or terrain spell, transform this card, then unlock all Lycanthropes.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Weretaur"},{"Unlock",9999,"Archetype"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "I love my horses. This one won a race, and this one won a dressage contest!",
	},
	
	["Weretaur"] =
		["Id"] = PENDING,
		["Name"] = "Weretaur",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 1,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card, then unlock all Lycanthropes.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Horse Breeder"},{"Unlock",9999,"Archetype"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "He loves his horses just a little bit too much."
	},

	["Evil Prince"] =
		["Id"] = PENDING,
		["Name"] = "Evil Prince",
		["Health"] = 300,
		["Power"] = 175,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever you cast an action or terrain spell, transform this card, then deal 100 damage to all enemy fighters.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Werefrog"},{"Damage",100,"Opponent"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Same kingdom, different leader. Time to conquer.",
	},
	
	["Werefrog"] =
		["Id"] = PENDING,
		["Name"] = "Werefrog",
		["Health"] = 600,
		["Power"] = 300,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card, then deal 100 damage to all enemy fighters.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Evil Prince"},{"Damage",100,"Opponent"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Same leader, different kingdom."
	},
	
	["Lumberjack"] =
		["Id"] = PENDING,
		["Name"] = "Lumberjack",
		["Health"] = 100,
		["Power"] = 400,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever you cast an action or terrain spell, transform this card, then generate a white icon.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Werebear"},{"Neutral",1},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "I live in the forest so I can bear arms. 'overnment likes to take my pistol away.",
	},
	
	["Werebear"] =
		["Id"] = PENDING,
		["Name"] = "Werebear",
		["Health"] = 200,
		["Power"] = 800,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card, then generate a white icon.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Lumberjack"},{"Neutral",1},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "He has indeed exercised his right to bear arms."
	},
	
	["Wolfbitten Noob"] = {
		["Id"] = PENDING,
		["Name"] = "Wolfbitten Noob",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
        ["Color"] = "Red", 
		["Archetype"] = "Lycanthrope",
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
		["Id"] = PENDING,
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
	
	["Paraselene Ascetic"] =
		["Id"] = PENDING,
		["Name"] = "Paraselene Ascetic",
		["Health"] = 350,
		["Power"] = 350,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever you cast an action or terrain spell, transform this card, then put a random red or blue action into your hand.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Lunar Rager"},{"RandomAdd","Lunar"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "The paraselene sages channel the moon to restrict.",
	},
	
	["Lunar Rager"] =
		["Id"] = PENDING,
		["Name"] = "Lunar Rager",
		["Health"] = 700,
		["Power"] = 700,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card, then put a random red or blue action into your hand.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Paraselene Ascetic"},{"RandomAdd","Lunar"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "They are fools. Why would you restrict a blessing?"
	},
	
	["Blessed Acolyte"] =
		["Id"] = PENDING,
		["Name"] = "Blessed Acolyte",
		["Health"] = 300,
		["Power"] = 300,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever you cast an action or terrain spell, transform this card, then deal 150 damage to the opponent.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","Werewrym"},{"Inflict",150,"Opponent"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "No one believes me when I say that the scalelords have blessed me. ",
	},
	
	["Werewyrm"] =
		["Id"] = PENDING,
		["Name"] = "Werewyrm",
		["Health"] = 700,
		["Power"] = 700,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card, then draw a card and lose 200 life.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Blessed Acolyte"},{"Inflict",150,"Opponent"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "A leader is the greatest servant. A master is the greatest tyrant. This is the wrong card bio."
	},
	
	["Homeless Man"] =
		["Id"] = PENDING,
		["Name"] = "Homeless Man",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Charge"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 5,},
		["Effect"] = {
			Name = "Stud",
			Description = "Haste. Whenever you cast an action or terrain spell, transform this card.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Summon","DIY: Werewolf"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "'ey boys, the moon's risin'. All the better to watch 'im beg for mercy!",
	},
	
	["DIY: Werewolf"] =
		["Id"] = PENDING,
		["Name"] = "DIY: Werewolf",
		["Health"] = 1000,
		["Power"] = 1000,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 5,},
		["Effect"] = {
			Name = "Stud",
			Description = "Whenever your opponent casts an action or terrain spell, untransform this card.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Homeless Man"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Just look at 'im, groveling on all fours! What a patheti — ... Oh."
	},
	
	["Wolven Blitz"] =
		["Id"] = PENDING,
		["Name"] = "DIY: Werewolf",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Requirement"] = {"Archetype",1},
		["Cost"] = {["Red"] = 0,},
		["Effect"] = {
			Name = "Stud",
			Description = "Cast only if you control a Lycanthrope. Deal 300 damage to a target fighter, then draw a card.",
			["Type"] = "OnSummon",
			["Power"] = {{"Draw",1},{"Damage",300,"Single"}},
			Target = "Ally",
		},
		["Bio"] = "That noob never stood a chance."
	},
	
	["Claudia Sinister"] =
		["Id"] = PENDING,
		["Name"] = "Claudia Sinister",
		["Health"] = 300,
		["Power"] = 300,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2},
		["Archetype"] = "Sinister",
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Whenever your opponent summons a fighter, gain a white icon.",
			["Type"] = "OnEnemySummon",
			["Power"] = {{"White",1}},
			Target = "All",
		},
		["Bio"] = "There are two ways to enslave a man. One is by the sword. One is by debt.",
	},
	
	["Grove of the Burnwillows"] =
		["Id"] = PENDING,
		["Name"] = "Grove of the Burnwillows",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["DiscardBlock"] = true,
		["Cost"] = {["Red"] = 0},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Can't be discarded. Generate 2 red icons, then your opponent summons a Carniverous Death Moth.",
			["Type"] = "OnSummon",
			["Power"] = {{"Red",2},{"Summon","Carniverous Death Moth","Opponent"}},
			Target = "Ally",
		},
		["Bio"] = "Eisenhower was shocked when he saw these fiery trees.",
	},
	
	["Priest of the Blood Rite"] =
		["Id"] = PENDING,
		["Name"] = "Priest of the Blood Rite",
		["Health"] = 400,
		["Power"] = 200,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "When this card is summoned, summon a Death-Defying Demon. At the end of your turns, you lose 300 life.",
			["Type"] = "OnSummon",
			["Power"] = {{"Summon","Death-Defying Demon"},{"Summon","Priest Token"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "PENDING",
	},
	
	["Priest Token"] =
		["Id"] = PENDING,
		["Name"] = "Priest of the Blood Rite",
		["Health"] = 400,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "When this card is summoned, summon a Death-Defying Demon. At the end of your turns, you lose 300 life.",
			["Type"] = "OnEmd",
			["Power"] = {{"Cost",300}},
			Target = "Ally",
		},
		["Bio"] = "PENDING",
	},
	
	["Spicy Lollipop"] =
		["Id"] = 529628496,
		["Name"] = "Spicy Lollipop",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3, ["Neutral"] = 1,},
		["Archetype"] = "Lunar",
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "All allied fighters gain 300 power. End the turn.",
			["Type"] = "OnSummon",
			["Power"] = {{"Strengthen",300},{"EndTurn",1}},
			Target = "Ally",
		},
		["Bio"] = "Why did you think giving our entire army a vindaloo was a good idea, sir? Now they have to cool off!",
	},
	
	["AxeoAttack"] =
		["Id"] = PENDING,
		["Name"] = "AxeoAttack",
		["Health"] = 375,
		["Power"] = 375,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "When this card attacks and destroys another, put a random Rare card into your hand.",
			["Type"] = "OnAttackDestroy",
			["Power"] = {{"RandomAdd","Rare"}},
			Target = "Ally",
		},
		["Bio"] = "He got me. - Sword Critic",
	},
	
	["Headless Horseman"] =
		["Id"] = PENDING,
		["Name"] = "Headless Horseman",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "When this card dies, ressurect it and lose 600 life.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Headless Horseman"},{"Cost",600}},
			Target = "Ally",
		},
		["Bio"] = "Your laws, much like your bones, were made to be broken.",
	},
	
	["Haunted Redcliff Armor"] =
		["Id"] = PENDING,
		["Name"] = "Haunted Redcliff Armor",
		["Health"] = 300,
		["Power"] = 300,
		["Rarity"] = "Rare",
		["Archetype"] = "Redcliff"
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "When targeted, summon a Redcliff Elite Commander, than give all Redcliff 200 health and power. ",
			["Type"] = "OnTarget",
			["Power"] = {{"Summon","Redcliff Elite Commander"},{"Strenghten",200,"Archetype"},{"Heal",200,"Archetype"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "The soul of the commander Phyrrus resides in this armor, taken by Zanzel's might.",
	},
	
	["Grim Reaper"] =
		["Id"] = PENDING,
		["Name"] = "Grim Reaper",
		["Health"] = 700,
		["Power"] = 450,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 6, ["Neutral"] = 2,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Whenever an enemy fighter dies, Grim Reaper gains 200 health.",
			["Type"] = "OnEnemyDeath",
			["Power"] = {{"Heal",200,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Death is not the greatest loss in life. The greatest loss is what dies inside us while we live.",
	},
	
	["Ignis Knight"] =
		["Id"] = PENDING,
		["Name"] = "Ignis Knight",
		["Health"] = 700,
		["Power"] = 450,
		["Rarity"] = "Rare",
		["Archetype"] = "Redcliff"
		["AttackEffect"] = "Dash",
		["TargetBlock"] = true,
		["AttackBlock"] = true,
		["Archetype"] = "Defender",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2, ["Neutral"] = 3,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Can't attack or be targeted. At the end of your turns, increase the power of all cards that can't attack by 150.",
			["Type"] = "OnEnd",
			["Power"] = {{"Strengthen",150,"Archetype"}},
			Target = "Ally",
		},
		["Bio"] = "My dignity is on the line.",
	},
	
	["Death-Defying Demon"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "9 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon", "Demon 1"}},
			Target = "Ally",
		},
		["Bio"] = "Death is not the greatest loss in life. The greatest loss is what dies inside us while we live.",
	},
	
	["Death-Defying Demon"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "12 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 1"}},
			Target = "Ally",
		},
		["Bio"] = "Falling out,"
	},
	
	["Demon 1"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "11 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 2"}},
			Target = "Ally",
		},
		["Bio"] = "dropping off...",
	},
	
	["Demon 2"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "10 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 3"}},
			Target = "Ally",
		},
		["Bio"] = "... of the surface.",
	},
	
	["Demon 3"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "9 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 4"}},
			Target = "Ally",
		},
		["Bio"] = "Hearing time,",
	},
	
	["Demon 4"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "8 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 5"}},
			Target = "Ally",
		},
		["Bio"] = "twist and turn...",
	},
	
	["Demon 5"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "7 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 6"}},
			Target = "Ally",
		},
		["Bio"] = "... getting nervous.",
	},
	
	["Demon 6"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "6 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 7"}},
			Target = "Ally",
		},
		["Bio"] = "My senses fire,",
	},
	
	["Demon 7"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "5 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 8"}},
			Target = "Ally",
		},
		["Bio"] = "in all directions...",
	},
	
	["Demon 8"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "4 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 9"}},
			Target = "Ally",
		},
		["Bio"] = "... I watch them echo.",
	},
	
	["Demon 9"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "3 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 10"}},
			Target = "Ally",
		},
		["Bio"] = "Filling up,",
	},
	
	["Demon 10"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "2 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Summon","Demon 11"}},
			Target = "Ally",
		},
		["Bio"] = "where these was nothing...",
	},
	
	["Demon 11"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "1 charge. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Heal",0}},
			Target = "Ally",
		},
		["Bio"] = "... As I let go.",
	},
	
	["Demon 11"] =
		["Id"] = PENDING,
		["Name"] = "Death-Defying Demon",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 7,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "0 charges. When this card dies, resurrect it and remove a charge.",
			["Type"] = "OnDeath",
			["Power"] = {{"Heal",0}},
			Target = "Ally",
		},
		["Bio"] = "... As I let go.",
	},
	
	["Flesh Vortex"] =
		["Id"] = PENDING,
		["Name"] = "Flesh Vortex",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Destroy all white fighters. You lose 750 life.",
			["Type"] = "OnSummon",
			["Power"] = {{"Damage",9999}{"Cost",750}},
			Target = "ColorNeutral",
		},
		["Bio"] = "Those undecided had two choices when Eclipse rose from the grave. death by werewolves, or death by the rebirth of the universe.",
	},
	
	["Mitcrawl"] =
		["Id"] = PENDING,
		["Name"] = "Mitcrawl",
		["Health"] = 250,
		["Power"] = 600,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 2,["Neutral"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Generate a green icon.",
			["Type"] = "OnSummon",
			["Power"] = {{"Green",1}},
			Target = "Ally",
		},
		["Bio"] = "Not even the strongest dominion fighter could withstand Zanzel's madness.",
	},
	
	["It that was Silenced"] =
		["Id"] = PENDING,
		["Name"] = "It that was Silenced",
		["Health"] = 250,
		["Power"] = 250,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Archetype"] = "Lycanthrope"
		["AttackBlock"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Level 1. Can't attack. Whenever your opponent casts an action or terrain spell, level this card up.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","It that is Whispering"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "Eisenhower began the resurrection, whilst Hallow kept the shadows at bay.",
	},
	
	["It that is Whispering"] =
		["Id"] = PENDING,
		["Name"] = "It that is Whispering",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["AttackBlock"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Level 2. Can't counterattack. Whenever your opponent casts an action or terrain spell, level this card up.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","It that will Howl"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "The blood shard was placed on the grave, and the werewolves howled to summon their father.",
	},
	
	["It that will Howl"] =
		["Id"] = PENDING,
		["Name"] = "It that is will Howl",
		["Health"] = 1000,
		["Power"] = 1000,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["FaceBlock"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Level 3. Can't attack the opponent. Whenever your opponent casts an action or terrain spell, level this card up.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"Summon","Eclipse, Werewolf Colossus"},{"Damage",9999,"Self"}},
			Target = "Ally",
		},
		["Bio"] = "A lei of skulls was placed around the grave, cradelling his return. The shadows were relentless in their assault.",
	},
	
	["Eclipse, Werewolf Colossus"] =
		["Id"] = PENDING,
		["Name"] = "Eclipse, Werewolf Colossus",
		["Health"] = 2000,
		["Power"] = 2000,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["TargetBlock"] = true,
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 1,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Max level. Whenever this card destroys another, summon a Wolfbitten Noob and put a Wolven Blitz into your hand. Eclipse can't be targeted.",
			["Type"] = "OnDestroy",
			["Power"] = {{"Summon","Wolfbitten Noob"},{"Add","Wolven Blitz"}},
			Target = "Ally",
		},
		["Bio"] = "And then the rose to the moon and cast a shadow on the shadows.",
	},
	
	["Unspeakable Summoning"] =
		["Id"] = PENDING,
		["Name"] = "Unspeakable Summoning",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Legendary",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 13,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "Your opponent summons Lezus.",
			["Type"] = "OnDestroy",
			["Power"] = {{"Summon","Lezus 1"}},
			Target = "Opponent",
		},
		["Bio"] = "Zanzel scoffed when she saw Lezus. These demons are why the world is so impure.",
	},
	
	["Lezus 1"] =
		["Id"] = PENDING,
		["Name"] = "Lezus",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Legendary",
		["AttackEffect"] = "Dash",
		["Color"] = "Token", 
		["Cost"] = {["Red"] = 6,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "I am Lezus.",
			["Type"] = "OnEnd",
			["Power"] = {{"Summon","Lezus 2","Ally"},{"Cost",1000,"Ally"},{"Damage",9999}},
			Target = "Self",
		},
		["Bio"] = "Fool.",
	},
	
	["Lezus 2"] =
		["Id"] = PENDING,
		["Name"] = "Lezus",
		["Health"] = 500,
		["Power"] = 500,
		["Rarity"] = "Legendary",
		["AttackEffect"] = "Dash",
		["Color"] = "Token", 
		["Cost"] = {["Red"] = 6,},
		["Effect"] = {
			Name = "Pyrotechnics",
			Description = "I am Lezus.",
			["Type"] = "OnEnd",
			["Power"] = {{"Summon","Lezus 2","Ally"},{"SetNeutral",0,"Ally"},{"Damage",9999}},
			Target = "Self",
		},
		["Bio"] = "Imbecile.",
	},

	
RED
COMMONS
1 - Jason Voorhees
2 - Vampire Hunter
3 - Flaming Darkseed
4 - Vampire Bite (Same Effect as Moorph but summon a Bob the Cursed instead) (Done and done)
5 - Dead Tree (High HP, No Attack)(Created)
6 - Possessed Skull (Created)
7 - Blood Moon Shard (Story Piece)
8 - PW's Third Sinister
9 - Masked Extortionist (Completed)
10 - Disturbing Thoughts - Needs to include a cheese grater
11 - Corrupt Guest (More powerful guest, but more dangerous effect) (Created) o3o
12 - Slenderman (Created) o3o
13 - Enrage
14 - Pyramid Head
15 - Patric Sinister (Created)
16- Edgelord (Created by Big Yosh)
17 - Horse Breeder -> Werecentaur (Lycanthrope) :thumbup:
18 - Evil Prince -> Werefrog (Lycanthrope)
19 - Lumberjack -> Werebear (Lycanthrope)
20 - Wolfbitten Noob -> Werewolf Savage (Lycanthrope) (Created)
UNCOMMONS
1 - Paraselene Ascetic -> Lunar Rager (Lycanthrope) (Created)
2 - Blessed Acolyte -> Werewyrm (Lycanthrope)
3 - Homeless Man -> DIY:Werewolf (Lycanthrope)
4 - Wolven Blitz (Lycanthrope Action)
5 - Claudia Sinister (Created)
6 - Grove of the Burnwillows (Gain 2 red icons, your opponent gets a carniverous death moth)
7 - Priest of the Blood Rite
9 - Spicy Lolipop(Trade HP For Attack) (Created)
9 - Axeoattack
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

