local inviteCrewName = ""
local myCrew = {}
local blips = {

  {title="Bloods", colour=1, colour2=1, id=303, x = -1543.62, y = -408.86, z = 41,99},
  {title="Ballas", colour=7, id=303, x = 105.08, y = -1940.42, z = 20.8},
  {title="Vagos", colour=46, id=303, x = 330.77, y = -2036.71, z = 20.99},
  {title="Marabunta", colour=3, id=303, x = 1386.77, y = -1529.74, z = 57.08},
  {title="The Families", colour=2, id=303, x = -182.24, y = -1617.96, z = 33.63}
  }
  Citizen.CreateThread(function()
  
      Citizen.Wait(0)
  
  local bool = true
    
    if bool then
          
      for k,v in pairs(blips) do
             
  
                 zoneblip = AddBlipForRadius(v.x,v.y,v.z, 900.0)
                            SetBlipSprite(zoneblip,1)
                            SetBlipColour(zoneblip,49)
                            SetBlipAlpha(zoneblip,75)
                           
          end
           
      
           for _, info in pairs(blips) do
          
               info.blip = AddBlipForCoord(info.x, info.y, info.z)
                           SetBlipSprite(info.blip, info.id)
                           SetBlipDisplay(info.blip, 4)
                           SetBlipColour(info.blip, info.colour)
                           SetBlipAsShortRange(info.blip, true)
                           BeginTextCommandSetBlipName("STRING")
                           AddTextComponentString(info.title)
                           EndTextCommandSetBlipName(info.blip)
           end
       
       bool = false
     
     end
end)
local blips = {

  {title="Bloods", colour=1, colour2=1, id=303, x = -1543.62, y = -408.86, z = 41,99},
  {title="Ballas", colour=7, id=303, x = 105.08, y = -1940.42, z = 20.8},
  {title="Vagos", colour=46, id=303, x = 330.77, y = -2036.71, z = 20.99},
  {title="Marabunta", colour=3, id=303, x = 1386.77, y = -1529.74, z = 57.08},
  {title="The Families", colour=2, id=303, x = -182.24, y = -1617.96, z = 33.63}
  }
  Citizen.CreateThread(function()
  
      Citizen.Wait(0)
  
  local bool = true
    
    if bool then
          
      for k,v in pairs(blips) do
             
  
                 zoneblip = AddBlipForRadius(v.x,v.y,v.z, 900.0)
                            SetBlipSprite(zoneblip,1)
                            SetBlipColour(zoneblip,49)
                            SetBlipAlpha(zoneblip,75)
                           
          end
           
      
           for _, info in pairs(blips) do
          
               info.blip = AddBlipForCoord(info.x, info.y, info.z)
                           SetBlipSprite(info.blip, info.id)
                           SetBlipDisplay(info.blip, 4)
                           SetBlipColour(info.blip, info.colour)
                           SetBlipAsShortRange(info.blip, true)
                           BeginTextCommandSetBlipName("STRING")
                           AddTextComponentString(info.title)
                           EndTextCommandSetBlipName(info.blip)
           end
       
       bool = false
     
     end
end)
CreateThread(function()
    while not NetworkIsSessionStarted() do Wait(0) end
	Wait(5000)
    TriggerServerEvent('CrewSystem: loadCrew')

	SendNUIMessage({
        configs = true,
        translate = translate,
        NameResource = GetCurrentResourceName()
    })
end)
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local playerCoords = GetEntityCoords(PlayerPedId())
		local closestPed = ESX.Game.GetClosestPed(playerCoords)
		local closestPedCoords = GetEntityCoords(closestPed)
		local zebrane = false

		while #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(closestPed)) <= 1.5 do
			Citizen.Wait(0)
			if IsEntityDead(closestPed) then
				ESX.Game.Utils.DrawText3D(GetEntityCoords(closestPed), "Press [~b~E~w~] to loot body", 0.6, 1)
				if zebrane = false then
					if IsControlJustReleased(0, 51) then
						RequestAnimDict("random@domestic")
						while not HasAnimDictLoaded("random@domestic") do
							Citizen.Wait(1)
						end
						TaskPlayAnim(PlayerPedId(), "random@domestic", "pickup_low", 8.0, -8, 2000, 2, 0, 0, 0, 0)
						Citizen.Wait(2000)
						local randomNumber = math.random(1, #Config.LootItems)
						--print(randomNumber)
						local randomItem = Config.LootItems[randomNumber]
						--print(randomItem)
						TriggerServerEvent('esx_BodyLoot:TakeItem', randomItem)
						zebrane = true
						Citizen.Wait(2000)
						DeleteEntity(closestPed)
					end 
				end 
			end
		end
	end
end)

