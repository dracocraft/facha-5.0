-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MAINGUI = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local NOCLIP = Instance.new("TextButton")
local BTOOLS = Instance.new("TextButton")
local CLICKTP = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MAINGUI.Name = "MAINGUI"
MAINGUI.Parent = ScreenGui
MAINGUI.BackgroundColor3 = Color3.fromRGB(39, 255, 64)
MAINGUI.Position = UDim2.new(0, 0, 0.656441689, 0)
MAINGUI.Size = UDim2.new(0, 550, 0, 280)

TextLabel.Parent = MAINGUI
TextLabel.BackgroundColor3 = Color3.fromRGB(116, 23, 255)
TextLabel.Position = UDim2.new(0.318181813, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Facha 5.0"
TextLabel.TextColor3 = Color3.fromRGB(26, 255, 210)
TextLabel.TextSize = 39.000

NOCLIP.Name = "NOCLIP"
NOCLIP.Parent = MAINGUI
NOCLIP.BackgroundColor3 = Color3.fromRGB(39, 255, 64)
NOCLIP.Position = UDim2.new(0, 0, 0.253571421, 0)
NOCLIP.Size = UDim2.new(0, 200, 0, 50)
NOCLIP.Font = Enum.Font.SourceSans
NOCLIP.Text = "NOCLIP"
NOCLIP.TextColor3 = Color3.fromRGB(255, 0, 4)
NOCLIP.TextSize = 31.000

BTOOLS.Name = "BTOOLS"
BTOOLS.Parent = MAINGUI
BTOOLS.BackgroundColor3 = Color3.fromRGB(39, 255, 64)
BTOOLS.Position = UDim2.new(-0.00181818008, 0, 0.732142866, 0)
BTOOLS.Size = UDim2.new(0, 200, 0, 46)
BTOOLS.Font = Enum.Font.SourceSans
BTOOLS.Text = "BTOOLS"
BTOOLS.TextColor3 = Color3.fromRGB(255, 0, 4)
BTOOLS.TextSize = 31.000

CLICKTP.Name = "CLICKTP"
CLICKTP.Parent = MAINGUI
CLICKTP.BackgroundColor3 = Color3.fromRGB(39, 255, 64)
CLICKTP.Position = UDim2.new(-0.00157972425, 0, 0.509005308, 0)
CLICKTP.Size = UDim2.new(0, 200, 0, 46)
CLICKTP.Font = Enum.Font.SourceSans
CLICKTP.Text = "CLICKTP"
CLICKTP.TextColor3 = Color3.fromRGB(255, 0, 4)
CLICKTP.TextSize = 31.000

-- Scripts:

local function QXGCCD_fake_script() -- NOCLIP.LocalScript 
	local script = Instance.new('LocalScript', NOCLIP)

	NOCLIP.MouseButton1Down:connect(function()
		local noclipplayer = game:GetService("Players").LocalPlayer
		local noclipmouse = noclipplayer:GetMouse()
	
		local donoclip = false
		local noclip = false
	
		function b_noclip(key)
			if (key == "b") then
				if noclip == false then
					donoclip = true
	
					noclip = true
				elseif noclip == true then
					donoclip = false
	
					noclip = false
				end
			end
		end
	
		noclipmouse.KeyDown:connect(b_noclip)
	
		game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
			if obj ~= workspace.Terrain then
				if donoclip == true then
					obj.CanCollide = false
				else
					obj.CanCollide = true
				end
			end
		end)
	end)
end
coroutine.wrap(QXGCCD_fake_script)()
local function VLMUROS_fake_script() -- BTOOLS.LocalScript 
	local script = Instance.new('LocalScript', BTOOLS)

	BTOOLS.MouseButton1Down:connect(function()
		a = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
		a.BinType = 2
		b = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
		b.BinType = 3
		c = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
		c.BinType = 4
	end)
end
coroutine.wrap(VLMUROS_fake_script)()
local function OPNJ_fake_script() -- CLICKTP.LocalScript 
	local script = Instance.new('LocalScript', CLICKTP)

	CLICKTP.MouseButton1Down:connect(function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click TP"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end)
end
coroutine.wrap(OPNJ_fake_script)()
