local bot = {}
setmetatable(bot, {__index = require(script.Parent.Bot)})
-- Model: https://www.roblox.com/catalog/1469557200

bot.Rewards = {
	Cards = {["Darken the Skies"] = 1}; --{["Medic Kit"] = 1};
	RandomCards = {};
	BloxBux = 0; -- Will be changed once we figure out the deck's power
	Charms = {0,0};
	Sleeves = {};
}

bot.Info = {
	Name = "The Matriarch";
	Id = 140238954;
	Rewards = bot.Rewards;
	ChallengeMessage = require(script.Dialogue);
	Rank = "Bird Savant";
}

bot.Deck = {
	-- Birds!
	["Crow of Eternal Torment"] = 9;
	["Bird of Eternal Paradise"] = 9;
	["Parrot of Eternal Dominion"] = 9;	
	["Eternal Tweety"] = 9;
	
	-- Support!	
	["Divine Favor"] = 2;	
	["Blacken the Skies"] = 1;
	["Bird Colossus"] = 1;
}

bot.Data = {
	--money,back,allcards,{deck,deck,deck},win,loss,{back},currentdeck,{lucky,lucky}}
	500,
	"Basic",
	bot.Deck,
	{bot.Deck,{},{}},
	1685,78,
	{"Zanzel"},
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
	"Crow of Eternal Torment", "Bird of Eternal Paradise", "Parrot of Eternal Dominion", "Bird Colossus", "Darken the Skies", "Eternal Tweety"
}
local SetB = {
	"Crow of Eternal Torment", "Bird of Eternal Paradise", "Parrot of Eternal Dominion", "Bird Colossus", "Darken the Skies", "Eternal Tweety",
}
local TurnOne = {
	"Crow of Eternal Torment", "Bird of Eternal Paradise", "Parrot of Eternal Dominion", "Bird Colossus", "Darken the Skies", "Eternal Tweety",
}
local Action = {
	"Crow of Eternal Torment", "Bird of Eternal Paradise", "Parrot of Eternal Dominion", "Bird Colossus", "Darken the Skies", "Eternal Tweety",
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
