local config = {
  --peds--
  firstpedname = 's_m_y_xmech_01',
  firstpedhash = 0x441405EC,
  firstpednumberhash = 1142162924,
  firstpedcoords = {
    x = 460.03,
    y = -986.675,
    z = 25.60,
    h = 90.70,
  },
}

Citizen.CreateThread(function()
  print(GetHashKey(config.firstpedname))
  RequestModel(GetHashKey(config.firstpedname))
  while not HasModelLoaded(GetHashKey(config.firstpedname)) do
    Citizen.Wait(1)
  end
  local ped = CreatePed(4, config.firstpedhash, config.firstpedcoords.x, config.firstpedcoords.y,
  config.firstpedcoords.z - 1, config.firstpedcoords.h, false, true)
  FreezeEntityPosition(ped, true)
  SetEntityInvincible(ped, true)
  SetBlockingOfNonTemporaryEvents(ped, true)
end)

Citizen.CreateThread(function()
  exports.qtarget:AddTargetModel({ config.firstpednumberhash }, {
    options = {
      {
        event = "opengarage1",
        icon = "fas fa-box",
        label = "Otwórz garaż",
        job = "police",
      },
      {
        event = "usunbryke1",
        icon = "fas fa-box",
        label = "Schowaj pojazd",
        job = "police",
      }
    },
    distance = 3.0
  })
end)

AddEventHandler('opengarage1', function()
  garaz1()
end)

garaz1 = function()
  local Elements = {
    { label = "Kompakt I",       name = "police3" },
    --{ label = "Dodge charger", name = "dch" },
    --{ label = "Taurus", name = "tau" },
   -- { label = "Komoda", name = "kom" },
   -- { label = "Free crawler", name = "craw" },
    --{ label = "Sprinter", name = "sprinter" },
  }

  ESX.UI.Menu.Open("default", GetCurrentResourceName(), "esx_policejob", {
    title    = "Garaż",
    align    = 'top-left',
    elements = Elements
  }, function(data, menu)
    if data.current.name == "cv" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_mustang', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
          plate = "POL " .. math.random(100, 999)
          SetVehicleNumberPlateText(vehicle, plate)
          TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end

    if data.current.name == "dch" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_charger18', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
        plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end

    if data.current.name == "rap" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('1raptor', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
          plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end

    
    if data.current.name == "tau" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_taurus', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
          plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end

    if data.current.name == "kom" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_komoda', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
          plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end



    if data.current.name == "craw" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_freecrawler', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
          plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end

    if data.current.name == "sprinter" then
      if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
        ESX.Game.SpawnVehicle('pd_sprinter', vector3(452.22, -988.31, 25.69), 00.00, function(vehicle)
        plate = "POL " .. math.random(100, 999)
        SetVehicleNumberPlateText(vehicle, plate)
        TriggerServerEvent('easy-addkeys', plate)
        menu.close()
      end)
      else
        ESX.ShowNotification('Nie ma miejscu na zrespienie pojazdu')
      end
    end


  end, function(data, menu)
    menu.close()
  end)
end

AddEventHandler('usunbryke1', function()
  if ESX.Game.IsSpawnPointClear(vector3(452.22, -988.31, 25.69), 3) then
    ESX.ShowNotification('Nie masz pojazdu do schowania')
  else
    local gowno = ESX.Game.GetClosestVehicle(vector3(452.22, -988.31, 25.69))
    DeleteVehicle(gowno)
    ESX.ShowNotification('Schowano pojazd')
  end
end)
