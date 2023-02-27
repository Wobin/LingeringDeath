--[[
Title: Lingering Death
Author: Wobin
Date: 27/02/2023
Repository: https://github.com/Wobin/LingeringDeath
]]--
local mod = get_mod("Lingering Death")
local initiated = false

mod:hook_safe(CLASS.HudElementCombatFeed, "init", function(self)    
    if not initiated then      
      mod.CombatFeed = self
      self._notification_templates["default"].total_time = mod:get("combat_list_delay") or 5
      if mod:get("combat_list_notification") then
        mod:echo("Total time is set to: " .. self._notification_templates["default"].total_time)          
      end
      initiated = true
    end
end)