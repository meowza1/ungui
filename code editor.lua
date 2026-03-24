--// Libraries
local ReadSource = readfile or function(Path)
	return game:HttpGet(("https://raw.githubusercontent.com/meowza1/ungui/refs/heads/main/%s"):format(Path))
end

local IDEModule = loadstring(ReadSource("ide.lua"))()
local ReGui = loadstring(ReadSource("ReGui.lua"))()

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
