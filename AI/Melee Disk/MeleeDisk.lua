local bot = {}
setmetatable(bot, {__index = require(script.Parent.Bot)})

bot.Rewards = {
	Cards = {["Assist Trophy"] = 1}; --{["Medic Kit"] = 1};
	RandomCards = {};
	BloxBux = 50;
	Charms = {0,0};
	Sleeves = {};
}

bot.Info = {
	Name = "MeleeDisk";
	Id = 140238954;
	Rewards = bot.Rewards;
	ChallengeMessage = require(script.Dialogue);
	Rank = "Final Destination";
}

bot.Deck = {
	-- Blue
	["Sylrath"] = 3;
	["Froot Ninja"] = 3;
	["Sharksie"] = 1;
	["Coordinated Attack"] = 1;
	["NobleDragon"] = 1;
	
	-- White
	["Wingman8"] = 2; 
	["Liz"] = 2; 
	["FancyFame"] = 2; 
	["RachelDubs"] = 1; 
	["Grand Pirate King"] = 2; 
	["ASeal"] = 2;  
	
	-- ActionTrigger
	["Lebron"] = 4;
	
	-- Actions
	["Stud"] = 3;
	["Eye Spy"] = 2;
	["Sylrath"] = 2;
	["Life Potion"] = 4;
	["Assist Trophy"] = 2;
	["Divine Favor"] = 2;
	["Vitality Potion"] = 1; 
	
	-- Master Hand
	["MasterHand"] = 1;
}

bot.Data = {
	--money,back,allcards,{deck,deck,deck},win,loss,{back},currentdeck,{lucky,lucky}}
	500,
	"Basic",
	bot.Deck,
	{bot.Deck,{},{}},
	0,0,
	{"Basic"},
	1,{0,0}
}

local CountTable = bot.CountTable
local CopyTable = bot.CopyTable
local GetLeastLockedCard = bot.GetLeastLockedCard
local GetCardIdFromName = bot.GetCardIdFromName
local GetIds = bot.GetIds
local EffectCard = bot.EffectCard
local CardsInHolder = bot.CardsInHolder

local SetA = {
	"MasterHand", "Lebron", "Sharksie", "Coordinated Attack", "Sylrath", "Froot Ninja",
}
local SetB = {
	"MasterHand", "Wingman8", "Liz", "FancyFame", "RachelDubs", "Grand Pirate King", "ASeal"
}
local Action = {
	"MasterHand", "Stud", "Bloated", "Life Potion", "Assist Trophy", "Vitality Potion"
}

function bot:YourTurn()
	self:FireServer("ReadyToStartTurn", self.battleId)
	wait(.5)
	--local copyhand = CopyTable(self.myhand)
	--local copyfield = CopyTable(self.myfield)	
	self:PlayAllCards("MasterHand")
	for _,card in pairs(SetA) do -- Play all cards in the turn1 list (if existant)
		self:PlayAllCards(card)
	end
	
	for _,card in pairs(SetB) do 
		self:PlayAllCards(card)
	end
	
	for i=1,2 do
		self:PlayAllCards("Frozen Fish")
	end
	
	for _,card in pairs(Action) do 
		self:PlayAllCards(card)
	end
	
	for i=1,2 do
		self:PlayAllCards("Infinity Cannon")
	end
	
	local avgATK = 0
	local hisFieldT = GetIds(self.hisfield)
	for _,cardId in pairs(hisFieldT) do
		local hiscard = self.hisfield[cardId]
		avgATK = avgATK + hiscard.Power
	end 
	
	local avgATK = avgATK/#hisFieldT
	if avgATK > 300 then
		self:PlayAllCards("Divine Favor")
	end
	
	self:AttackMathematically()
	if CountTable(self.hisfield) == 0 then
		self:AttackFace()
	end
	self:FireServer("EndTurn", self.battleId)
	if true then return end
end

function bot:SingleTarget(...)
	for ii,vv in pairs {...} do
		print(tostring(vv))
	end
	self:InvokeServer("SetTarget", self.battleId, self:TargetLoad().Generic(...))
end

return bot