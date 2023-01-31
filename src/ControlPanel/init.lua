return function(plugin)
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
	return widget
end