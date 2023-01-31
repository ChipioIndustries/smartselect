return function(plugin)
	local toolbar = plugin:CreateToolbar("Chipio")
	local button = toolbar:CreateButton(
		"SmartSelect",
		"Toggle the SmartSelect control panel",
		"rbxassetid://0"
	)
	return button
end