RegisterCommand(commands.crewmenu, function(source, args)
	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	myItems = {
		{img = "create.png", text = translate.TR_CREATE, text2 = translate.TR_CREATE2, 
		callBack = function()
			local name = InsertValue(translate.TR_CREATE2, '', 20)
			if name and #name > 1 then
				ExecuteCommand(commands.createcrew .. ' ' .. name)
			end
		end},
		{img = "gamer.png", text = translate.TR_JOIN, text2 = translate.TR_JOIN2 .. ' ' .. inviteCrewName, 
		callBack = function()
			ExecuteCommand(commands.joincrew)
		end},
		{img = "invite.png", text =  translate.TR_INVITE, text2 = translate.TR_INVITE2, 
		callBack = function()
			ExecuteCommand(commands.invitecrew)
		end},
		{img = "left.png", text = translate.TR_LEAVE, text2 = translate.TR_LEAVE2, 
		callBack = function()
			ExecuteCommand(commands.leftcrew)
		end},
		{img = "prove.png", text = translate.TR_PROMOTE, text2 = translate.TR_PROMOTE2, 
		callBack = function()
			ExecuteCommand(commands.prove)
		end},
		{img = "demote.png", text = translate.TR_DEMOTE, text2 = translate.TR_DEMOTE2, 
		callBack = function()
			ExecuteCommand(commands.demote)
		end},
		{img = "list.png", text = translate.TR_LIST, text2 = translate.TR_LIST2, 
		callBack = function()
			ExecuteCommand(commands.list)
		end},
		{img = "kick.png", text = translate.TR_KICK_MENU, text2 = translate.TR_KICK_MENU2, 
		callBack = function()
			ExecuteCommand(commands.kick)
		end},
		{img = "rank.png", text = translate.TR_RANK, text2 = translate.TR_RANK2, 
		callBack = function()
			ExecuteCommand(commands.ranking)
		end},
	}
	configs = {
		size = 0.8,
		positionY = "30%"
	}

	IconMenu.OpenMenu(myItems, configs)
end)

RegisterCommand(commands.joincrew, function(source, args)
	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	if inviteCrewName ~= "" then
		TriggerServerEvent("CrewSystem: joinCrew", inviteCrewName)
	end
end)

RegisterNetEvent('CrewSystem: OpenInviteMenu')
AddEventHandler('CrewSystem: OpenInviteMenu', function(players)
	local myItems = {}

	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	for i,k in pairs(players) do
		table.insert(myItems, {
			img = "gamer.png",
			text = k.name,
			text2 = "Invite " .. k.name,
			callBack = function()
				TriggerServerEvent('CrewSystem: InvitePlayer', k.source)
			end
		})
	end

	IconMenu.OpenMenu(myItems)
end)

RegisterNetEvent('CrewSystem: OpenKickMenu')
AddEventHandler('CrewSystem: OpenKickMenu', function(players)
	local myItems = {}

	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	for i,k in pairs(players) do
		table.insert(myItems, {
			img = "gamer.png",
			text = k.name,
			text2 = "Kick " .. k.name,
			callBack = function()
				TriggerServerEvent('CrewSystem: kickPlayer', k.source)
			end
		})
	end

	IconMenu.OpenMenu(myItems)
end)

RegisterNetEvent('CrewSystem: OpenProveMenu')
AddEventHandler('CrewSystem: OpenProveMenu', function(players)
	local myItems = {}

	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	for i,k in pairs(players) do
		table.insert(myItems, {
			img = "gamer.png",
			text = k.name,
			text2 = "Promote " .. k.name,
			callBack = function()
				TriggerServerEvent('CrewSystem: provePlayer', k.source)
			end
		})
	end

	IconMenu.OpenMenu(myItems)
end)

RegisterNetEvent('CrewSystem: OpenDemoteMenu')
AddEventHandler('CrewSystem: OpenDemoteMenu', function(players)
	local myItems = {}

	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	for i,k in pairs(players) do
		table.insert(myItems, {
			img = "gamer.png",
			text = k.name,
			text2 = "Demote " .. k.name,
			callBack = function()
				TriggerServerEvent('CrewSystem: demotePlayer', k.source)
			end
		})
	end

	IconMenu.OpenMenu(myItems)
end)

RegisterNetEvent('CrewSystem: OpenListMenu')
AddEventHandler('CrewSystem: OpenListMenu', function(players)
	local myItems = {}

	if use_script_in_coordinates then
		if not isInCoordinate() then
			TriggerEvent('chat:addMessage', {args = { translate.TR_NOT_COORDINATE } })
			return
		end
	end

	for i,k in pairs(players) do
		table.insert(myItems, {
			img = "gamer.png",
			text = k.name,
			text2 = k.grade .. " " .. k.name,
			callBack = function()
				
			end
		})
	end

	IconMenu.OpenMenu(myItems)
end)


