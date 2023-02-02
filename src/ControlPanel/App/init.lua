return function(plugin)
	local parent = script.Parent.Parent
	local packages = parent.Packages
	local Roact = require(packages.Roact)
	local RoactRodux = require(packages.RoactRodux)

	local Store = require(parent.Store)
	local Interface = require(script.Interface)(plugin)

	local function App(props)
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = Store;
		}, {
			Interface = Roact.createElement(Interface);
		})
	end

	return App
end