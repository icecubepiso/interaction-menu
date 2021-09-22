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


--- idk if i need it.. but what ever xD

RegisterNetEvent('interaction-menu:ShowInteraction')
AddEventHandler('interaction-menu:ShowInteraction', function(action, color, text)
	SendNUIMessage({
		action = action,
		color = color, 
		text = text,
	})
end)

RegisterNetEvent('interaction-menu:HideInteraction')
AddEventHandler('interaction-menu:HideInteraction', function()
	SendNUIMessage({
		action = 'hide'
	})
end)