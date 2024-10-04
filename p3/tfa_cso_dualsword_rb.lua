SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O Melees"
SWEP.PrintName = "Dual Sword Rainbow Caster"
SWEP.Author				= "Anri, Meika, Kamikaze, ★Bullet★" --Author Tooltip
SWEP.Purpose = "Slashing everything along it's path. For activating special attack = LMB > Hold RMB > Hold LMB > Hold RMB" --Purpose Tooltip
SWEP.ViewModel = "models/weapons/tfa_cso/c_dualphantomslayer_rb.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_dualsword_thunder_rb.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 80
SWEP.UseHands = true
SWEP.HoldType = "melee"
SWEP.Type	= "Transcendense grade melee weapon"
SWEP.DrawCrosshair = true

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.DisableIdleAnimations = false
SWEP.ProceduralHolsterTime = 0
SWEP.Secondary.CanBash = false

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Lucky Charms"
--SWEP.NZPaPReplacement 	= "tfa_cso_stormgiant_tw"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= true	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1
SWEP.MoveSpeed = 1.2 --Multiply the player's movespeed by this.

SWEP.WElements = {
	["fire_sword"] = { type = "Model", model = "models/weapons/tfa_cso/w_dualsword_fire_rb.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.5, 0, 8.00), angle = Angle(10, -100, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Offset = {
		Pos = {
		Up = -8,
		Right = 1,
		Forward = 4,
		},
		Ang = {
		Up = 180,
		Right = 180,
		Forward = 0
		},
		Scale = 1
}

sound.Add({
	['name'] = "DualSwordRB.Idle",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/dual_sword/idle.wav" },
	['pitch'] = {65,65}
})

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 25*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-180,0,15), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 120, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.130, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DualSword.HitFleshSlash1",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 25*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,35), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 150, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.130, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DualSword.HitFleshSlash2",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_PRIMARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 25*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-180,0,-35), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 150, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.130, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DualSword.HitFleshSlash3",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_PULLBACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 25*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,17.5), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 675, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.03, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.7, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "L", --Swing dir,
		['hitflesh'] = "DualSword.HitFleshSlash1",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
}

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 30*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,90,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 900, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.035, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.035,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.5, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "DualSword.HitFleshStab1",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_MISSRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 32*5, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(0,90,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 3000, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.05, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.05,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 1, --time before next attack
		['hull'] = 256, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "DualSword.HitFleshStab2",
		['hitworld'] = "Weapon_Knife.HitWall",
		['maxhits'] = 25
	}
}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Holster( ... )
    self:SetNextSecondaryFire(0)
    self:SetNextPrimaryFire(0)
	self:StopSound("DualSword.Idle")
	return BaseClass.Holster(self,...)
end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_dualsword_rb")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end

function SWEP:SetupDataTables(...)
    local retVal = BaseClass.SetupDataTables(self, ...)

    self:NetworkVarTFA("Int", "LastPrimaryAttackChoice") -- self:GetLastPrimaryAttackChoice() and self:SetLastPrimaryAttackChoice(number)
    self:NetworkVarTFA("Int", "LastSecondaryAttackChoice") -- self:GetLastSecondaryAttackChoice() and self:SetLastSecondaryAttackChoice(number)

    return retVal
end

function SWEP:ChooseSecondaryAttack()
    local attacks = self:GetStatL("Secondary.Attacks") -- getting the SWEP.Primary.Attacks table

    local lastattack = self:GetLastPrimaryAttackChoice() -- default value is 0 so it'll start with 1 from next line

    local nextattack = lastattack + 1 -- choosing the next attack
    if nextattack > 4 or self:GetComboCount() <= 0 then -- use this if you want choice to start from 1 when leaving mouse key (combo reset), otherwise do self:SetLastPrimaryAttackChoice(0) either in SWEP:Deploy() or SWEP:Holster()
       nextattack = 1
	end
    if nextattack > 4 then -- reset the count if we're going beyond attacks count
        nextattack = 1
    end

    self:SetLastPrimaryAttackChoice(nextattack) -- remembering the current choice for next time
    return nextattack, attacks[nextattack] -- returning the key of SWEP.Primary.Attacks table and the chosen attack table itself
end

function SWEP:ChoosePrimaryAttack()
    local attacks = self:GetStatL("Primary.Attacks") -- getting the SWEP.Primary.Attacks table

    local lastattack = self:GetLastSecondaryAttackChoice() -- default value is 0 so it'll start with 1 from next line

    local nextattack = lastattack + 1 -- choosing the next attack
    if nextattack > 2 or self:GetComboCount() <= 0 then -- use this if you want choice to start from 1 when leaving mouse key (combo reset), otherwise do self:SetLastPrimaryAttackChoice(0) either in SWEP:Deploy() or SWEP:Holster()
       nextattack = 1
	end
    if nextattack > 2 then -- reset the count if we're going beyond attacks count
        nextattack = 1
    end

    self:SetLastSecondaryAttackChoice(nextattack) -- remembering the current choice for next time
    return nextattack, attacks[nextattack] -- returning the key of SWEP.Primary.Attacks table and the chosen attack table itself
end