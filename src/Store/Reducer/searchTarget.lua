return function(plugin)
	local parent = script.Parent.Parent.Parent
	local packages = parent.Packages
	local Rodux = require(packages.Rodux)
	local Enums = require(parent.Enums)

	local searchTargetReducer = Rodux.createReducer(Enums.SearchTarget.All, {
		setSearchTarget = function(_state, action)
			return action.searchTarget
		end;
	})

	return searchTargetReducer
end