--[[ 

	PLEASE REPORT ALL ISSUES TO UnholySoul#0001 ON DISCORD

	THIS SCRIPTS SUPPORTS: 2019 REBORN, 2019 REBORN VOID, JAKES 2019 (NOT VOID), AND PVP GAME 1

--]]

local RebornScript = Instance.new("ScreenGui")
local Hold = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local FPS_Count = Instance.new("Frame")
local FPS_Button = Instance.new("TextButton")
local Ping_Count = Instance.new("Frame")
local Ping_Button = Instance.new("TextButton")
local Heal_Count = Instance.new("Frame")
local Heal_Button = Instance.new("TextButton")
local Heal_Type = Instance.new("Frame")
local Type_Button = Instance.new("TextButton")
local Speed_Value = Instance.new("Frame")
local SpeedButton = Instance.new("TextButton")
local KeyBind = Instance.new("Frame")
local KeyButton = Instance.new("TextButton")
local KeyBinds = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Holder = Instance.new("Frame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabe4 = Instance.new("TextLabel")
local TextLabel5 = Instance.new("TextLabel")
local TextLabel6 = Instance.new("TextLabel")
local TextLabel7 = Instance.new("TextLabel")
local TextLabel8 = Instance.new("TextLabel")
local TextLabel9 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")

RebornScript.Name = "RebornScript"
RebornScript.Parent = game:GetService("CoreGui")

Hold.Name = "Hold"
Hold.Parent = RebornScript
Hold.AnchorPoint = Vector2.new(0, 0.899999976)
Hold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hold.BackgroundTransparency = 1.000
Hold.Position = UDim2.new(0.202600971, 0, 0, 0)
Hold.Size = UDim2.new(0, 500, 0, 200)

UIGridLayout.Parent = Hold
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 100, 0, 200)

FPS_Count.Name = "FPS_Count"
FPS_Count.Parent = Hold
FPS_Count.AnchorPoint = Vector2.new(0.5, 0.899999976)
FPS_Count.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPS_Count.BackgroundTransparency = 1.000
FPS_Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
FPS_Count.Position = UDim2.new(0.0616016425, 0, 0, 0)
FPS_Count.Size = UDim2.new(0, 100, 0, 20)
FPS_Count.ZIndex = 98

FPS_Button.Name = "FPS_Button"
FPS_Button.Parent = FPS_Count
FPS_Button.AnchorPoint = Vector2.new(0.5, 1)
FPS_Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPS_Button.BackgroundTransparency = 0.400
FPS_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FPS_Button.Position = UDim2.new(0.5, 0, 0.824999988, 0)
FPS_Button.Size = UDim2.new(0, 100, 0, 20)
FPS_Button.ZIndex = 99
FPS_Button.Font = Enum.Font.SourceSansBold
FPS_Button.Text = "FPS: nil"
FPS_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
FPS_Button.TextSize = 14.000

Ping_Count.Name = "Ping_Count"
Ping_Count.Parent = Hold
Ping_Count.AnchorPoint = Vector2.new(0.5, 0.899999976)
Ping_Count.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ping_Count.BackgroundTransparency = 1.000
Ping_Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ping_Count.Position = UDim2.new(0.130047917, 0, 0, 0)
Ping_Count.Size = UDim2.new(0, 100, 0, 20)
Ping_Count.ZIndex = 98

Ping_Button.Name = "Ping_Button"
Ping_Button.Parent = Ping_Count
Ping_Button.AnchorPoint = Vector2.new(0.5, 1)
Ping_Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ping_Button.BackgroundTransparency = 0.400
Ping_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ping_Button.Position = UDim2.new(0.5, 0, 0.824999988, 0)
Ping_Button.Size = UDim2.new(0, 100, 0, 20)
Ping_Button.ZIndex = 99
Ping_Button.Font = Enum.Font.SourceSansBold
Ping_Button.Text = "Ping: nil"
Ping_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Ping_Button.TextSize = 14.000

Heal_Count.Name = "Heal_Count"
Heal_Count.Parent = Hold
Heal_Count.AnchorPoint = Vector2.new(0.5, 0.899999976)
Heal_Count.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Heal_Count.BackgroundTransparency = 1.000
Heal_Count.BorderColor3 = Color3.fromRGB(0, 0, 0)
Heal_Count.Position = UDim2.new(0.198494181, 0, 0, 0)
Heal_Count.Size = UDim2.new(0, 100, 0, 20)
Heal_Count.ZIndex = 98

