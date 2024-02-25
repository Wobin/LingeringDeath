--[[
Title: Lingering Death
Author: Wobin
Date: 23/02/2024
Version: 1.3
Repository: https://github.com/Wobin/LingeringDeath
]]--
local mod = get_mod("Lingering Death")

mod:hook(CLASS.HudElementCombatFeed, "_create_notification_entry", function(func, self, notification_type)    
    local notif = func(self, notification_type)
    if notif then
      notif.total_time = mod:get("combat_list_delay") or 5
    end
    return notif 
end)