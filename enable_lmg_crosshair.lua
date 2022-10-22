function WeaponTweakData:_init_m60(weapon_data)
	self.m60 = {
		categories = {
			"lmg"
		},
		damage_melee = weapon_data.damage_melee_default,
		damage_melee_effect_mul = weapon_data.damage_melee_effect_multiplier_default,
		sounds = {}
	}
	self.m60.sounds.fire = "m60_fire_single"
	self.m60.sounds.fire_single = "m60_fire_single"
	self.m60.sounds.fire_auto = "m60_fire"
	self.m60.sounds.stop_fire = "m60_stop"
	self.m60.sounds.dryfire = "primary_dryfire"
	self.m60.sounds.enter_steelsight = "lmg_steelsight_enter"
	self.m60.sounds.leave_steelsight = "lmg_steelsight_exit"
	self.m60.timers = {
		reload_not_empty = 6.25,
		reload_empty = 6.25,
		unequip = 0.9,
		equip = 0.9,
		deploy_bipod = 1
	}
	self.m60.bipod_camera_spin_limit = 40
	self.m60.bipod_camera_pitch_limit = 15
	self.m60.bipod_weapon_translation = Vector3(-8.5, 20, -5)
	self.m60.bipod_deploy_multiplier = 1
	self.m60.name_id = "bm_w_m60"
	self.m60.desc_id = "bm_w_m60_desc"
	self.m60.description_id = "des_m60"
	self.m60.global_value = "atw"
	self.m60.texture_bundle_folder = "atw"
	self.m60.muzzleflash = "effects/payday2/particles/weapons/big_762_auto_fps"
	self.m60.shell_ejection = "effects/payday2/particles/weapons/shells/shell_556_lmg"
	self.m60.use_data = {
		selection_index = SELECTION.PRIMARY
	}
	self.m60.DAMAGE = 1
	self.m60.damage_falloff = FALLOFF_TEMPLATE.LMG_FALL_HIGH
	self.m60.CLIP_AMMO_MAX = 200
	self.m60.NR_CLIPS_MAX = 1.5
	self.m60.AMMO_MAX = self.m60.CLIP_AMMO_MAX * self.m60.NR_CLIPS_MAX
	self.m60.AMMO_PICKUP = self:_pickup_chance(self.m60.AMMO_MAX, PICKUP.LMG_HIGH_CAPACITY)
	self.m60.FIRE_MODE = "auto"
	self.m60.fire_mode_data = {
		fire_rate = 0.109
	}
	self.m60.CAN_TOGGLE_FIREMODE = false
	self.m60.auto = {
		fire_rate = 0.109
	}
	self.m60.spread = {
		standing = self.new_m4.spread.standing,
		crouching = self.new_m4.spread.crouching,
		steelsight = self.new_m4.spread.steelsight,
		moving_standing = self.new_m4.spread.moving_standing,
		moving_crouching = self.new_m4.spread.moving_crouching,
		moving_steelsight = self.new_m4.spread.moving_steelsight,
		bipod = weapon_data.default_bipod_spread
	}
	self.m60.kick = {
		standing = {
			-0.2,
			0.8,
			-1,
			1.4
		}
	}
	self.m60.kick.crouching = self.m60.kick.standing
	self.m60.kick.steelsight = self.m60.kick.standing
	self.m60.crosshair = {
		standing = {},
		crouching = {},
		steelsight = {}
	}
	self.m60.crosshair.standing.offset = 0.16
	self.m60.crosshair.standing.moving_offset = 1
	self.m60.crosshair.standing.kick_offset = 0.8
	self.m60.crosshair.crouching.offset = 0.1
	self.m60.crosshair.crouching.moving_offset = 0.6
	self.m60.crosshair.crouching.kick_offset = 0.4
	self.m60.crosshair.steelsight.hidden = true
	self.m60.crosshair.steelsight.offset = 0
	self.m60.crosshair.steelsight.moving_offset = 0
	self.m60.crosshair.steelsight.kick_offset = 0.14
	self.m60.shake = {
		fire_multiplier = 0.5,
		fire_steelsight_multiplier = -0.5
	}
	self.m60.autohit = weapon_data.autohit_lmg_default
	self.m60.aim_assist = weapon_data.aim_assist_lmg_default
	self.m60.weapon_hold = "m60"
	self.m60.animations = {
		equip_id = "equip_m60",
		fire = "recoil",
		reload = "reload",
		reload_not_empty = "reload_not_empty",
		recoil_steelsight = true,
		bipod_enter = "bipod_enter",
		bipod_exit = "bipod_exit",
		bipod_recoil = "bipod_recoil",
		bipod_recoil_enter = "bipod_recoil",
		bipod_recoil_loop = "bipod_recoil_loop",
		bipod_recoil_exit = "bipod_recoil_exit"
	}
	self.m60.panic_suppression_chance = 0.2
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