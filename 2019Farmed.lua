--[[
KEYBINDS ARE AS FOLLOWS

Q --> Starts Placing Boxes
E --> Changes Plantbox Layer
F1 --> Starts AutoFarm
F3 --> Changes Fruit

[ --> Plants Fruit
] --> Harvests Fruit

]]--
if key.KeyCode == Enum.KeyCode.Q then
		if PlaceToggle == false then PlaceToggle = true else PlaceToggle = false end
	elseif key.KeyCode == Enum.KeyCode.F1 then 
		if AutoToggle == false then AutoToggle = true else AutoToggle = false end
	elseif key.KeyCode == Enum.KeyCode.LeftBracket then
		PlantCrop()
	elseif key.KeyCode == Enum.KeyCode.RightBracket then
		HarvestCrop()
	elseif key.KeyCode == Enum.KeyCode.E then
		if Layer == 1 then Layer = 2 variable2 = -4.0 elseif Layer == 2 then Layer = 3 variable2 = -3.5 elseif Layer == 3 then Layer = 4 variable2 = -3.0 elseif Layer == 4 then Layer = 1 variable2 = 4.5 end
	elseif key.KeyCode == Enum.KeyCode.F3 then
		if CurrentFruit == "Bloodfruit" then CurrentFruit = "Bluefruit" elseif CurrentFruit == "Bluefruit" then CurrentFruit = "Berry" elseif CurrentFruit == "Berry" then CurrentFruit = "Apple" elseif CurrentFruit == "Apple" then CurrentFruit = "Lemon" elseif CurrentFruit == "Lemon" then CurrentFruit = "Bloodfruit" end
	end

if game:GetService("Players").LocalPlayer.Name ~= "HallowsDrains"then
	print("Hallow's AutoFarm Script Initialized At "..os.time())
end

--[[ BOXES COUNTER LABEL ]]--

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.500
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0663928837, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 120, 0, 20)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Boxes: 0"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000
TextLabel.ZIndex = 99

--[[ BOXES COUNTER LABEL END ]]--

local UIS = game:GetService("UserInputService")
local CropDelay = nil
local CropDelay2 = nil

local PATH = game:GetService("ReplicatedStorage").Events.InteractStructure
local PATH2 = game:GetService("ReplicatedStorage").Events.PlaceStructure
local PATH3 = game:GetService("ReplicatedStorage").Events.Pickup

local HarvestDelay = 15

local CropTimes = {
	Bloodfruit = {
		GrowDelay = 60,
		GrowDelay2 = 10
	},
	Bluefruit = {
		GrowDelay = 35
	},
	Berry = {
		GrowDelay = 50
	},
	Apple = {
		GrowDelay = 60,
		GrowDelay2 = 35
	},
	Lemon = {
		GrowDelay = 60,
		GrowDelay2 = 35
	}
}

local CurrentFruit = "Bloodfruit"

local Layer = 1
local PlaceToggle = false
local PlantToggle = false
local HarvestToggle = false
local AutoToggle = false

local variable2 = -4.5

UIS.InputBegan:Connect(function(key, isTyping)
	if isTyping then return end
	
	if key.KeyCode == Enum.KeyCode.Q then
		if PlaceToggle == false then PlaceToggle = true else PlaceToggle = false end
	elseif key.KeyCode == Enum.KeyCode.F1 then 
		if AutoToggle == false then AutoToggle = true else AutoToggle = false end
	elseif key.KeyCode == Enum.KeyCode.LeftBracket then
		PlantCrop()
	elseif key.KeyCode == Enum.KeyCode.RightBracket then
		HarvestCrop()
	elseif key.KeyCode == Enum.KeyCode.E then
		if Layer == 1 then Layer = 2 variable2 = -4.0 elseif Layer == 2 then Layer = 3 variable2 = -3.5 elseif Layer == 3 then Layer = 4 variable2 = -3.0 elseif Layer == 4 then Layer = 1 variable2 = 4.5 end
	elseif key.KeyCode == Enum.KeyCode.F3 then
		if CurrentFruit == "Bloodfruit" then CurrentFruit = "Bluefruit" elseif CurrentFruit == "Bluefruit" then CurrentFruit = "Berry" elseif CurrentFruit == "Berry" then CurrentFruit = "Apple" elseif CurrentFruit == "Apple" then CurrentFruit = "Lemon" elseif CurrentFruit == "Lemon" then CurrentFruit = "Bloodfruit" end
	end
end)

function Counter ()
	local plantboxes = 0
	for _,v in next, game.Workspace:GetDescendants() do
		if v.Name == "Plant Box" then -- and (LocalPlayer.Character.Head.Position - v.PrimaryPart.Position).magnitude < 75
			plantboxes = plantboxes + 1
		end
	end
	TextLabel.Text = "Boxes: "..tostring(plantboxes)
end

function PlaceBoxes ()
	if PlaceToggle == false then return end
	
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local RootPart = LocalPlayer.Character.HumanoidRootPart
	local cframe = RootPart.CFrame

	local variable = -6
	for i = 1,6,1 do
		variable = variable - .5
		PATH2:FireServer("Plant Box", cframe * CFrame.new(-0, variable2, variable), 0)
		wait(0.01)
	end
end

function PlantCrop ()
	
	local Player = game:GetService("Players").LocalPlayer
	for _, v in pairs(workspace.Deployables:GetChildren()) do
		if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 500 then
			PATH:FireServer(v, CurrentFruit)
		end
	end
end

function HarvestCrop ()
	local HarvestFruit = nil
	
	if CurrentFruit == "Apple" or CurrentFruit == "Lemon" then
		HarvestFruit = CurrentFruit .. " Tree"
	else
		HarvestFruit = CurrentFruit .. " Bush"
	end
	
	local Player = game:GetService("Players").LocalPlayer
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == HarvestFruit and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
			PATH3:FireServer(v)
		end
	end
end

function AutoFarm ()
	if AutoToggle == false then return end
	
	local FIND = nil
	for _, v in pairs (CropTimes) do
		if tostring(v) == CurrentFruit then
			CropDelay = v.GrowDelay
			FIND = v.GrowDelay2
			if FIND then
				CropDelay2 = v.GrowDelay2
			end
		end
	end
	
	-- End of Checker
	
	local PlantedFruit = CurrentFruit
	PlantCrop()
	task.wait(CropDelay)
	
	if FIND == CropTimes:FindFirstChild(CurrentFruit).GrowDelay2 then
		task.wait(CropDelay2)
	end
	
	if CurrentFruit ~= PlantedFruit then
		CurrentFruit = PlantedFruit
	end
	task.wait()
	HarvestCrop()
	task.wait(HarvestDelay)
end


while true do PlaceBoxes() AutoFarm() Counter() task.wait() end
