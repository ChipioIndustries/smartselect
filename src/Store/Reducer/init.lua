return function(plugin)
	local packages = script.Parent.Parent.Packages
	local Rodux = require(packages.Rodux)

	local subreducers = script:GetChildren()

	local subreducerMap = {}
	for _, module in ipairs(subreducers) do
		subreducerMap[module.Name] = require(subreducers)
	end

	local Reducer = Rodux.combineReducers(subreducerMap)

	return Reducer
end