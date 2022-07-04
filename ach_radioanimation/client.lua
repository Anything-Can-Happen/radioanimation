local animation = false
CreateThread(function()
    while true do
        Wait(0)
        if animation then
            TaskPlayAnim(PlayerPedId(), "random@arrests", "generic_radio_enter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0)
        end
    end
end)
RegisterCommand('+ranimation', function()
    animation = true
end, false)
RegisterCommand('-ranimation', function()
    animation = false
end, false)
RegisterKeyMapping('+ranimation', 'Radio Animation', 'keyboard', '*')