Heal_Button.Name = "Heal_Button"
Heal_Button.Parent = Heal_Count
Heal_Button.AnchorPoint = Vector2.new(0.5, 1)
Heal_Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Heal_Button.BackgroundTransparency = 0.400
Heal_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Heal_Button.Position = UDim2.new(0.5, 0, 0.824999988, 0)
Heal_Button.Size = UDim2.new(0, 100, 0, 20)
Heal_Button.ZIndex = 99
Heal_Button.Font = Enum.Font.SourceSansBold
Heal_Button.Text = "Heals: 0"
Heal_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Heal_Button.TextSize = 14.000

Heal_Type.Name = "Heal_Type"
Heal_Type.Parent = Hold
Heal_Type.AnchorPoint = Vector2.new(0.5, 0.899999976)
Heal_Type.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Heal_Type.BackgroundTransparency = 1.000
Heal_Type.BorderColor3 = Color3.fromRGB(0, 0, 0)
Heal_Type.Position = UDim2.new(0.266940475, 0, 0, 0)
Heal_Type.Size = UDim2.new(0, 100, 0, 20)
Heal_Type.ZIndex = 98

Type_Button.Name = "Type_Button"
Type_Button.Parent = Heal_Type
Type_Button.AnchorPoint = Vector2.new(0.5, 1)
Type_Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Type_Button.BackgroundTransparency = 0.400
Type_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Type_Button.Position = UDim2.new(0.5, 0, 0.824999988, 0)
Type_Button.Size = UDim2.new(0, 100, 0, 20)
Type_Button.ZIndex = 99
Type_Button.Font = Enum.Font.SourceSansBold
Type_Button.Text = "Type: Blood"
Type_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Type_Button.TextSize = 14.000

Speed_Value.Name = "Speed_Value"
Speed_Value.Parent = Hold
Speed_Value.AnchorPoint = Vector2.new(0.5, 0.899999976)
Speed_Value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Speed_Value.BackgroundTransparency = 1.000
Speed_Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed_Value.Position = UDim2.new(0.335386753, 0, 0, 0)
Speed_Value.Size = UDim2.new(0, 100, 0, 20)
Speed_Value.ZIndex = 98

SpeedButton.Name = "SpeedButton"
SpeedButton.Parent = Speed_Value
SpeedButton.AnchorPoint = Vector2.new(0.5, 1)
SpeedButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpeedButton.BackgroundTransparency = 0.400
SpeedButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedButton.Position = UDim2.new(0.5, 0, 0.824999988, 0)
SpeedButton.Size = UDim2.new(0, 100, 0, 20)
SpeedButton.ZIndex = 99
SpeedButton.Font = Enum.Font.SourceSansBold
SpeedButton.Text = "Speed: 1"
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.TextSize = 14.000

KeyBind.Name = "KeyBind"
KeyBind.Parent = RebornScript
KeyBind.AnchorPoint = Vector2.new(0, 0.899999976)
KeyBind.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeyBind.BackgroundTransparency = 1.000
KeyBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyBind.Position = UDim2.new(0.550388157, 0, 0, 0)
KeyBind.Size = UDim2.new(0, 100, 0, 200)
KeyBind.ZIndex = 98

KeyButton.Name = "KeyButton"
KeyButton.Parent = KeyBind
KeyButton.AnchorPoint = Vector2.new(0.5, 0.899999976)
KeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeyButton.BackgroundTransparency = 0.400
KeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyButton.Position = UDim2.new(0.5, 0, 0.824999988, 0)
KeyButton.Size = UDim2.new(0, 100, 0, 20)
KeyButton.ZIndex = 99
KeyButton.Font = Enum.Font.SourceSansBold
KeyButton.Text = "KEYBINDS"
KeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyButton.TextSize = 14.000

KeyBinds.Name = "KeyBinds"
KeyBinds.Parent = RebornScript
KeyBinds.AnchorPoint = Vector2.new(0.5, 0.5)
KeyBinds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeyBinds.BackgroundTransparency = 0.400
KeyBinds.Position = UDim2.new(0.49999997, 0, 0.5, 0)
KeyBinds.Size = UDim2.new(0, 150, 0, 200)
KeyBinds.Visible = false

Title.Name = "Title"
Title.Parent = KeyBinds
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 150, 0, 20)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "KeyBinds"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000

Holder.Name = "Holder"
Holder.Parent = KeyBinds
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.Position = UDim2.new(-8.87047499e-05, 0, 0.119603887, 0)
Holder.Size = UDim2.new(0, 150, 0, 175)

