return function(plugin)
	local parent = script.Parent
	local packages = parent.Packages
	local Rodux = require(packages.Rodux)

	local Reducer = require(script.Reducer)(plugin)

	local store = Rodux.Store.new(Reducer, {}, {
		Rodux.loggerMiddleware;
	})

	return store
end