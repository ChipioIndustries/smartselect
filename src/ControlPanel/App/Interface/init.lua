return function(plugin)
	local packages = script.Parent.Parent.Parent.Packages
	local Roact = require(packages.Roact)

	local function Interface(props)
		return Roact.createElement("ScreenGui", {
			Name = "HelloWorld";
		})
	end

	return Interface
end