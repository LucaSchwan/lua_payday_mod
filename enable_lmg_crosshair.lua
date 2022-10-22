local old_init_m60 = WeaponTweakData:_init_m60()
function WeaponTweakData:_init_m60(weapon_data)
	old_init_m60(weapon_data)

	self.m60.stats = {
		zoom = 1,
		total_ammo_mod = 30,
		damage = 420,
		alert_size = 8,
		spread = 13,
		spread_moving = 8,
		recoil = 6,
		value = 9,
		extra_ammo = 51,
		reload = 11,
		suppression = 3,
		concealment = 1
	}
end