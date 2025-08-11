require('Utilities')
require('Debug')

-- returns the lone druid bear entity if it exists
function FindLoneDruidBear()
	local units = FindUnitsInRadius(2,
	                              Vector(0, 0, 0),
	                              nil,
	                              FIND_UNITS_EVERYWHERE,
	                              3,
	                              DOTA_UNIT_TARGET_HERO,
	                              88,
	                              FIND_ANY_ORDER,
	                              false);                             
	for _, unit in pairs(units) do
		if unit:GetName() == 'npc_dota_lone_druid_bear' then
			Debug:Print('Found lone druid bear.')
			return unit
		else
			Debug:Print(unit:GetName())
		end
	end	      
	-- nil if not found   
	Debug:Print('Could not find lone druid bear.')
	return nil
end                     

FindLoneDruidBear()