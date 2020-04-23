--Armeria Polizia By MaXxaM--

function killTutorialMenu()
  SetNuiFocus( false, false )
      SendNUIMessage({
        conce = false
      })
  end

  vRP = Proxy.getInterface("vRP")
  --vRPg = Proxy.getInterface("vRP_garages")

  local blips = true -- attiva/disabilita
  local conce = {
    {name = "Armeria Polizia", id=524,color=3,x=461.46566772461,y=-979.04205322266,z=30.689317703247}
  }

  Citizen.CreateThread(function()
    while true do
      if isNearConce() then
        DisplayHelpText("~g~Premi ~INPUT_PICKUP~ Per aprire l armeria.")
        if IsControlJustPressed(1, 38) then
          SetNuiFocus(true,true)
          SendNUIMessage({
            conce = true
          })
        end
      end
      Citizen.Wait(10)
    end
  end)

  function isNearConce()
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)
    for _, item in pairs(conce) do
      local distance = GetDistanceBetweenCoords(item.x, item.y, item.z,  plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
      if(distance <= 2) then
        return true
      end
    end
  end



  Citizen.CreateThread(function()
    if blips then
      for k,v in ipairs(conce)do
        local blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(blip, v.id)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, v.color)
        BeginTextCommandSetBlipName("STRING");
        AddTextComponentString(tostring(v.name))
        EndTextCommandSetBlipName(blip)
      end
    end
  end)

  function Text3D(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
  end


     ----------------------------- ARMERIA--------------------------------

RegisterNUICallback('compracarabina', function(data, cb)
    TriggerServerEvent("compracarabina")
  	cb('ok')
end)

RegisterNUICallback('compracarabinamk2', function(data, cb)
    TriggerServerEvent("compracarabinamk2")
  	cb('ok')
end)

RegisterNUICallback('comprapompa', function(data, cb)
    TriggerServerEvent("comprapompa")
  	cb('ok')
end)

RegisterNUICallback('comprapompa2', function(data, cb)
    TriggerServerEvent("comprapompa2")
  	cb('ok')
end)

RegisterNUICallback('compraap', function(data, cb)
    TriggerServerEvent("compraap")
  	cb('ok')
end)

RegisterNUICallback('comprapistola', function(data, cb)
    TriggerServerEvent("comprapistola")
  	cb('ok')
end)

RegisterNUICallback('comprapdw', function(data, cb)
  TriggerServerEvent("comprapdw")
  cb('ok')
end)

RegisterNUICallback('comprateaser', function(data, cb)
  TriggerServerEvent("comprateaser")
  cb('ok')
end)

RegisterNUICallback('compratanica', function(data, cb)
  TriggerServerEvent("compratanica")
  cb('ok')
end)

RegisterNUICallback('compraestintore', function(data, cb)
  TriggerServerEvent("compraestintore")
  cb('ok')
end)

RegisterNUICallback('compraflare', function(data, cb)
  TriggerServerEvent("compraflare")
  cb('ok')
end)

RegisterNUICallback('compraflaregun', function(data, cb)
  TriggerServerEvent("compraflaregun")
  cb('ok')
end)

RegisterNUICallback('compratorcia', function(data, cb)
  TriggerServerEvent("compratorcia")
  cb('ok')
end)

RegisterNUICallback('comprapaletta', function(data, cb)
  TriggerServerEvent("comprapaletta")
  cb('ok')
end)

RegisterNUICallback('compramanganello', function(data, cb)
  TriggerServerEvent("compramanganello")
  cb('ok')
end)

RegisterNUICallback('compraporto1', function(data, cb)
  TriggerServerEvent("compraporto1")
  cb('ok')
end)

RegisterNUICallback('compraporto2', function(data, cb)
  TriggerServerEvent("compraporto2")
  cb('ok')
end)

RegisterNUICallback('compraporto3', function(data, cb)
  TriggerServerEvent("compraporto3")
  cb('ok')
end)

RegisterNUICallback('compraarmor', function(data, cb)
  TriggerServerEvent("compraarmor")
  cb('ok')
end)

RegisterNUICallback('compraradio', function(data, cb)
  TriggerServerEvent("compraradio")
  cb('ok')
end)

RegisterNUICallback('compramuni1', function(data, cb)
  TriggerServerEvent("compramuni1")
  cb('ok')
end)

RegisterNUICallback('compramuni2', function(data, cb)
  TriggerServerEvent("compramuni2")
  cb('ok')
end)

RegisterNUICallback('compramuni4', function(data, cb)
  TriggerServerEvent("compramuni4")
  cb('ok')
end)

RegisterNUICallback('compramuni5', function(data, cb)
  TriggerServerEvent("compramuni5")
  cb('ok')
end)

RegisterNUICallback('compramuni6', function(data, cb)
  TriggerServerEvent("compramuni6")
  cb('ok')
end)

RegisterNUICallback('compramuni7', function(data, cb)
  TriggerServerEvent("compramuni7")
  cb('ok')
end)

RegisterNUICallback('compramuni8', function(data, cb)
  TriggerServerEvent("compramuni8")
  cb('ok')
end)

RegisterNUICallback('close', function(data, cb)
    killTutorialMenu()
  	cb('ok')
end)
-------------------------------------------------------------

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

RegisterNetEvent('sem:inventario')
AddEventHandler('sem:inventario', function()
    notificar("~r~inventartio")
end)

function notificar(msg)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(msg)
  DrawNotification(true, false)
end

function subtitle(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end