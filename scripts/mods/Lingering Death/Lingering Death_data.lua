local mod = get_mod("Lingering Death")

return {
	name = "Lingering Death",
	description = mod:localize("mod_description"),
	is_togglable = true,
   options = {
      widgets = {
         {
                setting_id = "combat_list_notification",
                type = "checkbox",
                default_value = true,
                change = function(new_value)
                    mod:set("combat_list_notification", new_value)
                end,
                get = function()
                    return mod:get("combat_list_notification")
                end,
            },
      {
        setting_id = "combat_list_delay",
        type = "numeric",
        range = { 1, 60 },
        default_value = 5,
        decimals_number = 0,
        step_size_value = 1,
        change = function(new_value)
            mod:set("combat_list_delay", new_value)
            mod.CombatFeed._notification_templates["default"].total_time = new_value
        end,
        get = function()
            return mod:get("combat_list_delay") or 5
        end
      },
    }
  }
}