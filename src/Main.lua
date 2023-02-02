return function(plugin)
	local parent = script.Parent
	local toolbarButton = require(parent.PanelToggleButton)(plugin)
	local controlPanel = require(parent.ControlPanel)(plugin)

	local Main = {}

	function Main:updateButtonActive()
		toolbarButton:SetActive(controlPanel.Enabled)
	end

	function Main.togglePanel()
		controlPanel.Enabled = not controlPanel.Enabled
		Main:updateButtonActive()
	end

	toolbarButton.Click:Connect(Main.togglePanel)
	controlPanel:BindToClose(Main.togglePanel)
	Main:updateButtonActive()

	return Main
end