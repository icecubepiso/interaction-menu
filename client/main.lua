function ShowInteraction(action, color, text)
	SendNUIMessage({
		action = action,
		color = color, 
		text = text,
	})
end
exports('ShowInteraction', ShowInteraction)

function HideInteraction()
	SendNUIMessage({
		action = 'hide'
	})
end
exports('HideInteraction', HideInteraction)