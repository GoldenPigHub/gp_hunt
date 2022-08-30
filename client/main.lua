local pelts = {}
local showingmenu = false

local ButcherPrompt
local hasAlreadyEnteredMarker
local currentZone = nil

local function CloseMenuHunt()
   exports['qbr-menu']:closeMenu()
   showingmenu = false
end

local PromptGorup = GetRandomIntInRange(0, 0xffffff)

function SetupButcherPrompt()
    Citizen.CreateThread(function()
        local str = 'Sell Animal'
        ButcherPrompt = PromptRegisterBegin()
        PromptSetControlAction(ButcherPrompt, 0x27D1C284)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(ButcherPrompt, str)
        PromptSetEnabled(ButcherPrompt, 1)
        PromptSetVisible(ButcherPrompt, 1)
        PromptSetHoldMode(ButcherPrompt, 1)
        PromptSetGroup(ButcherPrompt, PromptGorup)
        PromptRegisterEnd(ButcherPrompt)
    end)
    Citizen.CreateThread(function()
        local str = 'Sell Items'
        ButcherCusPrompt = PromptRegisterBegin()
        PromptSetControlAction(ButcherCusPrompt, 0xA1ABB953)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(ButcherCusPrompt, str)
        PromptSetEnabled(ButcherCusPrompt, 1)
        PromptSetVisible(ButcherCusPrompt, 1)
        PromptSetHoldMode(ButcherCusPrompt, 1)
        PromptSetGroup(ButcherCusPrompt, PromptGorup)
        PromptRegisterEnd(ButcherCusPrompt)
    end)
end

RegisterNetEvent('gp_hunt:OpenHuntMenu', function ()
    showingmenu = true
    local huntMenu = {
        {
            header = "Butcher",
            isMenuHeader = true,
        },
        {
            header = "Meat",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositMeat',
            }
        },
        {
            header = "Good meat",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositGoodMeat',
            }
        },
        {
            header = "Small Leather",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositSmallSkin',
            }
        },
        {
            header = "Big skin",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositBigSkin',
            }
        },
        {
            header = "Fish",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositFish',
            }
        },
        {
            header = "Feather",
            txt = "sell",
            params = {
                event = 'gp_hunt:client:DepositFeather',
            }
        }
    }  
    exports['qbr-menu']:openMenu(huntMenu)
end)

RegisterNetEvent('gp_hunt:client:removeEntities')
AddEventHandler('gp_hunt:client:removeEntities', function(entity, horse)
    -- Remove Animal/Pelt
    if entity ~= nil then
        DeleteEntity(entity)
        Citizen.InvokeNative(0x5E94EA09E7207C16, entity) --Delete Entity
        DeletePed(entity)
    end

    -- Remove pelt from horse
    if horse ~= nil then
        Citizen.InvokeNative(0x627F7F3A0C4C51FF, horse.horse, horse.pelt)
    end
end)

local blip = {}

Citizen.CreateThread(function()
    for _, info in pairs(Config.Shops) do
        local number = #blip + 1
        blip[number] = N_0x554d9d53f696d002(1664425300, info.coords.x, info.coords.y, info.coords.z)
        SetBlipSprite(blip[number], -1665418949, 1)
        SetBlipScale(blip[number], 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip[number], 'Butcher')
    end  
end)

Citizen.CreateThread(function()
    SetupButcherPrompt()
	while true do
		Wait(500)
		local isInMarker, tempZone = false
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        for _,v in pairs(Config.Shops) do 
            local distance = #(coords - v.coords)
            if distance < 1.5 then
                local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
                -- if holding ~= false then
                    isInMarker  = true
                    tempZone = 'Butcher'
                -- end
            end
		end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			currentZone = tempZone
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			currentZone = nil
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

        if currentZone then
            local label  = CreateVarString(10, 'LITERAL_STRING', "Butcher")
            PromptSetActiveGroupThisFrame(PromptGorup, label)
            if PromptHasHoldModeCompleted(ButcherPrompt) then
                SellToButcher()
            elseif PromptHasHoldModeCompleted(ButcherCusPrompt) then
                Wait(50)
                TriggerEvent("gp_hunt:OpenHuntMenu")
			end
        else
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
        Wait(2)
        local player = PlayerPedId()
        local horseMounted = Citizen.InvokeNative(0x4C8B59171957BCF7, player)
        if horseMounted ~= nil then

            local playerCoords = GetEntityCoords(player)
            local horseMountedcoords = GetEntityCoords(horseMounted)
            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, player)
            local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
            local dist = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, horseMountedcoords.x, horseMountedcoords.y, horseMountedcoords.z, 0)

            if 2 > dist then
                local model = GetEntityModel(holding)
                if holding ~= false and Config.Animals[model] == nil then
                    if 2 > Keys(pelts) then

                        local label = CreateVarString(10, 'LITERAL_STRING', Config.Language.stow)
                        PromptSetActiveGroupThisFrame(prompts, label)
                        if Citizen.InvokeNative(0xC92AC953F0A982AE, openButcher) then

                            TaskPlaceCarriedEntityOnMount(player, holding, horse, 1)
                            table.insert(pelts, {
                                holding = holding,
                                quality = quality
                            })

                            Wait(500)
                        end
                    end
                end
            end
        end
    end
end)


