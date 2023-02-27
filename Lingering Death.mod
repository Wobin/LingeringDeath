return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Lingering Death` encountered an error loading the Darktide Mod Framework.")

		new_mod("Lingering Death", {
			mod_script       = "Lingering Death/scripts/mods/Lingering Death/Lingering Death",
			mod_data         = "Lingering Death/scripts/mods/Lingering Death/Lingering Death_data",
			mod_localization = "Lingering Death/scripts/mods/Lingering Death/Lingering Death_localization",
		})
	end,
	packages = {},
}