UIGridLayout_2.Parent = Holder
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIGridLayout_2.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout_2.CellSize = UDim2.new(0, 150, 0, 20)

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = Holder
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1.000
TextLabel1.Size = UDim2.new(0, 200, 0, 50)
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.Text = "AutoEat: Q"
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextSize = 14.000

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Holder
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.BackgroundTransparency = 1.000
TextLabel2.Size = UDim2.new(0, 200, 0, 50)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = "Change Fruit: L Shift + Q"
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextSize = 14.000

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = Holder
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.BackgroundTransparency = 1.000
TextLabel3.Size = UDim2.new(0, 200, 0, 50)
TextLabel3.Font = Enum.Font.SourceSans
TextLabel3.Text = "AutoHeal: R"
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.TextSize = 14.000

TextLabe4.Name = "TextLabe4"
TextLabe4.Parent = Holder
TextLabe4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabe4.BackgroundTransparency = 1.000
TextLabe4.Size = UDim2.new(0, 200, 0, 50)
TextLabe4.Font = Enum.Font.SourceSans
TextLabe4.Text = "Change Speed: E"
TextLabe4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabe4.TextSize = 14.000

TextLabel5.Name = "TextLabel5"
TextLabel5.Parent = Holder
TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.BackgroundTransparency = 1.000
TextLabel5.Size = UDim2.new(0, 200, 0, 50)
TextLabel5.Font = Enum.Font.SourceSans
TextLabel5.Text = "Hidden Speeds: L Shift + E"
TextLabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.TextSize = 14.000

TextLabel6.Name = "TextLabel6"
TextLabel6.Parent = Holder
TextLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel6.BackgroundTransparency = 1.000
TextLabel6.Size = UDim2.new(0, 200, 0, 50)
TextLabel6.Font = Enum.Font.SourceSans
TextLabel6.Text = "TP to Void/Reg: L Shift + T"
TextLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel6.TextSize = 14.000

TextLabel7.Name = "TextLabel7"
TextLabel7.Parent = Holder
TextLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.BackgroundTransparency = 1.000
TextLabel7.Size = UDim2.new(0, 200, 0, 50)
TextLabel7.Font = Enum.Font.SourceSans
TextLabel7.Text = "UnHide All UI: R Shift"
TextLabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.TextSize = 14.000

TextLabel8.Name = "TextLabel8"
TextLabel8.Parent = Holder
TextLabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel8.BackgroundTransparency = 1.000
TextLabel8.Size = UDim2.new(0, 200, 0, 50)
TextLabel8.Font = Enum.Font.SourceSans
TextLabel8.Text = "Hide KeyBind: L Shift + Click"
TextLabel8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel8.TextSize = 14.000

TextLabel9.Name = "TextLabel9"
TextLabel9.Parent = Holder
TextLabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel9.BackgroundTransparency = 1.000
TextLabel9.Size = UDim2.new(0, 200, 0, 50)
TextLabel9.Font = Enum.Font.SourceSans
TextLabel9.Text = "Kick Yourself: L Shift + K"
TextLabel9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel9.TextSize = 14.000

