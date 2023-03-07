--[[
Title: Lingering Death
Author: Wobin
Date: 27/02/2023
Repository: https://github.com/Wobin/LingeringDeath
]]--
local mod = get_mod("Lingering Death")

mod:hook(CLASS.HudElementCombatFeed, "_create_notification_entry", function(func, self, notification_type)    
    local notif = func(self, notification_type)
    notif.total_time = mod:get("combat_list_delay") or 5
    return notif 
end)