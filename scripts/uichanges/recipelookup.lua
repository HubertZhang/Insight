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

-- This is the recipe lookup button related stuff.
local module = {}

local InsightButton = import("widgets/insightbutton")
local RecipePopupExists, RecipePopup = pcall(function() return require("widgets/recipepopup") end) -- Old recipe popup
local CraftingMenuDetailsExists, CraftingMenuDetails = pcall(function() return require("widgets/redux/craftingmenu_details") end)

local mod_tint = { 0, 1, 0, 1 }
local normal_tint = { 1, 1, 1, 1 }

--================================================================================================================================================================--
--= Recipe Thingamjig ============================================================================================================================================--
--================================================================================================================================================================--
local recipe_urls = {}
local function GetRecipeURL(recipe)
	-- Returns URL, modded
	-- if not good, URL is nil
	if recipe_urls[recipe.name] then
		return unpack(recipe_urls[recipe.name])
	end

	--dprint('lookup', recipe and recipe.product)
	if not _G.Prefabs[recipe.product] or not _G.Prefabs[recipe.product].fn then
		dprint('[GetRecipeURL] Rejected e1, cannot find recipe product in prefabs')
		return nil
	end

	local ctor = _G.Prefabs[recipe.product].fn
	local info = debug.getinfo(ctor, "S")


	local parent = string.match(info.source, "(.*)scripts%/prefabs%/")
	local mod_folder_name = parent and string.match(parent, "mods%/([^/]+)%/")
	--mprint("hey:", recipe.product, info.source, parent, mod_folder_name)

	-- if DST, parent is empty string
	-- if DS, source is @C:/Program Files (x86)/Steam/steamapps/common/dont_starve/data/scripts/prefabs/scienceprototyper.lua
	--	and parent is @C:/Program Files (x86)/Steam/steamapps/common/dont_starve/data/
	if info.source == "scripts/prefabutil.lua" or (parent and (parent == "" or parent:sub(-17) == "dont_starve/data/")) then
		-- vanilla
		if not STRINGS.NAMES[string.upper(recipe.product)] then
			recipe_urls[recipe.name] = { nil, nil }
			return recipe_urls[recipe.name]
		end

		local url = "https://dontstarve.fandom.com/wiki/" .. STRINGS.NAMES[string.upper(recipe.product)]:gsub("%s", "_")
		recipe_urls[recipe.name] = { url, false }

		return url, false
	end

	-- modded
	for _, modname in pairs(ModManager:GetEnabledModNames()) do
		if modname == mod_folder_name then
			local modinfo = KnownModIndex:GetModInfo(modname)
			if type(modinfo.forumthread) == "string" and modinfo.forumthread ~= "" then
				recipe_urls[recipe.name] = { modinfo.forumthread, true }
				return unpack(recipe_urls[recipe.name])
			else
				local workshop_id = string.match(mod_folder_name, "workshop%-(%d+)")
				if workshop_id then
					local url = "https://steamcommunity.com/sharedfiles/filedetails/?id=" .. workshop_id
					recipe_urls[recipe.name] = { url, true }
					return url, true
				end
			end
		end
	end

	recipe_urls[recipe.name] = { nil, nil }
	return nil
end

