-- this file is generated using lunr discord.gg/9yAtRgpsua

local WaitForChild = object:WaitForChild("HumanoidRootPart")
local Part = Instance.new("Part")
Part.Size = Vector3.new(3, 6, 3)
Part.Anchored = true
Part.CanCollide = false
Part.CastShadow = false
Part.Material = Enum.Material.Neon
Part.BrickColor = BrickColor.new("Cyan")
Part.Transparency = 1
Part.Parent = workspace
local BillboardGui = Instance.new("BillboardGui", Part)
BillboardGui.Size = UDim2.new(0, 140, 0, 22)
BillboardGui.StudsOffset = Vector3.new(0, 4, 0)
BillboardGui.Enabled = false
local TextLabel = Instance.new("TextLabel", BillboardGui)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "posicion servidor"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 12
TextLabel.Font = Enum.Font.GothamBold
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DesyncUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = {}
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 160, 0, 100)
Frame.Position = UDim2.new(0, 16, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)
local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.Color = Color3.fromRGB(40, 40, 55)
UIStroke.Thickness = 1
local TextLabel1 = Instance.new("TextLabel", Frame)
TextLabel1.Size = UDim2.new(1, 0, 0, 26)
TextLabel1.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
TextLabel1.BorderSizePixel = 0
TextLabel1.Text = " Ghems desync"
TextLabel1.TextColor3 = Color3.fromRGB(180, 180, 255)
TextLabel1.TextSize = 11
TextLabel1.Font = Enum.Font.GothamBold
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
local UICorner2 = Instance.new("UICorner", TextLabel1)
UICorner2.CornerRadius = UDim.new(0, 10)
local TextButton = Instance.new("TextButton", Frame)
TextButton.Size = UDim2.new(0, 70, 0, 24)
TextButton.Position = UDim2.new(0.5, -35, 0, 32)
TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
TextButton.BorderSizePixel = 0
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(120, 120, 120)
TextButton.TextSize = 11
TextButton.Font = Enum.Font.GothamBold
local UICorner3 = Instance.new("UICorner", TextButton)
UICorner3.CornerRadius = UDim.new(0, 8)
local UIStroke4 = Instance.new("UIStroke", TextButton)
UIStroke4.Color = Color3.fromRGB(50, 50, 65)
UIStroke4.Thickness = 1
local TextButton5 = Instance.new("TextButton", Frame)
TextButton5.Size = UDim2.new(0, 110, 0, 20)
TextButton5.Position = UDim2.new(0.5, -55, 0, 66)
TextButton5.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
TextButton5.BorderSizePixel = 0
TextButton5.Text = "discord"
TextButton5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton5.TextSize = 10
TextButton5.Font = Enum.Font.GothamBold
local UICorner6 = Instance.new("UICorner", TextButton5)
UICorner6.CornerRadius = UDim.new(0, 6)
local conn = TextButton5.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/r8sYg8xka")
    TextButton5.Text = "copied!"
    task.wait(1.5)
    TextButton5.Text = "discord"
end)
local conn7 = TextButton.MouseButton1Click:Connect(function()
    TextButton.Text = "ON"
    TextButton.TextColor3 = Color3.fromRGB(120, 200, 255)
    UIStroke4.Color = Color3.fromRGB(80, 140, 255)
    local RunService = game:GetService("RunService")
    WaitForChild.CFrame = (CFrame.new(0, 5, 0) + Vector3.new(0, 0, -10))
    task.wait(0.2)
    WaitForChild.CFrame = (CFrame + Vector3.new(10, 0, 0))
    task.wait(0.2)
    WaitForChild.CFrame = (CFrame8 + Vector3.new(0, 0, 10))
    task.wait(0.2)
end)

