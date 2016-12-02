----------------------------------------------------------------------
-- USAGE:
-- put me in a modulescript named "CardLibrary" inside of
-- game.ReplicatedStorage
-- put any subliraries you want to test in a modulescript
-- inside of me, they can be named whatever
-- enter "require(game.ReplicatedStorage.CardLibrary)" 
-- in the console
-- ~Vis
----------------------------------------------------------------------

local cardlibrary = {}
local altcardlibrary = {}

local pairs = pairs
local substring = string.sub
local cardcount = 0
local assert = function(...) assert(...) end
local c3n = Color3.new
local clr = {Blue = c3n(0.25,0.25,1), Red = c3n(1,0.25,0.25), Green = c3n(0.25,1,0.25), Yellow = c3n(1,1,0.25), Neutral = c3n(1,1,1)}
local function TestCard(library, id, card)
	assert(card.Name, id.." has no name.")
	assert(card.Bio, id.." has no bio.")
	assert(type(card.Id) == 'number', id.." id malformed.")
	assert(card.Rarity, id.." has no rarity.")
	assert(card.Power and card.Health and card.Color, id.." has no health or power or color.")
	assert(card.AttackEffect or card.Archetype == "Terrain" or (card.Health == 0 and card.Power == 0), id.." has no attack effect animation.")
	assert(card.Color, id.." has no color.")
	assert(clr[card.Color], id.." has no real color.")
	assert(card.Cost, id.." has no cost.")
	for color,amount in pairs(card.Cost) do
		assert(clr[color], id.." has an unreal color cost.")
		assert(type(amount) == 'number', id.." has a non-number cost.")
	end
	if card.Effect then
		assert(card.Effect.Name and card.Effect.Description and card.Effect.Type and card.Effect.Power and card.Effect.Target, id.." has an incomplete card effect.")
		assert(substring(card.Effect.Type, 1, 2) == "On" or card.Effect.Type == "Field", id.." has a nonsensical card effect trigger.")
	end
	if card.Original then
		assert(library[card.Original], id.." has a non-existant Original card.")
	end
	if card.AltCards then
		for name,altcard in pairs(card.AltCards) do
			setmetatable(altcard, {__index = card})
			altcard.AltCards = false
			altcard.Original = id
			if altcard.Effect then
				setmetatable(altcard.Effect, {__index = card.Effect})
			end
			altcardlibrary[name] = altcard
		end
	end
	return true
end

local function TestPartLibrary(partlibrary, partlib, parentlib)
	local parentlib = parentlib or partlib
	for index,card in pairs(partlib) do
		local success, message = pcall(TestCard, parentlib, index, card)
		if success then
			cardlibrary[index] = card
			cardcount = cardcount + 1
		else
			warn(partlibrary.Name, message)
		end
	end
end

for _,partlibrary in pairs(script:GetChildren()) do
	local partlib = require(partlibrary)
	TestPartLibrary(partlibrary, partlib)
end

TestPartLibrary({Name = "AltCards"}, altcardlibrary, cardlibrary)

print(cardcount)

return cardlibrary
