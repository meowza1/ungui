local RunService = game:GetService("RunService")
local ReGui = require(game.ReplicatedStorage.ReGui)

ReGui:Init()

local Window = ReGui:Window({
	Position = UDim2.fromOffset(10, 10),
	Size = UDim2.fromOffset(500, 300),
	NoMove = true,
	NoResize = true,
	NoSelect = true,
	NoTitleBar = true,
})

local RigModel = Instance.new("Model")
RigModel.Name = "ViewportRig"

local RootPart = Instance.new("Part")
RootPart.Name = "HumanoidRootPart"
RootPart.Size = Vector3.new(2, 2, 1)
RootPart.Anchored = true
RootPart.Parent = RigModel

local Viewport = Window:Viewport({
	Model = RigModel,
	Size = UDim2.fromScale(1, 1),
	Clone = true,
	Border = false,
})

--// Spin rig
local Model = Viewport.Model
RunService.RenderStepped:Connect(function(DeltaTime)
	local Y = 30 * DeltaTime
	local Pivot = Model:GetPivot() * CFrame.Angles(0, math.rad(Y), 0)
	Model:PivotTo(Pivot)
end)
