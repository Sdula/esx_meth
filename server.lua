

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)




RegisterServerEvent("KMeth:get")
AddEventHandler("KMeth:get", function()
    local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	
		
				if xPlayer.getInventoryItem('meth').count <= 10000000000000000 then
					xPlayer.addInventoryItem("meth", math.random(1,2))
					else
					TriggerClientEvent('esx:showNotification', source, '~r~You cant hold any more coca leaves')
				end

			
end)




ESX.RegisterServerCallback('KMeth:process', function (source, cb)
	
	local _source = source
	
	local xPlayer  = ESX.GetPlayerFromId(_source)
			
			
				if xPlayer.getInventoryItem('meth').count >= 2 then
					xPlayer.removeInventoryItem('meth', 2) 
					xPlayer.addInventoryItem('meth_pooch', 1) 
					cb(true)
				else
				TriggerClientEvent('esx:showNotification', source, '~r~Nemas Meth')
				cb(false)
				end
			

end)