function awardQuality(quality, entity, horse, cb)
    local skinFound = false
    for k, v in pairs(Config.Animals) do
        if (quality == v.perfect) or (quality == v.good) or (quality == v.poor) then
			skinFound = k
			break
		end
    end

    if not skinFound then
        -- TriggerEvent("vorp:TipRight", Config.Language.NotInTheButcher, 4000) -- Notification when the animal isn't being sold in the butcher 
    else
        TriggerServerEvent("gp_hunt:server:givereward", "pelt", {model=skinFound,quality=quality,entity=entity,horse=horse}, false)
		cb()
    end
end

function SellToButcher() -- Selling animal function
    local horse = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    local alreadysoldanimal = false
    -- Logic for if a horse is detected
    if horse ~= nil and horse ~= false then
        -- Check if the horse is holding anything
        if Citizen.InvokeNative(0xA911EE21EDF69DAF, horse) ~= false then
            local holding2 = Citizen.InvokeNative(0xD806CD2A4F2C2996, horse) -- Get what the horse is holding
            local model2 = GetEntityModel(holding2)

            local quality2 = Citizen.InvokeNative(0x31FEF6A20F00B963, holding2)
            if Config.Animals[model2] ~= nil then -- Fallback for paying for non pelts
                alreadysoldanimal = true
                TriggerServerEvent("gp_hunt:server:givereward", "carcass", {model=model2,entity=holding2}, false)
            elseif (quality2 ~= false and quality2 ~= nil) then --Award pelt if pelt is on horse
                awardQuality(quality2, holding2, nil, function () 
                    alreadysoldanimal = true
                end)
            end
        elseif Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horse, 0) ~= false then
            for x = #pelts, 1, -1 do
				y = pelts[x]
				if not y.sold then
					y.sold = true
					local q = Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horse, x - 1)
					awardQuality(q, nil, {horse = horse, pelt = q}, function () 
                    	alreadysoldanimal = true
                	end)
				end
                table.remove(pelts, x)
			end
        end
    end

    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId()) -- ISPEDHOLDING
    if holding ~= false and alreadysoldanimal == false then -- Checking if you are holding an animal
        local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
    
        local model = GetEntityModel(holding)
        
        if holding ~= nil then
            local entityNetworkId = NetworkGetNetworkIdFromEntity(holding)
            SetNetworkIdExistsOnAllMachines(entityNetworkId, true)
            local entityId = NetworkGetEntityFromNetworkId(entityNetworkId)
            
            if not NetworkHasControlOfEntity(entityId) then
                NetworkRequestControlOfEntity(entityId)
                NetworkRequestControlOfNetworkId(entityNetworkId)
            end
        end

        if Config.Animals[model] ~= nil then -- Paying for animals
            alreadysoldanimal = true
			TriggerServerEvent("gp_hunt:server:givereward", "carcass", {model=model,entity=holding}, false)
        else -- Paying for skins
            awardQuality(quality, holding, nil, function ()
                alreadysoldanimal = true
            end)
        end
    end
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                if event == 1376140891 then
                    local view = exports["gp_hunt"]:DataViewNativeGetEventData(0, index, 3)
                    local pedGathered = view['2']
                    local ped = view['0']
                    local model = GetEntityModel(pedGathered)

                    -- Bool to let you know if animation/longpress was enacted.
                    local bool_unk = view['4']

                    -- Ensure the player who enacted the event is the one who gets the rewards
                    local player = PlayerPedId()
                    local playergate = player == ped
                    
                    if model and Config.Animals[model] ~= nil and playergate == true and bool_unk == 1 then
                        TriggerServerEvent("gp_hunt:server:giveitem", model)
                    end
                end
            end
        end
    end
end)

function Keys(table)
    local num = 0
    for k, v in pairs(table) do
        num = num + 1
    end
    return num
end

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        PromptSetEnabled(ButcherPrompt, false)
        PromptSetVisible(ButcherPrompt, false)
        for k,v in pairs(blip) do
            RemoveBlip(blip[k])
        end
    end
end)

RegisterNetEvent('gp_hunt:client:DepositMeat', function(amount)
    local depositMeat = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositMeat then
        if not depositMeat.amount then return end
        TriggerServerEvent('gp_hunt:server:sellMeat', tonumber(depositMeat.amount))
    end
end)

RegisterNetEvent('gp_hunt:client:DepositGoodMeat', function(amount)
    local depositGoodMeat = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositGoodMeat then
        if not depositGoodMeat.amount then return end
        TriggerServerEvent('gp_hunt:server:sellGoodMeat', tonumber(depositGoodMeat.amount))
    end
end)

RegisterNetEvent('gp_hunt:client:DepositSmallSkin', function(amount)
    local depositSmallSkin = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositSmallSkin then
        if not depositSmallSkin.amount then return end
        TriggerServerEvent('gp_hunt:server:sellSmallSkin', tonumber(depositSmallSkin.amount))
    end
end)

RegisterNetEvent('gp_hunt:client:DepositBigSkin', function(amount)
    local depositBigSkin = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositBigSkin then
        if not depositBigSkin.amount then return end
        TriggerServerEvent('gp_hunt:server:sellBigSkin', tonumber(depositBigSkin.amount))
    end
end)

RegisterNetEvent('gp_hunt:client:DepositFish', function(amount)
    local depositFish = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositFish then
        if not depositFish.amount then return end
        TriggerServerEvent('gp_hunt:server:sellFish', tonumber(depositFish.amount))
    end
end)

RegisterNetEvent('gp_hunt:client:DepositFeather', function(amount)
    local depositFeather = exports['qbr-input']:ShowInput({
        header = "Amount to sell",
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if depositFeather then
        if not depositFeather.amount then return end
        TriggerServerEvent('gp_hunt:server:sellFeather', tonumber(depositFeather.amount))
    end
end)