RegisterNetEvent('CrewSystem: receiveInvite')
AddEventHandler('CrewSystem: receiveInvite', function(crewName)
	inviteCrewName = crewName
end)

RegisterNetEvent('CrewSystem: loadCrew')
AddEventHandler('CrewSystem: loadCrew', function(crew)
	myCrew = crew

	removerBlips()
	if enable_blips then
		createBlips()
	end	
end)

RegisterNetEvent('CrewSystem: deletedCrew')
AddEventHandler('CrewSystem: deletedCrew', function()
	myCrew = {}
	removerBlips()
end)

RegisterNetEvent('CrewSystem: OpenRanking')
AddEventHandler('CrewSystem: OpenRanking', function(result)
	TriggerScreenblurFadeIn(0)
	IconMenu.ForceCloseMenu()
	SendNUIMessage({
		openRank = true,
		crews = result
	})
	SetNuiFocus(true, true)
end)

RegisterNUICallback('close', function(data, cb)
	SetNuiFocus(false, false)
	cb('ok')
	TriggerScreenblurFadeOut(0)
end)

local alreadyDead = false
CreateThread(function()
	while true and enable_names do
		if use_script_in_coordinates then
			if isInCoordinate() then
				executeThread()
			end
		else
			executeThread()
		end

		Wait(0)
	end
end)

function executeThread()
	local myPed = GetPlayerPed(-1)
		
	if myCrew and myCrew.players then
		for i,k in pairs(myCrew.players) do
			if k.source ~= -1 then
				local player = GetPlayerFromServerId(k.source)
				local name = GetPlayerName(player)
				local ped = GetPlayerPed(player)
				local pos = GetEntityCoords(ped)
				local blip = GetBlipFromEntity(ped)
				checkBlip(blip)

				-- print(player)
				-- print(name)
				if ped ~= myPed then
					DrawText3D(pos.x, pos.y, pos.z+0.85, name)
				else
					if show_your_name then
						DrawText3D(pos.x, pos.y, pos.z+distance_from_head, name)
					end
				end
			end
		end
	end

	if enable_rank then
		if IsEntityDead(myPed) and not alreadyDead then
			local killerPed = GetPedSourceOfDeath(myPed)

			if IsEntityAPed(killerPed) and IsPedAPlayer(killerPed) then
				local player = NetworkGetPlayerIndexFromPed(killerPed)
				local sourceKiller = GetPlayerServerId(player)
				
				TriggerServerEvent('CrewSystem: addKillCrew', sourceKiller)
				alreadyDead = true
				--resetShortcut()
			end
		end
		if not IsEntityDead(myPed) then
			alreadyDead = false
		end
	end
end

function removerBlips()
	for i,k in pairs(blips) do
		RemoveBlip(k)
	end

	blips = {}
end

function checkBlip(blip)
	local found = false
	for i,k in pairs(blips) do
		if k == blip then
			found = true
		end
	end
	if not found then
		removerBlips()
		createBlips()
	end
end

function createBlips()
	if myCrew and myCrew.players then
		for i,k in pairs(myCrew.players) do
			if k.source ~= -1 then
				
				local player = GetPlayerFromServerId(k.source)
				local ped = GetPlayerPed(player)
				local myPed = GetPlayerPed(-1)

				if ped ~= myPed then
					local blip = AddBlipForEntity(ped)
					
					SetBlipSprite(blip, sprite_blip)
					SetBlipColour(blip, color_blip)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(text_blip)
					EndTextCommandSetBlipName(blip)

					table.insert(blips, blip)
				else
					if show_your_name then
						local blip = AddBlipForEntity(ped)
					
						SetBlipSprite(blip, sprite_blip)
						SetBlipColour(blip, color_blip)

						BeginTextCommandSetBlipName("STRING")
						AddTextComponentString(myCrew.name)
						EndTextCommandSetBlipName(blip)

						table.insert(blips, blip)
					end
				end
			end
		end
	end
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, scaleY*scale)
        SetTextFont(text_font)
        SetTextProportional(true)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(160, 9, 242, 120)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function isInCoordinate()
	local closest = false
	local pos = GetEntityCoords(GetPlayerPed(-1))
	for i,k in pairs(coordinates) do
		if #(pos - k) <= range_use then
			closest = true
			break
		end
	end

	return closest
end

function InsertValue(title, text, maxsize)
	AddTextEntry('FMMC_KEY_TIP1', title)
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", text, "", "", "", maxsize)

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Wait(500)
		return result
	else
		Wait(500)
		return nil
	end
end