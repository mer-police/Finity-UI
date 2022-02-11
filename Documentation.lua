local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/mer-police/Finity-UI/main/Finity.lua"))()

local FinityWindow = Finity.new(true, "test") -- true means dark mode false means light mode where test is put ur gui name

FinityWindow.ChangeToggleKey(Enum.KeyCode.Insert) --- put open and cose key here
-- CREATE A CATIGORY
local VisualsCategory = FinityWindow:Category("Visuals")
local AimbotCategory = FinityWindow:Category("Aimbot")
-- CREATE SECTIONS IN CATIGORY 
-- Visuals Sectors
local VisualsESPSettings = VisualsCategory:Sector("ESP Settings")
local VisualsPlayerESP = VisualsCategory:Sector("Player ESP")
local VisualsItemESP = VisualsCategory:Sector("Item ESP")
-- Aimbot Sectors
local AimbotColors = AimbotCategory:Sector("Aimbot Colors")
local AimbotHotkeys = AimbotCategory:Sector("Aimbot Hotkeys")
local AimbotConfigurations = AimbotCategory:Sector("Aimbot Configurations")
-- CHECK BOXES
VisualsESPSettings:Cheat(
	"Checkbox", -- Type
	"ESP Enabled", -- Name
	function(State) -- Callback function 
		print("Checkbox state changed:", State) --- PUT CODE HERE
	end
)
VisualsPlayerESP:Cheat(
	"Checkbox", -- Type
	"Player ESP Enabled", -- Name
	function(State) -- Callback function
		print("Checkbox state changed:", State) --- PUT CODE HERE
	end
)
VisualsItemESP:Cheat(
	"Checkbox", -- Type
	"Item ESP Enabled", -- Name
	function(State) -- Callback function
		print("Checkbox state changed:", State) --- PUT CODE HERE
	end
)


AimbotConfigurations:Cheat(
	"Checkbox", -- Type
	"Aimbot Enabled", -- Name
	function(State) -- Callback function
		print("Checkbox state changed:", State) --- PUT CODE HERE
	end
)
-- CREATE SLIDERS
VisualsESPSettings:Cheat("Slider", "Render Distance", function(Value)
	print("Silder value changed:", Value) --- CODE GOES HERE
end, {min = 0, max = 1500, suffix = " studs"})

AimbotConfigurations:Cheat("Slider", "Aimbot FOV", function(Value) --- CODE GOES HERE
	print("Silder value changed:", Value)
end, {min = 0, max = 120, suffix = "°"})
--- DROP DOWNS
VisualsESPSettings:Cheat("Dropdown", "ESP Color", function(Option)
	print("Dropdown option changed:", Option) -- CODE HERE
end, {
	options = {
		"Red",
		"White",
		"Green",
		"Pink",
		"Blue"
	}
})

AimbotConfigurations:Cheat("Dropdown", "Aimbot Mode", function(Option)
	print("Dropdown option changed:", Option) --- CODE HERE
end, {
	options = {
		"FOV",
		"Distance",
		"Visibility"
	}
})
--- TEXT BOXES 
-- Visuals Textboxes
VisualsItemESP:Cheat("Textbox", "Item To Whitelist", function(Value)
	print("Textbox value changed:", Value) -- CODE HERE
end, {
	placeholder = "Item Name"
})
VisualsPlayerESP:Cheat("Textbox", "Player To Whitelist", function(Value)
	print("Textbox value changed:", Value)
end, {
	placeholder = "Player Name"
})

-- Aimbot Textboxes
AimbotColors:Cheat("Textbox", "BrickColor Input", function(Value)
	print("Textbox value changed:", Value)
end, {
	placeholder = "BrickColor"
})
AimbotHotkeys:Cheat("Textbox", "Quick Toggle HAotkey", function(Value)
	print("Textbox value changed:", Value)
end, {
	placeholder = "KeyCode"
})
AimbotHotkeys:Cheat("Textbox", "Panic Hotkey", function(Value)
	print("Textbox value changed:", Value)
end, {
	placeholder = "KeyCode"
})
-- Buttons
VisualsPlayerESP:Cheat("Button", "Reset Whitelist", function()
	print("Button pressed")
end)

AimbotColors:Cheat("Button", "Reset Color", function()
	print("Button pressed")
end)

AimbotHotkeys:Cheat("Button", "Reset Key", function()
	print("Button pressed")
end)
--Labels
-- Create category
local CreditsCategory = FinityWindow:Category("Credits")

-- Create sectors
local CreditsCreator = CreditsCategory:Sector("Finity Library Creator")
local CreditsSpecialThanks = CreditsCategory:Sector("Special Thanks")
local CreditsTesters = CreditsCategory:Sector("Testers")

-- Create labels
CreditsCreator:Cheat("Label", "detourious @ v3rmillion.net")
CreditsCreator:Cheat("Label", "deto#7612 @ discord.gg")

CreditsSpecialThanks:Cheat("Label", "wallythebird - held me hostage")
CreditsSpecialThanks:Cheat("Label", "Jan - some inspiration from his lib showcase")
CreditsSpecialThanks:Cheat("Label", "& all of you for supporting me <3")

CreditsTesters:Cheat("Label", "detourious - made the darn thing")
-- credits to deto#7612 for making finity lib
