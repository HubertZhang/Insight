--[[
Copyright (C) 2020, 2021 penguin0616

This file is part of Insight.

The source code of this program is shared under the RECEX
SHARED SOURCE LICENSE (version 1.0).
The source code is shared for referrence and academic purposes
with the hope that people can read and learn from it. This is not
Free and Open Source software, and code is not redistributable
without permission of the author. Read the RECEX SHARED
SOURCE LICENSE for details
The source codes does not come with any warranty including
the implied warranty of merchandise.
You should have received a copy of the RECEX SHARED SOURCE
LICENSE in the form of a LICENSE file in the root of the source
directory. If not, please refer to
<https://raw.githubusercontent.com/Recex/Licenses/master/SharedSourceLicense/LICENSE.txt>
]]

-- spawner.lua
local wsth = import("helpers/worldsettingstimer")

local function Describe(self, context)
	if not context.config["display_spawner_information"] then
		return
	end

	if not self.childname then
		return
	end
	
	local inst = self.inst
	local description, alt_description

	local respawn_time

	-- SPAWNER_STARTDELAY_TIMERNAME
	if self.useexternaltimer then
		respawn_time = self.inst.components.worldsettingstimer and self.inst.components.worldsettingstimer:GetTimeLeft(wsth.SPAWNER_STARTDELAY_TIMERNAME)
	else
		respawn_time = self.nextspawntime and (self.nextspawntime - GetTime()) or nil
	end

	if respawn_time then
		description = subfmt(context.lstr.spawner.next, { child_name=self.childname, respawn_time=context.time:SimpleProcess(respawn_time) })
	else
		alt_description = string.format(context.lstr.spawner.child, self.childname)
	end

	return {
		priority = 1,
		description = description,
		alt_description = alt_description,
		respawn_time = respawn_time
	}
end



return {
	Describe = Describe
}