# interaction-menu
Simple interaction notify nopixel inspired

**For show notification use this export:**

```lua
exports['interaction-menu']:ShowInteraction('show', 'green', "[E] Otevřít banku")
```

or

```lua
TriggerEvent('interaction-menu:ShowInteraction', 'show', 'green', '[E] Otevřít banku")
```

**For close notification use this:**
```lua
exports['interaction-menu']:HideInteraction()
```

or

```lua
TriggerEvent('interaction-menu:HideInteraction')
```



**Example:**

```lua
    local alreadyEnteredZone = false
    while true do
        local sleep = 200
        local ped = PlayerPedId()
        local inZone = false
        local dist = #(GetEntityCoords(ped)-vector3(0,0,0))
        if dist <= 5.0 then
            sleep = 0
            inZone  = true

            if IsControlJustReleased(0, 38) then
                TriggerEvent('ph:LanaRhoades') -- just your event here :D
            end
        end
        
        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            exports['interaction-menu']:ShowInteraction('show', 'green', "[E] Otevřít banku")
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            exports['interaction-menu']:HideInteraction()
        end
        Wait(sleep)
    end
end)
```


