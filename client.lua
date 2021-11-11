local markerPos = vector3(2553.98, -604.08, 64.05)
local HasAlreadyGotMessage = false

Citizen.CreateThread(function()
   while true do
	local ped = GetPlayerPed(-1)
   	
	Citizen.Wait(0)
	local playerCoords = GetEntityCoords(ped)
	local distance = #(playerCoords - markerPos)
	local isInMarker = false	

		if distance < 5.0 then
		--DrawMarker(42, markerPos.x, markerPos.y, markerPos.z , 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 0, 0, 50, false, false, 2, nil, nil, false)
	    	if distance < 2.0 then
			   isInMarker = true
			else
			   HasAlreadyGotMessage = false
			end
		else
			Citizen.Wait(2000)
		end
	
		--change character to military Ped
		if isInMarker and not HasAlreadyGotMessage then
		
		RequestModel(0x72C0CAD2)
		govfacility1 = CreatePed(30, 0x72C0CAD2, 2565.12, -598.84, 65.5, 140.91, true, false)
		SetPedArmour(govfacility1, 0)
		SetPedAsEnemy(govfacility1, true)
		SetPedRelationshipGroupHash(govfacility1, 'govfacility')
		GiveWeaponToPed(govfacility1, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		TaskCombatPed(govfacility1, GetPlayerPed(-1))
		SetPedAccuracy(govfacility1, 60)
		SetPedDropsWeaponsWhenDead(govfacility1, false)
		Citizen.Wait(500)

		govfacility2= CreatePed(30, 0x72C0CAD2, 2565.22, -605.76, 64.79, 92.11, true, false)
		SetPedArmour(govfacility2, 0)
		SetPedAsEnemy(govfacility2, true)
		SetPedRelationshipGroupHash(govfacility2, 'govfacility')
		GiveWeaponToPed(govfacility2, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		TaskCombatPed(govfacility2, GetPlayerPed(-1))
		SetPedAccuracy(govfacility2, 60)
		SetPedDropsWeaponsWhenDead(govfacility2, false)
		Citizen.Wait(500)

		RequestModel(0x7A05FA59)
		govfacility3 = CreatePed(30, 0x7A05FA59, 2570.29, -282.27, 92.99, 26.62, true, false)
		SetPedArmour(govfacility3, 0)
		SetPedAsEnemy(govfacility3, true)
		SetPedRelationshipGroupHash(govfacility3, 'govfacility')
		GiveWeaponToPed(govfacility3, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(govfacility3, GetPlayerPed(-1))
		SetPedAccuracy(govfacility3, 60)
		SetPedDropsWeaponsWhenDead(govfacility3, false)
		Citizen.Wait(500)
		
		govfacility4 = CreatePed(30, 0x7A05FA59, 2558.34, -324.43, 93.12, 353.63, true, false)
		SetPedArmour(govfacility4, 0)
		SetPedAsEnemy(govfacility4, true)
		SetPedRelationshipGroupHash(govfacility4, 'govfacility')
		GiveWeaponToPed(govfacility4, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(govfacility4, GetPlayerPed(-1))
		SetPedAccuracy(govfacility4, 60)
		SetPedDropsWeaponsWhenDead(govfacility3, false)
		Citizen.Wait(500)		




		RequestModel(0xB3F3EE34)
		govfacility5 =  CreatePed(30, 0xB3F3EE34, 2574.96, -290.42, 93.08, 285.27, true, false)
		SetPedArmour(govfacility5, 0)
		SetPedAsEnemy(govfacility5, true)
		SetPedRelationshipGroupHash(govfacility5, 'govfacility')
		GiveWeaponToPed(govfacility5, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(govfacility5, GetPlayerPed(-1))
		SetPedAccuracy(govfacility5, 60)
		SetPedDropsWeaponsWhenDead(govfacility4, false)
		Citizen.Wait(500)
		
		govfacility6 =  CreatePed(30, 0xB3F3EE34, 2566.63, -325.29, 92.99, 358.81, true, false)
		SetPedArmour(govfacility6, 0)
		SetPedAsEnemy(govfacility6, true)
		SetPedRelationshipGroupHash(govfacility6, 'govfacility')
		GiveWeaponToPed(govfacility6, GetHashKey('WEAPON_COMBATMG'), 250, false, true)
		TaskCombatPed(govfacility6, GetPlayerPed(-1))
		SetPedAccuracy(govfacility6, 60)
		SetPedDropsWeaponsWhenDead(govfacility4, false)
		Citizen.Wait(500)


		TriggerEvent('chatMessage', 'You do not have authorization to be here. LEAVE NOW!')
		TriggerEvent('chatMessage', 'Lethal force is authorized. LEAVE NOW!')	
		HasAlreadyGotMessage = true
		end
	
   end	
end)