loadstring('local player = game.Players.LocalPlayer\nlocal character = player.Character or player.CharacterAdded:Wait()\nlocal hrp = character:WaitForChild("HumanoidRootPart")\nlocal RunService = game:GetService("RunService")\n\nlocal desyncActivo = false\nlocal heartbeatConn = nil\n\nlocal partLag = Instance.new("Part")\npartLag.Size = Vector3.new(3, 6, 3)\npartLag.Anchored = true\npartLag.CanCollide = false\npartLag.CastShadow = false\npartLag.Material = Enum.Material.Neon\npartLag.BrickColor = BrickColor.new("Cyan")\npartLag.Transparency = 1\npartLag.Parent = workspace\n\nlocal bill = Instance.new("BillboardGui", partLag)\nbill.Size = UDim2.new(0, 140, 0, 22)\nbill.StudsOffset = Vector3.new(0, 4, 0)\nbill.Enabled = false\nlocal lbl = Instance.new("TextLabel", bill)\nlbl.Size = UDim2.new(1, 0, 1, 0)\nlbl.BackgroundTransparency = 1\nlbl.Text = "posicion servidor"\nlbl.TextColor3 = Color3.fromRGB(0, 255, 255)\nlbl.TextStrokeTransparency = 0\nlbl.TextSize = 12\nlbl.Font = Enum.Font.GothamBold\n\nlocal screenGui = Instance.new("ScreenGui")\nscreenGui.Name = "DesyncUI"\nscreenGui.ResetOnSpawn = false\nscreenGui.Parent = player.PlayerGui\n\nlocal frame = Instance.new("Frame", screenGui)\nframe.Size = UDim2.new(0, 160, 0, 100)\nframe.Position = UDim2.new(0, 16, 0.5, -50)\nframe.BackgroundColor3 = Color3.fromRGB(8, 8, 10)\nframe.BorderSizePixel = 0\nframe.Active = true\nframe.Draggable = true\nInstance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)\nlocal stroke = Instance.new("UIStroke", frame)\nstroke.Color = Color3.fromRGB(40, 40, 55)\nstroke.Thickness = 1\n\nlocal title = Instance.new("TextLabel", frame)\ntitle.Size = UDim2.new(1, 0, 0, 26)\ntitle.BackgroundColor3 = Color3.fromRGB(14, 14, 20)\ntitle.BorderSizePixel = 0\ntitle.Text = "  yeico desync"\ntitle.TextColor3 = Color3.fromRGB(180, 180, 255)\ntitle.TextSize = 11\ntitle.Font = Enum.Font.GothamBold\ntitle.TextXAlignment = Enum.TextXAlignment.Left\nInstance.new("UICorner", title).CornerRadius = UDim.new(0, 10)\n\n-- Boton desync\nlocal btn = Instance.new("TextButton", frame)\nbtn.Size = UDim2.new(0, 70, 0, 24)\nbtn.Position = UDim2.new(0.5, -35, 0, 32)\nbtn.BackgroundColor3 = Color3.fromRGB(20, 20, 28)\nbtn.BorderSizePixel = 0\nbtn.Text = "OFF"\nbtn.TextColor3 = Color3.fromRGB(120, 120, 120)\nbtn.TextSize = 11\nbtn.Font = Enum.Font.GothamBold\nInstance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)\nlocal btnStroke = Instance.new("UIStroke", btn)\nbtnStroke.Color = Color3.fromRGB(50, 50, 65)\nbtnStroke.Thickness = 1\n\n-- Boton Discord\nlocal discordBtn = Instance.new("TextButton", frame)\ndiscordBtn.Size = UDim2.new(0, 110, 0, 20)\ndiscordBtn.Position = UDim2.new(0.5, -55, 0, 66)\ndiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)\ndiscordBtn.BorderSizePixel = 0\ndiscordBtn.Text = "discord"\ndiscordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)\ndiscordBtn.TextSize = 10\ndiscordBtn.Font = Enum.Font.GothamBold\nInstance.new("UICorner", discordBtn).CornerRadius = UDim.new(0, 6)\n\ndiscordBtn.MouseButton1Click:Connect(function()\n\tsetclipboard("https://discord.gg/Kq7wGz4Yx")\n\tdiscordBtn.Text = "copiado!"\n\ttask.wait(1.5)\n\tdiscordBtn.Text = "discord"\nend)\n\nlocal lastPos = hrp.Position\nlocal threshold = 4\nlocal prevPos = hrp.Position\n\nlocal function iniciar()\n\tdesyncActivo = true\n\tbtn.Text = "ON"\n\tbtn.TextColor3 = Color3.fromRGB(120, 200, 255)\n\tbtnStroke.Color = Color3.fromRGB(80, 140, 255)\n\tlastPos = hrp.Position\n\tprevPos = hrp.Position\n\n\theartbeatConn = RunService.Heartbeat:Connect(function()\n\t\tlocal cur = hrp.Position\n\t\tlocal delta = (cur - prevPos).Magnitude\n\t\tif delta > threshold then\n\t\t\tlocal dir = cur - prevPos\n\t\t\tif dir.Magnitude > 0 then\n\t\t\t\tpartLag.CFrame = CFrame.new(cur.X, cur.Y, cur.Z)\n\t\t\t\tpartLag.Transparency = 0.3\n\t\t\t\tbill.Enabled = true\n\t\t\tend\n\t\tend\n\t\tprevPos = cur\n\tend)\n\n\thrp.CFrame = hrp.CFrame + Vector3.new(0,0,-10)\n\ttask.wait(0.2)\n\thrp.CFrame = hrp.CFrame + Vector3.new(10,0,0)\n\ttask.wait(0.2)\n\thrp.CFrame = hrp.CFrame + Vector3.new(0,0,10)\n\ttask.wait(0.2)\n\traknet.desync(true)\n\thrp.CFrame = hrp.CFrame + Vector3.new(-10,0,0)\nend\n\nlocal function detener()\n\tdesyncActivo = false\n\tbtn.Text = "OFF"\n\tbtn.TextColor3 = Color3.fromRGB(120, 120, 120)\n\tbtnStroke.Color = Color3.fromRGB(50, 50, 65)\n\tpartLag.Transparency = 1\n\tbill.Enabled = false\n\tif heartbeatConn then\n\t\theartbeatConn:Disconnect()\n\t\theartbeatConn = nil\n\tend\n\traknet.desync(false)\nend\n\nbtn.MouseButton1Click:Connect(function()\n\tif desyncActivo then detener() else iniciar() end\nend)')

