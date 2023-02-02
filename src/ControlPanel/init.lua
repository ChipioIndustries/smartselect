return function(plugin)
	local packages = script.Parent.Packages
	local Roact = require(packages.Roact)

	local App = require(script.App)(plugin)

	local info = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Float,
		false,
		false,
		250,
		400,
		100,
		20
	)

	local widget = plugin:CreateDockWidgetPluginGui("SmartSelectControlPanel", info)
	widget.Title = "SmartSelect"
	widget.Name = "SmartSelect"

	local app = Roact.createElement(App)
	local _appHandle = Roact.mount(app, widget)

	return widget
end