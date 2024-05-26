-- skibidi hub v0.1
-- created by rad0stin

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()

local Window = OrionLib:MakeWindow({Name = "skibidi hub v0.1", HidePremium = false, SaveConfig = true, ConfigFolder = "skibidi_hub"})

-- Player Tab

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = PlayerTab:AddSection({
	Name = "Movement"
})

PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "stud(s)/sec",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local Section = PlayerTab:AddSection({
	Name = "Misc."
})

PlayerTab:AddButton({
	Name = "Reset Character",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})

-- Scripts Tab

local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ScriptsTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
  	end    
})

-- Objects Tab

local ObjectsTab = Window:MakeTab({
	Name = "Objects",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ObjectsTab:AddButton({
	Name = "Delete Doors",
	Callback = function()
        game.Workspace.Doors:Destroy()
  	end    
})