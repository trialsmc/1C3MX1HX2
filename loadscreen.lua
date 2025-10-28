local Blur = Instance.new("BlurEffect", game.Lighting)
Blur.Size = 20

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "Hexagon"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

local Background = Instance.new("Frame")
Background.Parent = ScreenGui
Background.Size = UDim2.new(0, 380, 0, 190)
Background.Position = UDim2.new(0.25, 0, 0.25, 0)
Background.BackgroundColor3 = Color3.fromRGB(25, 0, 0)

local bgCorner = Instance.new("UICorner")
bgCorner.Parent = Background
bgCorner.CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel")
Title.Parent = Background
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Position = UDim2.new(0, 0, 0, -20)
Title.BackgroundTransparency = 1
Title.Text = "HEXAGON"
Title.TextColor3 = Color3.fromRGB(255,60,60)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 32

local Desc = Instance.new("TextLabel")
Desc.Parent = Background
Desc.Size = UDim2.new(1, 0, 1, 0)
Desc.Position = UDim2.new(0, 0, 0, 5)
Desc.BackgroundTransparency = 1
Desc.Text = "DESCRIPTION"
Desc.TextColor3 = Color3.fromRGB(255,180,180)
Desc.Font = Enum.Font.Gotham
Desc.TextSize = 16

local ProgressBar = Instance.new("Frame")
ProgressBar.Parent = Background
ProgressBar.Position = UDim2.new(0, 20, 1, -30)
ProgressBar.Size = UDim2.new(1, 0, 0.03, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
ProgressBar.BorderSizePixel = 0

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(0.5,0)
ProgressCorner.Parent = ProgressBar

local PercentText = Instance.new("TextLabel")
PercentText.Parent = Background
PercentText.Size = UDim2.new(1, 0, 1, 0)
PercentText.Position = UDim2.new(0, 0, 0, 50)
PercentText.BackgroundTransparency = 1
PercentText.Text = "0%"
PercentText.TextColor3 = Color3.fromRGB(255,180,180)
PercentText.Font = Enum.Font.Gotham
PercentText.TextSize = 12

-- Loading Animation
local totalTime = 7 -- Seconds
local steps = 100
local delayPerStep = totalTime / steps

for i = 1, steps do
    ProgressBar.Size = UDim2.new(i/steps, 0, 0.03, 0)
    PercentText.Text = i .. "%"
    wait(delayPerStep)
end
-- Delete GUI and BLUR in the end
ScreenGui:Destroy()
Blur:Destroy()
