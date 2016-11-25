local participants = {
	["Deep Sea Diver"] = {
		["Id"] = 543830736,
		["Name"] = "Deep Sea Diver",
		["Health"] = 650,
		["Power"] = 550,
		["SwapImmune"] = true,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Blue"] = 3,["Neutral"] = 1},
		["Effect"] = {
			Name = "Massive Stamina",
			Description = "This card stats can't be swapped, add a random uncommon fighter each turn.",
			["Type"] = "OnEnd",
			["Power"] = {{{"RandomAdd","Uncommon"}}},
			Target = "Ally",
		},
		["Bio"] = "Yes, diving 100 meters without a scuba gear is totally fine.",
	},
	
	["Dicey Dave"] = {
		["Id"] = 543830125,
		["Name"] = "Dicey Dave",
		["Health"] = 800,
		["Power"] = 400,
		["SwapImmune"] = true,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Yellow", 
		["Cost"] = {["Yellow"] = 4,["Neutral"] = 1},
		["Effect"] = {
			Name = "Gamble till you drop",
			Description = "This card stats can't be swapped, both player lose 500 hp each turn.",
			["Type"] = "OnEnd",
			["Power"] = {{"Inflict",500}},
			Target = "All",
		},
		["Bio"] = "You up for a gamble?.",
	},
}

return  participants