----------------------------------------------------------------------
-- USAGE:
-- put my contents into a localscript that lives in
-- game.StarterPlayer.PlayerScripts
-- set up the cardlibrary as documented in CardLibrary.lua
-- press play
-- you should see a list of cards you can scroll through,
-- ordered by their asset id; newest ids first
-- I hope this helps you check that cards have correct asset ids
-- ~Vis
----------------------------------------------------------------------

local textsize = 24	-- the size of the text
local cardsize = Vector2.new(470, 750) / 4 -- the size of the cards

local pairs = pairs
local table = table
local cardlib = require(game.ReplicatedStorage.CardLibrary)

local sgui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local scrolly = Instance.new("ScrollingFrame")
scrolly.Size = UDim2.new(1, -4, 1, -4)
scrolly.Position = UDim2.new(0, 2, 0, 2)
scrolly.BackgroundTransparency = 0.5
scrolly.BackgroundColor3 = Color3.new(0, 0, 0)
scrolly.BorderSizePixel = 0
scrolly.Parent = sgui

local basecard = Instance.new("ImageLabel")
basecard.Size = UDim2.new(0, cardsize.x, 0, cardsize.y) --local cardsize = v2n(470, 750)
basecard.BackgroundTransparency = 1

local basename = Instance.new("TextLabel")
basename.Size = UDim2.new(1, 0, 0, textsize)
basename.Font = "SourceSansBold"
basename.Position = UDim2.new(0, 0, 1, 0)
basename.TextScaled = true
basename.BackgroundTransparency = 1
basename.TextColor3 = Color3.new(1, 1, 1)
basename.Name = "Title"
basename.Parent = basecard

local ids = {}
local names = {}
for index,card in pairs(cardlib) do
	table.insert(ids, card.Id)
	names[card.Id] = index
end
table.sort(ids)

local rowsize = math.floor((scrolly.AbsoluteSize.X - (2*scrolly.ScrollBarThickness)) / cardsize.x)
local yymargin = 12
local xx = 0
local yy = 0
for ii = #ids,1,-1 do
	local id = ids[ii]
	local card = basecard:Clone()
	card.Title.Text = names[id]
	card.Position = UDim2.new((1/(rowsize-1))*xx, 0, 0, (cardsize.y + textsize + yymargin) * yy)
	card.Image = "rbxassetid://"..id
	card.Name = names[id]
	card.Parent = scrolly
	xx = xx + 1
	if xx == rowsize then
		xx = 0
		yy = yy + 1
	end
end

scrolly.CanvasSize = UDim2.new(0, 0, 0, (cardsize.y + textsize + yymargin) * yy)
