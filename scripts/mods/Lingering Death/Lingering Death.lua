--[[
Title: Lingering Death
Author: Wobin
Date: 27/04/2024
Version: 1.4
Repository: https://github.com/Wobin/LingeringDeath
]]--
local mod = get_mod("Lingering Death")

mod:hook_safe("HudElementCombatFeed", "init", function(self)
    self._message_duration = mod:get("combat_list_delay") or 5
end)