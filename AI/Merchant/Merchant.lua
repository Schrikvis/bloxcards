local bot = {}
setmetatable(bot, {__index = require(script.Parent.Bot)})

bot.Rewards = {
	Cards = {}; --{["Medic Kit"] = 1};
	RandomCards = {["Necromantic Acolyte"] = 1, ["Acolyte of the Rift"] = 1, ["Infernal Acolyte"] = 1, ["Fried Acolyte"] = 1,["Lunar Acolyte"] = 1,}; --Opinions on giving the player the tokens in the deck?
	BloxBux = 1; --To be changed as we learn the deck's power
	Charms = {0,0};
	Sleeves = {};
}

bot.Info = {
	Name = "The Merchant";
	Id = 140238954;
	Rewards = bot.Rewards;
	ChallengeMessage = require(script.Dialogue);
	Rank = "Cunning Cheater";
}

bot.Deck = {
	-- Played 2nd last, but played first priority on turn 1/2
	["Sylrath"] = 3;
	["Spooky Caverns"] = 3;
	["Lady Rednight"] = 3;	
	["AsrielMemer"] = 1;
	
	-- Bee Cards (CARD SET A)	
	["BrokenToken"] = 1;	
	["Titano's Fist of Agony"] = 1;
	["Titano's Fist of Soul"] = 1;
	["Fractal"] = 1;
	
	
	-- Support Cards (CARD SET B)
	["Aer Draco"] = 3;
	["Glaurung"] = 1;
	["Smaug"] = 3;
	["Master Acolyte"] = 3;
		
	-- Play Last And only if one of Card Set A is in play
	-- I reccomend adding Bread Factory x4 if you want more of these played
	["Nova"] = 3;
	["The Forgotten One"] = 1;
	["Eclipse, Werewolf Colossus"] = 1;
	["InceptionToken"] = 1;
	["Monstrum Minotauris"] = 1;
	["Monstrum Zombie King"] = 1;
	["Monstrum Freezer"] = 1;
	["Shedletsky, the Fried One"] = 1;
	["Commander of Chaos"] = 1;
	
}

bot.Data = {
	--money,back,allcards,{deck,deck,deck},win,loss,{back},currentdeck,{lucky,lucky}}
	500,
	"Illuminatus",
	bot.Deck,
	{bot.Deck,{},{}},
	4195,3276,
	{"Illuminatus"},
	1,{0,0}
}


function bot:TargetGeneric(card, effect)
	local myfield, hisfield = self.myfield, self.hisfield
	local cardpool
	if self.CountTable(myfield) > 0 then
		local myidfield = self.GetIds(myfield)
		if effect.Power == "Heal" then
			local best = {num = 0, id = 0}
			for i,targetId in pairs(myidfield) do
				if myfield[targetId].Power >= best.num then
					best = {num = myfield[targetId].Power, id = targetId} 
				end
			end
			return best.id
		end
		
		if effect.Power == "Strengthen" then
			local best = {num = 0, id = 0}
			for i,targetId in pairs(myidfield) do
				if myfield[targetId].Health >= best.num then
					best = {num = myfield[targetId].Health, id = targetId} 
				end
			end
			return best.id
		end
	end
	if effect.Power~="Strengthen" and effect.Power~="Heal" and self.CountTable(hisfield) > 0 then
		local hisidfield = self.GetIds(hisfield) -- all this used to be myfield[targetId]
		local best = {num = 0, id = 0}
		for i,targetId in pairs(hisidfield) do
			if hisfield[targetId].Power >= best.num then 
				best = {num = hisfield[targetId].Power, id = targetId}
			end
		end
		return best.id
	end
	if not cardpool then
		cardpool = myfield
	end
	local targetId = nil
	for id,_ in pairs(cardpool) do
		targetId = id
		break
	end
	return targetId
end

--return bot
	
local GetCardIdFromName = bot.GetCardIdFromName
	
function bot:SingleTarget(card, effect)
	local targetId
	if self["Target"..card.LibraryIndex] then
		targetId = self["Target"..card.LibraryIndex](self,card,effect)
	else
		targetId = self:TargetGeneric(card, effect)
	end
	self:InvokeServer("SetTarget", self.battleId, targetId)
end

	
local SetA = {
	"Wolfbitten Noob", "Wolven Blitz", "Eye Spy", "BrokenToken", "Titano's Fist of Soul", "Titano's Fist of Agony", "Fractal", "Forbidden Power", "Snyfort"
}
local SetB = {
	"Master Acolyte", "Sorry!", "Aer Draco", "Glaurung", "Smaug"   
}
local TurnOne = {
	"Sylrath", "Spooky Caverns", "Lady Rednight", "AsrielMemer", "Pumpkin Bomb", "Beam Sword" 
}
local Action = {
	"Nova", "The Forgotten One", "Monstrum Minotauris", "Monstrum Zombie King", "Monstrum Freezer", "Commander of Chaos", "Eclipse, Werewolf Colossus", "Shedletsky, the Fried One", "InceptionToken", "Fallen Guardian"
}
bot.turnOne = true -- don't mix up with TurnOne (capital T)
function bot:YourTurn()
	self:FireServer("ReadyToStartTurn", self.battleId)
	wait(.5)
	--local copyhand = self.CopyTable(self.myhand)
	--local copyfield = self.CopyTable(self.myfield)	
	if self.turnOne then -- First we check if its turn one or not
		for _,card in pairs(TurnOne) do -- Play all cards in the turn1 list (if existant)
			self:PlayAllCards(card)
		end
	end
	
	
	for _,card in pairs(SetA) do -- Play all police cards (in order of left > right on the table)
		self:PlayAllCards(card)
	end
	
	
	local setACard = 0
	for _,card in pairs(SetB) do -- Play all cards that benefit from action-casts
		self:PlayAllCards(card)
		setACard = setACard + self.CardsInHolder(self.myfield, card) -- Count how many you have on field
	end
	
	if setACard > 2 then -- More than two cars that benefits from playing actions?
		for _,card in pairs(Action) do -- Play actions!
			self:PlayAllCards(card)
		end
	end
	
	
	if not self.turnOne then -- Nothing else to do? Spare icons?
		for _,card in pairs(TurnOne) do -- Play your random filler opening cards!
			self:PlayAllCards(card)
		end
	else -- Still turn one?
		self.turnOne = nil -- Compose turnOne variable!!
	end
	self:AttackMathematically()
	if self.CountTable(self.hisfield) == 0 then
		self:AttackFace()
--		else
--			AttackMathematically()
	end
	self:FireServer("EndTurn", self.battleId)
end

return bot
