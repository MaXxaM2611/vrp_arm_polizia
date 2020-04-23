--Armeria Polizia by MaXxam--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")


vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_arm_polizia") 

--armeria--

--carabina
RegisterServerEvent("compracarabina")
AddEventHandler('compracarabina', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_carabina = 1000                      --prezzo vendita
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then    --permesso
        if vRP.tryPayment({user_id, valor_carabina}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_CARBINERIFLE",1,true})   --item e quantita
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--carabina mk2
RegisterServerEvent("compracarabinamk2")
AddEventHandler('compracarabinamk2', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_carabinamk2 = 10000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_carabinamk2}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_CARBINERIFLE_MK2",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--pompa
RegisterServerEvent("comprapompa")
AddEventHandler('comprapompa', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_pompa = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_pompa}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_PUMPSHOTGUN",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--pompa2
RegisterServerEvent("comprapompa2")
AddEventHandler('comprapompa2', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_pompa2 = 10000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_pompa2}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_BULLPUPSHOTGUN",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--appistol
RegisterServerEvent("compraap")
AddEventHandler('compraap', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_ap = 10000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_ap}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_APPISTOL",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--pistola
RegisterServerEvent("comprapistola")
AddEventHandler('comprapistola', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_pistola = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_pistola}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_PISTOL",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--pdw
RegisterServerEvent("comprapdw")
AddEventHandler('comprapdw', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_pdw = 10000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_pdw}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_COMBATPDW",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--teaser
RegisterServerEvent("comprateaser")
AddEventHandler('comprateaser', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_teaser = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_teaser}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_STUNGUN",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--tanica
RegisterServerEvent("compratanica")
AddEventHandler('compratanica', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_tanica = 130
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_tanica}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_PETROLCAN",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--estintore
RegisterServerEvent("compraestintore")
AddEventHandler('compraestintore', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_estintore = 500
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_estintore}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"WEAPON_FIREEXTINGUISHER",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--flare
RegisterServerEvent("compraflare")
AddEventHandler('compraflare', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_flare = 500
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_flare}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_FLARE",20,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--flare gun
RegisterServerEvent("compraflaregun")
AddEventHandler('compraflaregun', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_flaregun = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_flaregun}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_FLAREGUN",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--torcia
RegisterServerEvent("compratorcia")
AddEventHandler('compratorcia', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_torcia = 100
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_torcia}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_NIGHTVISION",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)


--paletta
RegisterServerEvent("comprapaletta")
AddEventHandler('comprapaletta', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_paletta = 100
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_paletta}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_HAMMER",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--manganello
RegisterServerEvent("compramanganello")
AddEventHandler('compramanganello', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_manganello = 100
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_manganello}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wbody|WEAPON_NIGHTSTICK",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--porto1
RegisterServerEvent("compraporto1")
AddEventHandler('compraporto1', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_porto1 = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_porto1}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"porto1",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--porto2
RegisterServerEvent("compraporto2")
AddEventHandler('compraporto2', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_porto2 = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_porto2}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"porto2",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--porto3
RegisterServerEvent("compraporto3")
AddEventHandler('compraporto3', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_porto3 = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_porto3}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"porto3",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--armor
RegisterServerEvent("compraarmor")
AddEventHandler('compraarmor', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_armor = 2000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_armor}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"body_armor",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--radio
RegisterServerEvent("compraradio")
AddEventHandler('compraradio', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_radio = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.whitelisted"}) then
        if vRP.tryPayment({user_id, valor_radio}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"radio",1,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

------------------------------------MUNIZIONI------------------------------------


--munizionicarabina
RegisterServerEvent("compramuni1")
AddEventHandler('compramuni1', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_CARBINERIFLE",100,true})       
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--munizioni carabinamk2
RegisterServerEvent("compramuni2")
AddEventHandler('compramuni2', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_CARBINERIFLE_MK2",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--munizioni pompa
RegisterServerEvent("compramuni4")
AddEventHandler('compramuni4', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local weight = vRP.getInventoryWeight({user_id})
    local valor_munizioni = 1000
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_PUMPSHOTGUN",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--munizioni pompa2
RegisterServerEvent("compramuni5")
AddEventHandler('compramuni5', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_BULLPUPSHOTGUN",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)


--munizioni appistol
RegisterServerEvent("compramuni6")
AddEventHandler('compramuni6', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_APPISTOL",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--munizioni pistola
RegisterServerEvent("compramuni7")
AddEventHandler('compramuni7', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_PISTOL",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)

--munizioni pdw
RegisterServerEvent("compramuni8")
AddEventHandler('compramuni8', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local valor_munizioni = 1000
    local weight = vRP.getInventoryWeight({user_id})
    if vRP.hasPermission({user_id, "cop.bruciatore"}) then
        if vRP.tryPayment({user_id, valor_munizioni}) then
            if weight >= vRP.getInventoryMaxWeight({user_id}) then
                   TriggerClientEvent('sem:Inventario Pieno', source)
            else
                local user_id = vRP.getUserId({player}) 
                vRP.giveInventoryItem({user_id,"wammo|WEAPON_COMBATPDW",100,true})
            end
        else     
            vRPclient.notify(player,{"~r~ Non hai i soldi"})
        end   
    else
        vRPclient.notify(player,{"~r~ Non hai il permesso"})      
    end
end)
