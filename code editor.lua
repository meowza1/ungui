--// Libraries
assert(readfile, "code editor.lua requires readfile so local ide.lua/ReGui.lua are used")

local IDEModule = loadstring(readfile("ide.lua"))()
local ReGui = loadstring(readfile("ReGui.lua"))()

--// IDE
local IDE = IDEModule.CodeFrame.new({
	Editable = true,
	FontSize = 13
})

--// ReGui
ReGui:Init()

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
