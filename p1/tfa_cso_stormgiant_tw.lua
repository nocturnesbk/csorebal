SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O Melees"
SWEP.PrintName = "Warhammer Storm Giant Bloodlord"
SWEP.Author	= "Kamikaze, Meika, ★Bullet★" --Author Tooltip
SWEP.Purpose = "Maximum Bonking Machine. Hold LMB when weapon draw to for draw combo attack" --Purpose Tooltip
SWEP.ViewModel = "models/weapons/tfa_cso/c_stormgiant_tw.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_storm_giant_tw.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Yuan Blood Hell"
SWEP.NZPaPReplacement 	= "tfa_cso_stormgiant_v8"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= true	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= true	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.ProceduralHolsterTime = 0
SWEP.Precision = 1

SWEP.Offset = {
		Pos = {
		Up = -23,
		Right = 1.5,
		Forward = 3,
		},
		Ang = {
		Up = 90,
		Right = 90,
		Forward = 0
		},
		Scale = 1.5
}

sound.Add({
	['name'] = "StormGiant.Draw",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Draw_Attack",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/draw_attack.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Idle",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/idle.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash1.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash2.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash1_Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash1_hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.Midslash2_Hit",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/midslash2_hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.HitFlesh",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/hit_flesh1.wav", "weapons/tfa_cso/stormgiant/hit_flesh2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "StormGiant.HitWorld",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/stormgiant/hit_world1.wav", "weapons/tfa_cso/stormgiant/hit_world2.wav", "weapons/tfa_cso/stormgiant/hit_world3.wav"},
	['pitch'] = {100,100}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 160, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-240,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2000, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.5, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "R", --Swing dir,
		['hitflesh'] = "StormGiant.HitFlesh",
		['hitworld'] = "StormGiant.HitWorld",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 160, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,0,-100), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 2500, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 1, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 1,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1.3, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "StormGiant.HitFlesh",
		['hitworld'] = "StormGiant.HitWorld",
		['maxhits'] = 25
	}
}
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_stormgiant_tw")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end
