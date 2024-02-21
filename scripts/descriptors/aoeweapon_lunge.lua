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

-- aoeweapon_lunge.lua (Inherits from aoeweapon_base)
local combatHelper = import("helpers/combat")

local function Describe(self, context)
	local described = Insight.descriptors.aoeweapon_base.DescribeDamage(
		self, 
		context, 
		context.lstr.aoeweapon_lunge.lunge_damage, 
		context.player.components.combat
	)
	described.name = "aoeweapon_lunge"
	described.priority = combatHelper.DAMAGE_PRIORITY - 1
	
	return described, Insight.descriptors.aoeweapon_base.Describe(self, context)
end



return {
	Describe = Describe
}