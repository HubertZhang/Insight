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

-- beequeenhive.lua [Prefab]
local BEE_QUEEN_HIVE_STAGES = {
	[1] = "hivegrowth1",
	[2] = "hivegrowth2",
	[3] = "hivegrowth",
}

local function GetRespawnTime(inst)
	local remaining_time

	for stage, name in pairs(BEE_QUEEN_HIVE_STAGES) do
		local t = inst.components.timer:GetTimeElapsed(name) -- how far we are in the timer, instead of how much time left
		if t then
			remaining_time = TUNING.BEEQUEEN_RESPAWN_TIME
			for _ = 1, stage - 1 do
				remaining_time = remaining_time - TUNING.BEEQUEEN_RESPAWN_TIME / #BEE_QUEEN_HIVE_STAGES
			end
			remaining_time = remaining_time - t
			break
		end
	end

	return remaining_time
end

local function RemoteDescribe(data, context)
	local beequeen_respawn = data or -1
	if beequeen_respawn >= 0 then
		local description = context.time:SimpleProcess(beequeen_respawn)
		return {
			description = description,
			icon = {
				atlas = "images/Beequeen.xml",
				tex = "Beequeen.tex",
			},
			worldly = true, -- meeeh
			prefably = true,
			from = "prefab",
			time_to_respawn = beequeen_respawn,
		}
	end

	return nil
end

local function StatusAnnoucementsDescribe(special_data, context)
	if not special_data.time_to_respawn then
		return
	end

	local description = string.format(
		ProcessRichTextPlainly(context.lstr.beequeenhive.time_to_respawn),
		context.time:TryStatusAnnouncementsTime(special_data.time_to_respawn)
	)

	return {
		description = description,
		append = true
	}
end

return {
	GetRespawnTime = GetRespawnTime,
	
	RemoteDescribe = RemoteDescribe,
	StatusAnnoucementsDescribe = StatusAnnoucementsDescribe,
}
