local dairy = {	
	["Brown Dairy Supply"] = {
		["Id"] = 581854933,
		["Name"] = "Brown Dairy Supply",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Null",
		["Color"] = "Neutral",
		["Cost"] = {["Neutral"] = 4,},
		["Effect"] = {
			Name = "moo",
			Description = "Give all fighters 200 health. Both players summon a cow, and shuffle a cow into their deck.",
			["Type"] = "OnSummon",
			["Power"] = {{"Heal",200},{"Summon","Cow","Ally"},{"Summon","Cow","Opponent"},{"DeckAdd","Cow","Ally"},{"DeckAdd","Cow","Opponent"},
			Target = "All",
		},
		["Bio"] = "Nobody knows where he gets all that brown dairy from...",
	}, 
		
	["Armed Thief"] = {
		["Id"] = 618784497,
		["Name"] = "Armed Thief",
		["Health"] = 200,
		["Power"] = 100,
		["Rarity"] = "Uncommon",
		["AttackEffect"] = "Slash",
		["Color"] = "Green",
		["Cost"] = {["Neutral"] = 2,["Green"] = 1,},
		["Effect"] = {
			Name = "moo",
			Description = "Your opponent loses 1 white icon.",
			["Type"] = "OnSummon",
			["Power"] = {{"Neutral",-1}},
			Target = "Opponent",
		["Bio"] = "The only language I speak, is stealing.",
	}, 
	
}

return dairy