
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