local errorOnNilIndex = script.Parent

local Enums = {
	SearchTarget = {
		All = "All";
		ExactSelection = "ExactSelection";
		SelectionDescendants = "SelectionDescendants";
	};
	PropertyValue = {
		Empty = {};
	}
}

local function lock(object)
	if typeof(object) == "table" then
		for index, value in pairs(object) do
			lock(value)
		end
		errorOnNilIndex(object)
		table.freeze(object)
	end
end

lock(Enums)

return Enums