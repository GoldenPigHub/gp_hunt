local sharedItems = exports['qbr-core']:GetItems()

function giveitems(model)
    local _src = source
    local Player = exports['qbr-core']:GetPlayer(_src)
    if model then
        local item = Config.Animals[model].giveitem
        local quantity = math.random(1,3)
        local quantitym = math.random(1,3)
        if item[1] == "pelt" then
            Player.Functions.AddItem('small_leather', quantity)
            Player.Functions.AddItem('meat', quantitym)
            -- TriggerClientEvent("QBCore:Notify", source, "You got</br>"..quantity.."x Small Leather </br> "..quantitym.."x Meat", 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantity.."x Small Leather", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantitym.."x Meat", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
            -- TriggerClientEvent("gp_notify:notify", source, "Lovení", "You got</br>"..quantity.."x Small Leather </br> "..quantitym.."x Meat", "", 3500)
        elseif item[1] == "bigpelt" then
            Player.Functions.AddItem('big_leather', quantity)
            Player.Functions.AddItem('gamey_meat', quantitym)
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantity.."x Big Leather", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantitym.."x Gamey Meat", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
        elseif item[1] == "feathers" then
            Player.Functions.AddItem('feather', quantity)
            Player.Functions.AddItem('meat', quantitym)
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantity.."x Feather", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
            TriggerClientEvent("QBCore:Notify", source, 9, "You got "..quantitym.."x Meat", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
        elseif item[1] == "fish" then
            Player.Functions.AddItem('fish', 1)
            TriggerClientEvent("QBCore:Notify", source, 9, "You got 1x Fish", 1000, 0, 'mp_lobby_textures', 'check', 'COLOR_WHITE')
        end
    end
end

function givereward(context, data, skipfinal)
	local _source = source
    local Player = exports['qbr-core']:GetPlayer(_source)
	
	local money = 0
	local animal, found
	if context == "skinned" then
		animal = Config.Animals[data.model]
		if animal then
			found = true
			money = animal.money or 0
		end
	elseif context == "pelt" then
		animal = Config.Animals[data.model]
		if animal then
			found = true
			money = animal.money or 0
			
			local multiplier = 1.0
			if (animal.poorQualityMultiplier and animal.poor) and (data.quality == animal.poor) then
				multiplier = animal.poorQualityMultiplier
			elseif (animal.goodQualityMultiplier and animal.good) and (data.quality == animal.good) then
				multiplier = animal.goodQualityMultiplier
			elseif (animal.perfectQualityMultiplier and animal.perfect) and (data.quality == animal.perfect) then
				multiplier = animal.perfectQualityMultiplier
			end
			
			money = money * multiplier
		end
	elseif context == "carcass" then
		animal = Config.Animals[data.model]
		if animal then
			found = true
			money = animal.money or 0
		end
	end
	
	if found then
		
		if not skipfinal then
            if money ~= 0 then
                Player.Functions.AddMoney('cash', tonumber(money), 'butcher-payout')
            end
			TriggerClientEvent("gp_hunt:client:removeEntities", _source, data.entity, data.horse)
		end
		
		local itemsAvailable = true 
		local done = false
	end
end

-- Gamey_Meat
RegisterServerEvent("gp_hunt:server:giveitem")
AddEventHandler("gp_hunt:server:giveitem", giveitems)

RegisterServerEvent("gp_hunt:server:givereward")
AddEventHandler("gp_hunt:server:givereward", givereward)

RegisterNetEvent('gp_hunt:server:sellMeat', function(amount)
    local src = source
    local Player = exports['qbr-core']:GetPlayer(source)

    local meatQuantity = Player.Functions.GetItemByName('meat').amount
    local price = amount * Config.ItemShop.meat.price

    if meatQuantity ~= nil then
        if Player.Functions.RemoveItem('meat', amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['meat'], 'remove')
            Player.Functions.AddMoney('cash', tonumber(price), 'butcher-payout')
        end
    end
end)

RegisterNetEvent('gp_hunt:server:sellGoodMeat', function(amount)
    local src = source
    local Player = exports['qbr-core']:GetPlayer(source)

    local goodmeatQuantity = Player.Functions.GetItemByName('gamey_meat').amount
    local price = amount * Config.ItemShop.gameymeat.price

    if goodmeatQuantity ~= nil then
        if Player.Functions.RemoveItem('gamey_meat', amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['gamey_meat'], 'remove')
            Player.Functions.AddMoney('cash', tonumber(price), 'butcher-payout')
        end
    end
end)

RegisterNetEvent('gp_hunt:server:sellSmallSkin', function(amount)
    local src = source
    local Player = exports['qbr-core']:GetPlayer(source)

    local smallskinQuantity = Player.Functions.GetItemByName('small_leather').amount
    local price = amount * Config.ItemShop.smallleather.price

    if smallskinQuantity ~= nil then
        if Player.Functions.RemoveItem('small_leather', amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['small_leather'], 'remove')
            Player.Functions.AddMoney('cash', tonumber(price), 'butcher-payout')
        end
    end
end)

RegisterNetEvent('gp_hunt:server:sellBigSkin', function(amount)
    local src = source
    local Player = exports['qbr-core']:GetPlayer(source)

    local bigskinQuantity = Player.Functions.GetItemByName('big_leather').amount
    local price = amount * Config.ItemShop.bigleather.price

    if bigskinQuantity ~= nil then
        if Player.Functions.RemoveItem('big_leather', amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['big_leather'], 'remove')
            Player.Functions.AddMoney('cash', tonumber(price), 'butcher-payout')
        end
    end
end)