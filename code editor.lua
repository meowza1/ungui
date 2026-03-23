--// Libraries
local IDEModule = require(game.ReplicatedStorage.ide)
local ReGui = require(game.ReplicatedStorage.ReGui)

--// IDE
local IDE = IDEModule.CodeFrame.new({
	Editable = true,
	FontSize = 13
})

--// ReGui
local PrefabsId = `rbxassetid://{ReGui.PrefabsId}`
ReGui:Init({
	Prefabs = game:GetService("InsertService"):LoadLocalAsset(PrefabsId)
})

--// Create window
local Window = ReGui:Window({
	Title = "Code editor",
	Size = UDim2.fromOffset(300, 200),
	NoScroll = true
})

--// Add IDE frame
ReGui:ApplyFlags({
	Object = IDE.Gui,
	WindowClass = Window,
	Class = {
		Parent = Window:GetObject(),
		Fill = true,
		BackgroundTransparency = 1
	}
})