Close.Name = "Close"
Close.Parent = KeyBinds
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 2
Close.Position = UDim2.new(0.877660751, 0, 4.95910645e-05, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000

-- Scripts:

local function UTNFDES_fake_script() -- RebornScript.Handler 
	local script = Instance.new('LocalScript', RebornScript)

	local Hold = script.Parent.Hold
	local CorrectID = nil
	_G.HealPath = nil
	
	local FPS = Hold.FPS_Count
	local Count0 = Hold.Heal_Count
	local Type = Hold.Heal_Type
	local Ping = Hold.Ping_Count
	local Speed0 = Hold.Speed_Value
	
	local FPS_BTN = FPS.FPS_Button
	local Count_BTN = Count0.Heal_Button
	local Type_BTN = Type.Type_Button
	local Ping_BTN = Ping.Ping_Button
	local Speed_BTN = Speed0.SpeedButton
	
	local KeyFrame = script.Parent.KeyBind
	
	local PingStat = game:GetService("Stats").PerformanceStats.Ping
	local UIS = game:GetService("UserInputService")
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local TeleService = game:GetService("TeleportService")
	local WorkSpace = game:GetService("Workspace")
	local RS = game:GetService("RunService")
	
	local PLAYER = game:GetService("Players").LocalPlayer
	
	--[[ GAME CHECKER DONT TOUCH NIGGERS ]]--
	
	task.wait()
	if game.PlaceId == 10758111998 then -- PIES 2019 REBORN
		_G.HealPath = ReplicatedStorage.Events.UseBagltem
		CorrectID = 10767870749
	elseif game.PlaceId == 10767870749 then -- PIES 2019 VOID
		_G.HealPath = ReplicatedStorage.Events.UseBagltem
		CorrectID = 10758111998
	elseif game.PlaceId == 11337066400 then -- PVP GAME 1
		_G.HealPath = ReplicatedStorage.Events.Dx1234
	elseif game.PlaceId == 11397055770 then -- XPr0xP's 2019
		_G.HealPath = ReplicatedStorage.Events.YoMamaLols
		CorrectID = nil
	elseif game.PlaceId == nil then -- XPr0xP's 2019 VOID
		_G.HealPath = ReplicatedStorage.Events.YoMamaLols
		CorrectID = 11397055770
	end
	
	--[[ END GAME CHECKER ]]--
	
	--[[ MAIN SHIT, DON'T TOUCH IF YOUR IQ IS BELOW 165 ]]--
	
	_G.HealingToggle = false
	local AutoHealToggle = false
	local LowHealthToggle = false
	_G.SelectedFruit = "Bloodfruit"
	_G.Speed = 1
	
	local DetailedFlip = false
	
	UIS.InputBegan:Connect(function(key, isTyping)
		
		if isTyping then return end
		
		if key.KeyCode == Enum.KeyCode.R then
			if DetailedFlip == false then
				if AutoHealToggle == false then AutoHealToggle = true print ("lowkey 0") else AutoHealToggle = false end
			else
				if LowHealthToggle == false then LowHealthToggle = true else LowHealthToggle = false end
			end
		end
		if key.KeyCode == Enum.KeyCode.Q then -- FRUIT CHANGER, FEEL FREE TO ADD OR DELETE FRUITS HERE
			if DetailedFlip == true then
				if _G.SelectedFruit == "Bloodfruit" then 
					_G.SelectedFruit = "Bluefruit"
					Type_BTN.Text = "Type: Blue"
				elseif _G.SelectedFruit == "Bluefruit" then 
					_G.SelectedFruit = "Berry" 
					Type_BTN.Text = "Type: Berry"
				elseif _G.SelectedFruit == "Berry" then 
					_G.SelectedFruit = "Bloodfruit"
					Type_BTN.Text = "Type: Blood" 
				end -- END FRUIT CHANGER
			elseif DetailedFlip == false then
				if _G.HealingToggle == false then _G.HealingToggle = true else _G.HealingToggle = false end
			end
		end
		if key.KeyCode == Enum.KeyCode.E then
			if DetailedFlip == true then
				if _G.Speed == 1 or _G.Speed == 2 or _G.Speed == 3 or _G.Speed == 5 then
					_G.Speed = 4
					Speed_BTN.Text = "Speed: 4"
				elseif _G.Speed == 4 then
					_G.Speed = 5
					Speed_BTN.Text = "Speed: 5"
				end
			elseif DetailedFlip == false then
				if _G.Speed == 1  then 
					_G.Speed = 2
					Speed_BTN.Text = "Speed: 2"
				elseif _G.Speed == 2 then 
					_G.Speed = 3 
					Speed_BTN.Text = "Speed: 3"
				elseif _G.Speed == 3 then 
					_G.Speed = 1 
					_G.Speed.Text = "Speed: 1"
				elseif _G.Speed == 4 or _G.Speed == 5 then 
					_G.Speed = 1 
					Speed_BTN.Text = "Speed: 1"
				end
			end
		end
		if key.KeyCode == Enum.KeyCode.T then
			if DetailedFlip == true then
				if game.PlaceId == 11337066400 then return end -- NO VOID FOR PVP GAME 1
				
				if CorrectId == nil then return end
				
				TeleService:Teleport(CorrectID, PLAYER)
			else
				return
			end
		end
		if key.KeyCode == Enum.KeyCode.K then
			if DetailedFlip == false then return end
			
			PLAYER:Kick("Why'd You Do That Dumbass?")
		end
		
		if key.KeyCode == Enum.KeyCode.LeftShift then
			DetailedFlip = true
		end
		if key.KeyCode == Enum.KeyCode.RightShift then
			FPS.Parent = script.Parent Ping.Parent = script.Parent Type.Parent = script.Parent Count0.Parent = script.Parent Speed0.Parent = script.Parent -- You Can Add Indents If You Want
			
			task.wait()
			
			FPS.Parent = Hold Ping.Parent = Hold Type.Parent = Hold Count0.Parent = Hold Speed0.Parent = Hold -- You Can Add Indents If You Want
			Count0.Visible = true Speed0.Visible = true Ping.Visible = true Type.Visible = true FPS.Visible = true -- You Can Add Indents If You Want
			
			KeyFrame.Visible = true
		end
	end)
	
	UIS.InputEnded:Connect(function(key, isTyping)
		
		if isTyping then return end
		
		if key.KeyCode == Enum.KeyCode.LeftShift then
			DetailedFlip = false
		end
		
	end)
	
	--[[ HANDLING BUTTON PRESSES ]]--
	
	FPS_BTN.MouseButton1Down:Connect(function() FPS.Parent = script.Parent FPS.Visible = false end)
	Count_BTN.MouseButton1Down:Connect(function() Count0.Parent = script.Parent Count0.Visible = false end)
	Type_BTN.MouseButton1Down:Connect(function() Type.Parent = script.Parent Type.Visible = false end)
	Ping_BTN.MouseButton1Down:Connect(function() Ping.Parent = script.Parent Ping.Visible = false end)
	Speed_BTN.MouseButton1Down:Connect(function() Speed0.Parent = script.Parent Speed0.Visible = false end)
	
	KeyFrame.KeyButton.MouseButton1Down:Connect(function()
		if DetailedFlip == true then
			KeyFrame.Visible = false
		else
			script.Parent.KeyBinds.Visible = true
		end
	end)
	
	_G.ALMIGHTY_COUNTER = 0
	
	function Count (Number)
		_G.ALMIGHTY_COUNTER = _G.ALMIGHTY_COUNTER + Number
		Count_BTN.Text = "Heals: ".._G.ALMIGHTY_COUNTER
	end
	
	function Heal (Value)
		if Value == 1 then
			if _G.HealingToggle == false then return end
			_G.HealPath:FireServer(_G.SelectedFruit)
			Count(Value)
		elseif Value == 2 then
			if _G.HealingToggle == false then return end
			_G.HealPath:FireServer(_G.SelectedFruit)
			_G.HealPath:FireServer(_G.SelectedFruit)
			Count(Value)
		end
	end
	
	local FPS_Count = 0
	RS.Heartbeat:Connect(function()
		
		local AVATAR = WorkSpace:WaitForChild(PLAYER.Name)
		
		FPS_Count = FPS_Count + 1
			if _G.Speed == 3 then
				Heal(1)
			elseif _G.Speed == 4 then
				Heal(2)
			elseif _G.Speed == 5 then
				Heal(2)
		end
		
		if AutoHealToggle == true then
			print("lowkey 1")
			if AVATAR.Health < 100 then
				print("lowkey 2")
				Heal(1)
			end
		end
		
		if LowHealthToggle == true then
			if AVATAR.Health < 40 then
				Heal(2)
			end
		end
		
	end)
	
	while true do
		FPS_BTN.Text = "FPS: "..FPS_Count
		FPS_Count = 0
		Ping_BTN.Text = "Ping: "..math.floor(tonumber(PingStat:GetValue()))
		
		task.wait(1)
	end
end
coroutine.wrap(UTNFDES_fake_script)()
local function SVWZ_fake_script() -- RebornScript.SlowHandler 
	local script = Instance.new('LocalScript', RebornScript)

	local Count_BTN = script.Parent.Hold.Heal_Count.Heal_Button
	
	function Count (Number)
		_G.ALMIGHTY_COUNTER = _G.ALMIGHTY_COUNTER + Number
		Count_BTN.Text = "Heals: ".._G.ALMIGHTY_COUNTER
	end
	
	while true do
		if _G.HealingToggle == true then
			if _G.Speed == 1 then
				_G.HealPath:FireServer(_G.SelectedFruit)
				Count(1)
			elseif _G.Speed == 2 then
				_G.HealPath:FireServer(_G.SelectedFruit)
				_G.HealPath:FireServer(_G.SelectedFruit)
				Count(2)
			elseif _G.Speed == 5 then
				_G.HealPath:FireServer(_G.SelectedFruit)
				Count(1)
			end
		end
		
		task.wait(0.03)
	end
end
coroutine.wrap(SVWZ_fake_script)()
local function QQQQFT_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function() script.Parent.Parent.Visible = false end)
end
coroutine.wrap(QQQQFT_fake_script)()
