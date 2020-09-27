ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local quitardinero = false

function pagaranuncios (source, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local getmoney = xPlayer.getMoney()
    local dinero = Config.pagartrabajo
    if  getmoney >= dinero then
    	  xPlayer.removeMoney(dinero)
     	   quitardinero = true
  	    else
        quitardinero = false
    end
end

RegisterCommand("adlspd", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'police' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'lspd', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('No eres policia')	
    end
end, false)

RegisterCommand("adems", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'ambulance' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'ems', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('No eres ems')	
    end
end, false)

RegisterCommand("admecanico", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'mecanico' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'mecanico', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('No eres mecanico')	
    end
end, false)

RegisterCommand("adtaxi", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'taxi' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'taxi', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('No eres taxista')	
    end
end, false)





