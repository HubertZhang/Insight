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

-- deerclopsspawner.lua [Worldly]
local filename = debug.getinfo(1, "S").source:match("([%w_]+)%.lua$")

local DEERCLOPS_TIMERNAME
local function GetDeerclopsData(self)
	if DEERCLOPS_TIMERNAME == false then
		return {}
	end

	if not self.inst.updatecomponents[self] then
		return {}
	end

	local save_data = self:OnSave()

	local time_to_attack
	if CurrentRelease.GreaterOrEqualTo("R15_QOL_WORLDSETTINGS") then
		if DEERCLOPS_TIMERNAME == nil then
			--DEERCLOPS_TIMERNAME = assert(util.recursive_getupvalue(TheWorld.components[filename].GetDebugString, "DEERCLOPS_TIMERNAME"), "Unable to find \"DEERCLOPS_TIMERNAME\"") --"deerclops_timetoattack"
			DEERCLOPS_TIMERNAME = util.recursive_getupvalue(TheWorld.components[filename].GetDebugString, "DEERCLOPS_TIMERNAME") or false
		end
		time_to_attack = TheWorld.components.worldsettingstimer:GetTimeLeft(DEERCLOPS_TIMERNAME)
	else
		time_to_attack = save_data.timetoattack
	end

	local target = util.getupvalue(self.OnUpdate, "_targetplayer")

	if target then
		target = {
			name = target.name,
			userid = target.userid,
			prefab = target.prefab,
		}
	end

	return {
		time_to_attack = time_to_attack,
		target = target,
		warning = save_data.warning,
	}
end

local function ProcessInformation(context, time_to_attack, target)
	local time_string = context.time:SimpleProcess(time_to_attack)
	local client_table = target and TheNet:GetClientTableForUser(target.userid)

	if not client_table then
		return time_string
	else
		local target_string = string.format("%s - %s", target.name, target.prefab)
		return string.format(
			context.lstr.deerclopsspawner.incoming_deerclops_targeted, 
			Color.ToHex(
				client_table.colour
			),
			target_string, 
			time_string
		)
	end
end

local function Describe(self, context)
	local description = nil
	local data = {}

	if self == nil and context.deerclops_data then
		data = context.deerclops_data
	elseif self and context.deerclops_data == nil then
		data = GetDeerclopsData(self)
	else
		error(string.format("deerclopsspawner.Describe improperly called with self=%s & deerclops_data=%s", tostring(self), tostring(context.deerclops_data)))
	end

	if data.time_to_attack then
		description = ProcessInformation(context, data.time_to_attack, data.target)
	end

	return {
		priority = 10,
		description = description,
		icon = {
			atlas = "images/Deerclops.xml",
			tex = "Deerclops.tex",
		},
		worldly = true,
		time_to_attack = data.time_to_attack,
		target_userid = data.target and data.target.userid or nil,
		warning = data.warning,
	}
end

local function StatusAnnoucementsDescribe(special_data, context)
	if not special_data.time_to_attack then
		return
	end

	local description = nil
	local target = special_data.target_userid and TheNet:GetClientTableForUser(special_data.target_userid)

	if target then
		description = ProcessRichTextPlainly(string.format(
			context.lstr.deerclopsspawner.announce_deerclops_target,
			target.name,
			target.prefab,
			context.time:TryStatusAnnouncementsTime(special_data.time_to_attack)
		))
	else
		description = ProcessRichTextPlainly(string.format(
			context.lstr.deerclopsspawner.deerclops_attack,
			context.time:TryStatusAnnouncementsTime(special_data.time_to_attack)
		))
	end

return {
		description = description,
		append = true
	}
end

local function DangerAnnouncementDescribe(special_data, context)
	-- Funny enough, very similar to logic for status announcements and normal descriptor.
	-- Gets repetitive.
	if not special_data.time_to_attack then
		return
	end

	local description
	local client_table = TheNet:GetClientTableForUser(special_data.target_userid)
	local time_string = context.time:SimpleProcess(special_data.time_to_attack, "realtime")
	
	if not client_table then
		description = string.format(context.lstr[filename].deerclops_attack, time_string)
	else
		description = string.format(
			context.lstr[filename].announce_deerclops_target, 
			client_table.name, 
			client_table.prefab, 
			time_string
		)
	end

	return description, "boss"
end

return {
	Describe = Describe,
	GetDeerclopsData = GetDeerclopsData,
	StatusAnnoucementsDescribe = StatusAnnoucementsDescribe,
	DangerAnnouncementDescribe = DangerAnnouncementDescribe,
}