--================================================================================================================================================================--
--= Old Crafting Menu ============================================================================================================================================--
--================================================================================================================================================================--
--- The replacement for the default RecipePopup.Refresh()
local function RecipePopup_Refresh(self)
	--mprint"refresh"
	module.oldRecipePopup_Refresh(self)
	local context = localPlayer and GetPlayerContext(localPlayer)
	if not context or not context.config["display_crafting_lookup_button"] then
		--dprint("rejected, 1", self.recipe and self.recipe.product)
		return
	end

	if not self.name then
		return
	end

	if self.lookup and self.lookup.inst:IsValid() then
		--dprint("Lookup already exists, adjusting.")
		self.lookup:SetPosition(self.name:GetRegionSize() / 2 + self.name:InsightGetSize() / 2 - 8, 2)
		local url, modded = GetRecipeURL(self.recipe)
		if url then
			if modded then
				self.lookup.button.image:SetTint(unpack(mod))
			else
				self.lookup.button.image:SetTint(unpack(normal))
			end
		else
			self.lookup:Kill()
			self.lookup = nil
		end
		--dprint("rejected, 2", self.recipe and self.recipe.product)
		return
	end

	if not self.recipe then
		--dprint("rejected, 3", self.recipe and self.recipe.product)
		return
	end

	local url, modded = GetRecipeURL(self.recipe)
	if not url then
		--dprint("rejected, 4", self.recipe and self.recipe.product)
		return
	end

	local header = self.name
	self.lookup = header:AddChild(InsightButton())
	self.lookup.button:SetTextures("images/Magnifying_Glass.xml", "Magnifying_Glass.tex")
	widgetLib.imagebutton.ForceImageSize(self.lookup.button, header:InsightGetSize(), header:InsightGetSize())
	self.lookup:SetPosition(header:GetRegionSize() / 2 + header:InsightGetSize() / 2, 0)
	self.lookup.button.scale_on_focus = false
	widgetLib.imagebutton.OverrideFocuses(self.lookup.button)
	self.lookup.button:SetTooltip("Click to lookup item (will open browser/steam overlay).")

	if modded then
		self.lookup.button.image:SetTint(unpack(mod_tint))
	else
		self.lookup.button.image:SetTint(unpack(normal_tint))
	end

	self.lookup:SetOnClick(function()
		VisitURL(GetRecipeURL(self.recipe))
	end)
end

--- Returns whether the old crafting system is available.
-- @return boolean
module.IsUsingOldCraftingMenu = function() 
	return RecipePopupExists
end

--- Hooks into the old crafting system's RecipePopup
module.HookOldCraftingMenu = function()
	assert(module.IsUsingOldCraftingMenu(), "Trying to hook RecipePopup despite it not being available.")

	module.oldRecipePopup_Refresh = RecipePopup.Refresh
	RecipePopup.Refresh = RecipePopup_Refresh
end


--================================================================================================================================================================--
--= New Crafting Menu ============================================================================================================================================--
--================================================================================================================================================================--
local function CraftingMenuDetails_PopulateRecipeDetailPanel(self, ...)
	-- Yeah, yeah. No returning...
	module.oldCraftingMenuDetails_PopulateRecipeDetailPanel(self, ...)

	local data = ...
	if not data then
		return
	end

	local recipe = data.recipe
	
	local root_left = GetWidgetChildByName(self, "left_root")
	if not root_left then
		dprint("Missing left_root")
		table.foreach(self:GetChildren(), dprint)
		return 
	end

	
	if self.lookup and self.lookup.inst:IsValid() then
		return
	end
	

	local top = -5
	local width = self.panel_width / 2
	local name_font_size = 30
	local y = top

	self.lookup = root_left:AddChild(InsightButton())
	self.lookup.button:SetTextures("images/Magnifying_Glass.xml", "Magnifying_Glass.tex")
	widgetLib.imagebutton.ForceImageSize(self.lookup.button, name_font_size, name_font_size)
	self.lookup:SetPosition(width / 2 + 0, y - name_font_size/2)
	self.lookup.button.scale_on_focus = false
	widgetLib.imagebutton.OverrideFocuses(self.lookup.button)
	self.lookup.button:SetTooltip("Click to lookup item (will open browser/steam overlay).")

	if modded then
		self.lookup.button.image:SetTint(unpack(mod_tint))
	else
		self.lookup.button.image:SetTint(unpack(normal_tint))
	end

	self.lookup:SetOnClick(function()
		if not self.data or not self.data.recipe then return mprint("Missing recipe data for lookup.") end
		VisitURL(GetRecipeURL(self.data.recipe))
	end)
end

module.IsUsingNewCraftingMenu = function()
	return CraftingMenuDetailsExists
end

module.HookNewCraftingMenu = function()
	assert(module.IsUsingNewCraftingMenu(), "Trying to hook CraftingMenuDetails despite it not being available.")

	module.oldCraftingMenuDetails_PopulateRecipeDetailPanel = CraftingMenuDetails.PopulateRecipeDetailPanel
	CraftingMenuDetails.PopulateRecipeDetailPanel = CraftingMenuDetails_PopulateRecipeDetailPanel
end


return module