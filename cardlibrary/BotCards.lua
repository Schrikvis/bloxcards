local botcards = { -- Cards used by an AI that are not meant for human play go here.
	
	--Used by the MasterHand AI.
	["MasterHand"] = { 
		["Id"] = 502550783,
		["Name"] = "MasterHand",
		["Health"] = 5000,
		["Power"] = 0,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["WeakenImmune"] = true,
		["SwapImmune"] = true,
		["SetImmune"] = true,
		["CounterAttackBlock"] = true,
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = "Can't be counterattacked. This card is immune to cards that lower, swap, or set its Health or Power. When this card is destroyed, its controller loses the game.",
			["Type"] = "OnDeath",
			["Power"] = "Inflict",
			Target = "Self",	
			Increase = 99999,
		},
		["Bio"] = "No gimmicks... Apart from this one.",
	},		
	
	
	--Used by the MahBucket AI.
	
	["Bert"] = { 
		["Id"] = 1151269013,
		["Name"] = "Bert",
		["Health"] = 400,
		["Power"] = 400,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Yellow",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = [[Set the health and power of all enemy fighters to 200. Summon a Beehive.]],
			["Type"] = "OnSummon",
			["Power"] = {{"SetHealth",200},{"SetPower",200},{"Summon","Beehive","Ally"}},
			Target = "Enemy",	
		},
		["Bio"] = "Always as twice as strong as his opponents.",
	},	
	
	["Timothy"] = { 
		["Id"] = 1151269011,
		["Name"] = "Timothy",
		["Health"] = 200,
		["Power"] = 200,
		["Rarity"] = "Token",
		["AttackEffect"] = "Fire",
		["Color"] = "Yellow",
		["Cost"] = {["Neutral"] = 3,},
		["Effect"] = {
			Name = "BossMonster",
			Description = [[Lower the health and power of all enemy fighters by 200. Summon a Beehive.]],
			["Type"] = "OnSummon",
			["Power"] = {{"Weaken",200},{"Damage",200},{"Summon","Beehive","Ally"}},
			Target = "Enemy",	
		},
		["Bio"] = "He certainly is!",
	},	

}

return botcards
