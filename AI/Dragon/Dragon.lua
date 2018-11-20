local bot = {}
setmetatable(bot, {__index = require(script.Parent.Bot)})

bot.Rewards = {
	Cards = {}; --{["Medic Kit"] = 1};
	RandomCards = {["Lunar Warrior"] = 1,["Lunar Acolyte"] = 1, ["Necromantic Acolyte"] = 1, ["Fried Acolyte"] =1, ["Infernal Acolyte"] = 1, ["Acolyte of the Rift"] = 1};
	BloxBux = 50;
	Charms = {0,0};
	Sleeves = {};
}

bot.Info = {
	Name = "Dragon";
	Id = 140238954;
	Rewards = bot.Rewards;
	ChallengeMessage = require(script.Dialogue);
	Rank = "Korean Diety";
}

bot.Deck = {
	-- Played 2nd last, but played first priority on turn 1/2 -- 15
	["Lunar Warrior"] = 3;
	["Clockwork"] = 1;
	["Sylrath"] = 2;
	["Titano's Cavern"] = 3;
	
	-- Set Cards (CARD SET A)	-- 11
	["Lady RedNight"] = 2;
	["ShyLightness"] = 3;
	["Rad"] = 3;
	["Lord of Auctions"] = 1;
	["JackofMostTrades"] = 1;
	["agodlypancake"] = 1;
	["MiloCortez"] = 2;
	["Ripull"] = 1;
	["Infernal Acolyte"] = 3;
	["Fried Acolyte"] = 3;
	["Necromantic Acolyte"] = 2;
	["Acolyte of the Rift"] = 1;
	
	-- Play Last And only if one of Card Set A is in play
	["Nova"] = 3;
	["Greygnarl"] = 1;
	["Dragon Horde"] = 3;

}

bot.Data = {
	--money,back,allcards,{deck,deck,deck},win,loss,{back},currentdeck,{lucky,lucky}}
	500,
	"Basic",
	bot.Deck,
	{bot.Deck,{},{}},
	0,0.5,
	{"Sleevefinity"},
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
	"Ripull", "Lady RedNight", "ShyLightness", "agodlypancake", "MiloCortez"
}
local SetB = {
	"Fried Acolyte", "Infernal Acolyte", "Necromantic Acolyte", "Acolyte of the Rift", "Rad", "Lord of Auctions", "JackofMostTrades"
}
local TurnOne = {
	"Titano's Cavern", "Lunar Warrior", "Lunar Acolyte", "Sylrath", "Clockwork"
}
local Action = {
	"Nova", "Dragon Horde", "Greygnarl"
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
