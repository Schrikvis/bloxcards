local codes = {
	{
		Obfuscated = ""; -- generate these via the chat command !obfuscatecode <CodePlayersEnter>
		Rewards = {      -- to get your code back, use !deobfuscatecode <Obfuscated>
			Cards = {}; -- {["Medic Kit"] = 1};
			RandomCards = {}; -- {{"Medic Kit" = 1, ["Froot Ninja"] = 1}, 2}; ie, 50/50 chance for either card, 2 cards are given
			Packs = {}; -- {"Exine" = 5};
			BloxBux = 0;
			Charms = {0,0}; -- rabbit, clover
			Sleeves = {}; -- {"Basic"}
			Ranks = {}; -- {"DanTDM Superfan"}
			BestBefore = 0; -- tick() + (3600*hours) + (86400*days) + (604800*weeks)
		}
	};
	

}

local offers = {
	Example = { -- where Example is ideally something descriptive
		Name = ""; -- juicy
		Tagline = ""; -- displayed, "A tagline should be about this length." 
		Image = "rbxassetid://"; -- displayed, aspect ratio is 4:1
		Price = {
			Type = "BloxBux"; --"Robux"; 
			Amount = 0; -- robux amounts: 10, 50, 100, 150, 250
		};
		Cards = {}; -- {["Medic Kit"] = 1};
		RandomCards = {}; -- {{"Medic Kit" = 1, ["Froot Ninja"] = 1}, 2}; ie, 50/50 chance for either card, 2 cards are given
		Packs = {}; -- {"Exine" = 5};
		BloxBux = 0;
		Charms = {0,0}; -- rabbit, clover
		Sleeves = {}; -- {"Basic"}
		Ranks = {}; -- {"DanTDM Superfan"}
		BestBefore = 0; -- tick() + (3600*hours) + (86400*days) + (604800*weeks)
	};
}

return {codes = codes; offers = offers;}