local _LocalPlayer6 = game.Players.LocalPlayer
local _call9 = _LocalPlayer6.Character:WaitForChild('HumanoidRootPart')
local _call13 = Instance.new('Part')

_call13.Size = Vector3.new(3, 6, 3)
_call13.Anchored = true
_call13.CanCollide = false
_call13.CastShadow = false
_call13.Material = Enum.Material.Neon
_call13.BrickColor = BrickColor.new('Cyan')
_call13.Transparency = 1
_call13.Parent = workspace

local _call21 = Instance.new('BillboardGui', _call13)

_call21.Size = UDim2.new(0, 140, 0, 22)
_call21.StudsOffset = Vector3.new(0, 4, 0)
_call21.Enabled = false

local _call27 = Instance.new('TextLabel', _call21)

_call27.Size = UDim2.new(1, 0, 1, 0)
_call27.BackgroundTransparency = 1
_call27.Text = 'posicion servidor'
_call27.TextColor3 = Color3.fromRGB(0, 255, 255)
_call27.TextStrokeTransparency = 0
_call27.TextSize = 12
_call27.Font = Enum.Font.GothamBold

local _call35 = Instance.new('ScreenGui')

_call35.Name = 'DesyncUI'
_call35.ResetOnSpawn = false
_call35.Parent = _LocalPlayer6.PlayerGui

local _call38 = Instance.new('Frame', _call35)

_call38.Size = UDim2.new(0, 160, 0, 100)
_call38.Position = UDim2.new(0, 16, 0.5, -50)
_call38.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
_call38.BorderSizePixel = 0
_call38.Active = true
_call38.Draggable = true

local _call46 = Instance.new('UICorner', _call38)

_call46.CornerRadius = UDim.new(0, 10)

local _call50 = Instance.new('UIStroke', _call38)

_call50.Color = Color3.fromRGB(40, 40, 55)
_call50.Thickness = 1

local _call54 = Instance.new('TextLabel', _call38)

_call54.Size = UDim2.new(1, 0, 0, 26)
_call54.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
_call54.BorderSizePixel = 0
_call54.Text = '  yeico desync'
_call54.TextColor3 = Color3.fromRGB(180, 180, 255)
_call54.TextSize = 11
_call54.Font = Enum.Font.GothamBold
_call54.TextXAlignment = Enum.TextXAlignment.Left

local _call66 = Instance.new('UICorner', _call54)

_call66.CornerRadius = UDim.new(0, 10)

local _call70 = Instance.new('TextButton', _call38)

_call70.Size = UDim2.new(0, 70, 0, 24)
_call70.Position = UDim2.new(0.5, -35, 0, 32)
_call70.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
_call70.BorderSizePixel = 0
_call70.Text = 'OFF'
_call70.TextColor3 = Color3.fromRGB(120, 120, 120)
_call70.TextSize = 11
_call70.Font = Enum.Font.GothamBold

local _call82 = Instance.new('UICorner', _call70)

_call82.CornerRadius = UDim.new(0, 8)

local _call86 = Instance.new('UIStroke', _call70)

_call86.Color = Color3.fromRGB(50, 50, 65)
_call86.Thickness = 1

local _call90 = Instance.new('TextButton', _call38)

_call90.Size = UDim2.new(0, 110, 0, 20)
_call90.Position = UDim2.new(0.5, -55, 0, 66)
_call90.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
_call90.BorderSizePixel = 0
_call90.Text = 'discord'
_call90.TextColor3 = Color3.fromRGB(255, 255, 255)
_call90.TextSize = 10
_call90.Font = Enum.Font.GothamBold

local _call102 = Instance.new('UICorner', _call90)

_call102.CornerRadius = UDim.new(0, 6)

_call90.MouseButton1Click:Connect(function()
    setclipboard('https://discord.gg/r8sYg8xka')

    _call90.Text = 'copied!'

    task.wait(1.5)

    _call90.Text = 'discord'
end)

local _ = _call9.Position
local _ = _call9.Position

_call70.MouseButton1Click:Connect(function()
    _call70.Text = 'ON'
    _call70.TextColor3 = Color3.fromRGB(120, 200, 255)
    _call86.Color = Color3.fromRGB(80, 140, 255)

    local _ = _call9.Position

    game:GetService('RunService').Heartbeat:Connect(function()
        local _ = (_call9.Position - _call9.Position).Magnitude

        error('[string "25ms_loadstring"]:109: attempt to compare number < table')
    end)

    _call9.CFrame = (_call9.CFrame + Vector3.new(0, 0, -10))

    task.wait(0.2)

    _call9.CFrame = (_call9.CFrame + Vector3.new(10, 0, 0))

    task.wait(0.2)

    _call9.CFrame = (_call9.CFrame + Vector3.new(0, 0, 10))

    task.wait(0.2)
    error('[string "25ms_loadstring"]:126: attempt to index nil with \'desync\'')
end)
