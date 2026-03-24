--// Libraries
local IDEModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/meowza1/ungui/refs/heads/main/ide.lua"))()
local ReGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/meowza1/ungui/refs/heads/main/ReGui.lua"))()

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
