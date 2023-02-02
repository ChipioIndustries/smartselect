return function(plugin)
	local parent = script.Parent.Parent.Parent
	local packages = parent.Packages
	local Rodux = require(packages.Rodux)
	local Llama = require(packages.Llama)
	local Enums = require(parent.Enums)

	local filtersReducer = Rodux.createReducer({ ACTIVE = {} }, {
		setFilter = function(state, action)
			local filterName = action.name
			local filterValue = action.filter
			return Llama.Dictionary.join(state, {
				[filterName] = filterValue;
			})
		end;
		eraseFilter = function(state, action)
			local filterName = action.name
			return Llama.Dictionary.join(state, {
				[filterName] = Llama.None;
			})
		end;
		setFilterProperty = function(state, action)
			local filterName = action.filterName
			local filterPropertyName = action.propertyName
			local filterPropertyValue = action.propertyValue or Enums.PropertyValue.Empty

			return Llama.Dictionary.join(state, {
				[filterName] = Llama.Dictionary.join(state[filterName], {
					[filterPropertyName] = filterPropertyValue;
				})
			});
		end;
		eraseFilterProperty = function(state, action)
			local filterName = action.filterName
			local filterPropertyName = action.propertyName

			return Llama.Dictionary.join(state, {
				[filterName] = Llama.Dictionary.join(state[filterName], {
					[filterPropertyName] = Llama.None;
				})
			})
		end;
	})

	return filtersReducer
end