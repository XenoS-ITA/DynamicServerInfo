-- Idea credits: https://forum.cfx.re/t/paid-dynamic-server-description/3181951
-- Writed by: https://forum.cfx.re/u/xenos.exe (in exactly 1m and 23s)

Citizen.CreateThread(function()
    while true do
        for i=1, #Config.Descriptions do
            print("Changing desctription to "..Config.Descriptions[i])
            SetConvar("sv_projectDesc", Config.Descriptions[i])
            Citizen.Wait(Config.UpdateCooldown*1000)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        for i=1, #Config.ServerName do
            print("Changing ServerName to "..Config.ServerName[i])

            SetConvar("sv_projectName", Config.ServerName[i])
            Citizen.Wait(Config.UpdateCooldown*1000)
        end
    end
end)