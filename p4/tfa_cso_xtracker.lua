SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA CS:O Rifles" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep.
SWEP.Author				= "Kamikaze" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "A RGB rifle with wallhacks missiles. Shoot on the target until all the hit icon were filled, then release RMB and see the missile flies to the target" --Purpose Tooltip
SWEP.Instructions				= "" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair			= true		-- Draw the crosshair?
SWEP.PrintName				= "X-TRACKER"		-- Weapon name (Shown on HUD)
SWEP.Slot				= 2				-- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter if enabled in the GUI.
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.
SWEP.Revolver			= false			-- New TFA Base feature. Tell it that I'm a revolver, not a bolt-action.
SWEP.UseBallistics		= false			-- Enable Ballistics? If this gun uses special tracer effects, don't!
SWEP.Primary.Knockback = 0 
SWEP.ProceduralHolsterTime = 0

--[[WEAPON HANDLING]]--

--Firing related
SWEP.Primary.Sound 			= Sound("XTracker.Fire")				-- This is the sound of the weapon, when you shoot.
SWEP.Primary.Damage_Regular		= 65					-- Damage, in standard damage points.
SWEP.Primary.Damage		= SWEP.Primary.Damage_Regular
SWEP.Primary.Damage_Secondary		= 65					-- Damage, in standard damage points.
SWEP.DamageType = DMG_BULLET --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.
SWEP.Primary.DamageTypeHandled = false
SWEP.Primary.NumShots	= 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic			= true					-- Automatic/Semi Auto
SWEP.Primary.RPM				= 900					-- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi				= 900					-- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.FiresUnderwater = true
--SWEP.Primary.HullSize = 1.25 --Big bullets, increase this value.  They increase the hull size of the hitscan bullets

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "tfa_cso_xtracker"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Razer Mamba Elite"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualinfinityfinal"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

-- Selective Fire Stuff

SWEP.SelectiveFire		= false --Allow selecting your firemode?
SWEP.DisableBurstFire	= true --Only auto/single?
SWEP.OnlyBurstFire		= false --No auto, only burst/single?
SWEP.DefaultFireMode 	= "" --Default to auto or whatev

--Ammo Related

SWEP.Primary.ClipSize			= 50					-- This is the size of a clip
SWEP.Primary.DefaultClip			= 250				-- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo			= "ar2"					-- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.DisableChambering = true --Disable round-in-the-chamber

--Recoil Related
SWEP.Primary.KickUp			= 0.08					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.05					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.075				-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.1 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

--Firing Cone Related

SWEP.Primary.Spread		= .006					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .003	-- Ironsight accuracy, should be the same for shotguns

--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3.5 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.75 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 4 --How much the spread recovers, per second.

--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.


--Penetration Related

SWEP.MaxPenetrationCounter=2 --The maximum number of ricochets.  To prevent stack overflows.

--Misc
SWEP.IronRecoilMultiplier=0.75 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchRecoilMultiplier=0.65  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.JumpRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.WallRecoilMultiplier=1.1  --Multiply recoil by this factor when we're changing state e.g. not completely ironsighted.  This is proportional, not inversely.
SWEP.ChangeStateRecoilMultiplier=1.3  --Multiply recoil by this factor when we're crouching.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier=0.75--Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.ChangeStateAccuracyMultiplier=1.5 --Less is more.  A change of state is when we're in the progress of doing something, like crouching or ironsighting.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.JumpAccuracyMultiplier= 3--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.WalkAccuracyMultiplier= 1.75--Less is more.  Accuracy * 2 = Half as accurate.  Accuracy * 5 = 1/5 as accurate
SWEP.IronSightTime = 0.3 --The time to enter ironsights/exit it.
SWEP.NearWallTime = 0.25 --The time to pull up  your weapon or put it back down
SWEP.ToCrouchTime = 0.05 --The time it takes to enter crouching state
SWEP.WeaponLength = 50 --Almost 3 feet Feet.  This should be how far the weapon sticks out from the player.  This is used for calculating the nearwall trace.
SWEP.MoveSpeed = 0.9 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.8 --Multiply the player's movespeed by this when sighting.
SWEP.SprintFOVOffset = 3.75 --Add this onto the FOV when we're sprinting.

--[[PROJECTILES]]--

SWEP.ProjectileEntity = nil --Entity to shoot
SWEP.ProjectileVelocity = 0 --Entity to shoot's velocity
SWEP.ProjectileModel = nil --Entity to shoot's model

--[[VIEWMODEL]]--

SWEP.ViewModel			= "models/weapons/tfa_cso/c_xtracker.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 80		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= true		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(0,0,0) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0,0,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.

SWEP.Attachments = {
    [1] = { atts = { "cso_xtrackerpaintiron"} },
}

--[[WORLDMODEL]]--

SWEP.WorldModel			= "models/weapons/tfa_cso/w_xtracker_nrm.mdl" -- same case UHGI;DFSD/

SWEP.HoldType 				= "ar2"		-- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
		Pos = {
		Up = -4,
		Right = 0.7,
		Forward = 5,
		},
		Ang = {
		Up = -90,
		Right = 0,
		Forward = 170
		},
		Scale = 1.25
}

SWEP.ThirdPersonReloadDisable=false --Disable third person reload?  True disables.

--[[SCOPES]]--

SWEP.BoltAction			= false  --Unscope/sight after you shoot?
SWEP.Scoped				= true  --Draw a scope overlay?

SWEP.ScopeOverlayThreshold = 0.8 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0 --How long you stay sighted in after shooting, with a bolt action.

SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay

SWEP.Secondary.ScopeTable = {
	["ScopeMaterial"] =  Material("scope/xtracker_scope.png", "smooth"),
	["ScopeBorder"] = Color(53,185,173,14),
	["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 255, ["s"] = 0 }
}

--[[SHOTGUN CODE]]--

SWEP.Shotgun = false --Enable shotgun style reloading.

SWEP.ShellTime			= .35 -- For shotguns, how long it takes to insert a shell.

--[[SPRINTING]]--

SWEP.RunSightsPos = Vector(-5.788, -1.009, 0)
SWEP.RunSightsAng = Vector(-16.223, -35.562, 0)

--[[IRONSIGHTS]]--

SWEP.data 				= {}
SWEP.data.ironsights			= 0 --Enable Ironsights
SWEP.Secondary.IronFOV			= 80					-- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.

SWEP.IronSightsPos = Vector(5.802, -7.447, -0.181)
SWEP.IronSightsAng = Vector(-1.481, 0.98, 0)

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_ANI -- LOCOMOTION_ANI = mdl, LOCOMOTION_HYBRID = ani + lua, LOCOMOTION_LUA = lua only
SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "zoom_in", -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Inward transition
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "zoom_idle", -- Number for act, String/Number for sequence
	}, -- Looping Animation
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "zoom_out", -- Number for act, String/Number for sequence
		["transition"] = true
	}, -- Outward transition
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
		["value"] = "zoom_shoot", -- Number for act, String/Number for sequence
	} -- What do you think
}

--[[INSPECTION]]--

SWEP.InspectPos = nil --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = nil --Replace with a vector, in style of ironsights angle, to be used for inspection
SWEP.InspectionLoop = true --Setting false will cancel inspection once the animation is done.  CS:GO style.

--[[VIEWMODEL ANIMATION HANDLING]]--

SWEP.ShootWhileDraw=false --Can you shoot while draw anim plays?
SWEP.AllowReloadWhileDraw=false --Can you reload while draw anim plays?
SWEP.SightWhileDraw=false --Can we sight in while the weapon is drawing / the draw anim plays?
SWEP.AllowReloadWhileHolster=true --Can we interrupt holstering for reloading?
SWEP.ShootWhileHolster=true --Cam we interrupt holstering for shooting?
SWEP.SightWhileHolster=false --Cancel out "iron"sights when we holster?
SWEP.UnSightOnReload=false --Cancel out ironsights for reloading.
SWEP.IronSightsReloadLock = true
SWEP.IronSightsReloadEnabled = true
SWEP.AllowReloadWhileSprinting=false --Can you reload when close to a wall and facing it?
SWEP.AllowReloadWhileNearWall=false --Can you reload when close to a wall and facing it?
SWEP.SprintBobMult=1.5 -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this > 1 probably for sprinting.
SWEP.IronBobMult=0  -- More is more bobbing, proportionally.  This is multiplication, not addition.  You want to make this < 1 for sighting, 0 to outright disable.
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS!!!!11111oneONEELEVEN

--[[HOLDTYPES]]--

SWEP.IronSightHoldTypeOverride=""  --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride=""  --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.AllowSprintAttack = true

--[[VIEWMODEL BLOWBACK]]--

SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(-0.225,-1,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false
SWEP.Blowback_Shell_Effect = "RifleShellEject"

--[[ANIMATION]]--

SWEP.ForceDryFireOff = false --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = true --Disables empty fire animations.  Set to false to enable them.
SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 40 / 30,
	[ACT_VM_RELOAD_SILENCED] = 40 / 30
}

--If you really want, you can remove things from SWEP.actlist and manually enable animations and set their lengths.

SWEP.SequenceEnabled = {} --Self explanitory.  This can forcefully enable or disable a certain ACT_VM
SWEP.SequenceLength = {}  --This controls the length of a certain ACT_VM
SWEP.SequenceLengthOverride={
//	[ACT_VM_RELOAD] = 2,
}

--[[EFFECTS]]--

--Muzzle Flash

SWEP.MuzzleAttachment			= "1" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
--SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.ShellAttachment			= "2" 		-- Should be "2" for CSS models or "shell" for hl2 models

SWEP.DoMuzzleFlash = true --Do a muzzle flash?
SWEP.CustomMuzzleFlash = true --Disable muzzle anim events and use our custom flashes?
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = "muz_xtracker" --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.

--Tracer Stuff

SWEP.Tracer				= 0		--Bullet tracer.  TracerName overrides this.
SWEP.TracerName 		= "tra_xtracker" 	--Change to a string of your tracer name.  Can be custom.
								--There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 1 	--0 disables, otherwise, 1 in X chance


SWEP.TracerLua 			= nil --Use lua effect, TFA Muzzle syntax.  Currently obsolete.
SWEP.TracerDelay		= 0.01 --Delay for lua tracer effect

--[[EVENT TABLE]]--

SWEP.EventTable = {} --Event Table, used for custom events when an action is played.  This can even do stuff like playing a pump animation after shooting.

--example:
--SWEP.EventTable = {
--	[ACT_VM_RELOAD] = {
--		{ ['time'] = 0.1, ['type'] = "lua", ['value'] = examplefunction, ['client'] = true, ['server'] = false  },
--		{ ['time'] = 0.2, ['type'] = "sound", ['value'] = Sound("ExampleGun.Sound1", ['client'] = true, ['server'] = false ) }
--	}
--}


--[[RENDER TARGET]]--

SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.

SWEP.RTOpaque = false -- Do you want your render target to be opaque?

SWEP.RTCode = nil

--[[AKIMBO]]--

SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right

 --Silencing
SWEP.CanBeSilenced = true --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?

--[[TTT]]--

local gm = engine.ActiveGamemode()
if string.find(gm,"ttt") or string.find(gm,"terrorist") then
	SWEP.Kind = WEAPON_HEAVY
	SWEP.AutoSpawnable = false
	SWEP.AllowDrop = true
	SWEP.AmmoEnt = "item_ammo_smg1_ttt"
	SWEP.Base = "weapon_tttbase"
	DEFINE_BASECLASS("weapon_tttbase")
else
	SWEP.Base = "weapon_base"
	DEFINE_BASECLASS("weapon_base")
end



--[[MISC INFO FOR MODELERS]]--

--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all


ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--

--[[Stuff you SHOULD NOT touch after this]]--

--Allowed VAnimations.  These are autodetected, so not really needed except as an extra precaution.  Do NOT change these, unless absolutely necessary.

SWEP.CanDrawAnimate=true
SWEP.CanDrawAnimateEmpty=true
SWEP.CanDrawAnimateSilenced=false
SWEP.CanHolsterAnimate=true
SWEP.CanHolsterAnimateEmpty=false
SWEP.CanIdleAnimate=true
SWEP.CanIdleAnimateEmpty=true
SWEP.CanIdleAnimateSilenced=false
SWEP.CanShootAnimate=true
SWEP.CanShootAnimateSilenced=false
SWEP.CanReloadAnimate=true
SWEP.CanReloadAnimateEmpty=false
SWEP.CanReloadAnimateSilenced=false
SWEP.CanDryFireAnimate=false
SWEP.CanDryFireAnimateSilenced=false
SWEP.CanSilencerAttachAnimate=false
SWEP.CanSilencerDetachAnimate=false

--Misc

SWEP.ShouldDrawAmmoHUD=false--THIS IS PROCEDURALLY CHANGED AND SHOULD NOT BE TWEAKED.  BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.
SWEP.DefaultFOV=90 --BASE DEPENDENT VALUE.  DO NOT CHANGE OR THINGS MAY BREAK.  NO USE TO YOU.

--Disable secondary crap

SWEP.Secondary.ClipSize			= 0					-- Size of a clip
SWEP.Secondary.DefaultClip			= 0					-- Default ammo to give...
SWEP.Secondary.Automatic			= false					-- Automatic/Semi Auto
SWEP.Secondary.Ammo			= "none" -- Self explanitory, ammo type.

SWEP.ShouldPlayAnim = false
SWEP.RocketCD = 0

SWEP.Base				= "tfa_gun_base"
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_xtracker_nrm")
	SWEP.DrawWeaponSelection = TFA_CSO_DrawWeaponSelection
end

DEFINE_BASECLASS( SWEP.Base )

function SWEP:Initialize()
	BaseClass.Initialize(self)

	self.StatCache_Blacklist["Primary.Damage"] = true
	self.StatCache_Blacklist["Primary.DamageType"] = true
	self.StatCache_Blacklist["Primary.RPM"] = true
	self.StatCache_Blacklist["Primary.AmmoConsumption"] = true
	self.StatCache_Blacklist["Primary.NumShots"] = true
	self.StatCache_Blacklist["TracerName"] = true
	self.StatCache_Blacklist["MuzzleFlashEffect"] = true
	self.StatCache_Blacklist["MuzzleFlashEffectSilenced"] = true
	self.StatCache_Blacklist["Primary.KickUp"] = true
	self.StatCache_Blacklist["Primary.KickDown"] = true
	self.StatCache_Blacklist["Primary.KickHorizontal"] = true
	self.StatCache_Blacklist["Primary.StaticRecoilFactor"] = true
	self.StatCache_Blacklist["Primary.Spread"] = true
	self.StatCache_Blacklist["Primary.IronAccuracy"] = true
	self.StatCache_Blacklist["data.ironsights"] = true

	self:ClearStatCache()
end

function SWEP:AltAttack()
	if not self:CanPrimaryAttack() then return end

	if SERVER or not sp then
		self:ChooseSilenceAnim( not self:GetSilenced() )
		self:SetStatus(TFA.Enum.STATUS_SILENCER_TOGGLE)
		self:SetStatusEnd(CurTime() + self:GetActivityLength( tanim ))
		return
	end
end

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables(self)
	self:NetworkVarTFA("Float", "CSO_NextReloadTime")
	self:NetworkVarTFA("Bool", "CSO_SwitchState")
end

function IsTrackerWeapon(wep)
	if(!IsValid(wep)) then return end
	local bList = {
		["tfa_cso_xtracker"] = true,
		["tfa_cso_wind_tracker"] = true,
		["tfa_cso_fire_tracker"] = true,
		["tfa_cso_lightning_tracker"] = true,
		["tfa_cso_elemental_tracker"] = true,
	}
	return bList[wep:GetClass()]
end

if(CLIENT) then
	local GBG = Material("scope/xtracker/group_bg.png")
	local GHEAD = Material("scope/xtracker/group_head.png")
	local GCHEST = Material("scope/xtracker/group_chest.png")
	local GARMS = Material("scope/xtracker/group_arm.png")
	local GLEGS = Material("scope/xtracker/group_legs.png")
	local GETC = Material("scope/xtracker/group_etc.png")
	local GFLASH = Material("scope/xtracker/group_flash.png")

	function GetHitgroupImage(input)
		local bList = {
			[0] = GETC,
			[1] = GHEAD,
			[2] = GCHEST,
			[3] = GCHEST,
			[4] = GARMS,
			[5] = GARMS,
			[6] = GLEGS,
			[7] = GLEGS,
			[10] = GETC,
		}
		if(bList[input] == nil) then return GETC end
		return bList[input]
	end

	TRHitGroups = {
		[0] = {[0] = -1, [1] = -1, [2] = 255,},
		[1] = {[0] = -1, [1] = -1, [2] = 255,},
		[2] = {[0] = -1, [1] = -1, [2] = 255,},
		[3] = {[0] = -1, [1] = -1, [2] = 255,},
		[4] = {[0] = -1, [1] = -1, [2] = 255,},
		[5] = {[0] = -1, [1] = -1, [2] = 255,},
		[6] = {[0] = -1, [1] = -1, [2] = 255,},
		[7] = {[0] = -1, [1] = -1, [2] = 255,},
		[8] = {[0] = -1, [1] = -1, [2] = 255,},
		[9] = {[0] = -1, [1] = -1, [2] = 255,},
	}

	function GetFixedValue(input) -- From my gamemode, used to make values change in a fixed speed, so it won't speed up on high fps
		local TickRate = math.floor(1 / engine.TickInterval())
		local CurFPS = 1.0 / RealFrameTime()
		local FixValue = math.Clamp(TickRate / CurFPS, -60, 60)
		return input * FixValue
	end

	function IsMaxed()
		for k,v in pairs(TRHitGroups) do
			if(v[0] == -1) then return false end
		end
		return true
	end

	function GetDrawPosX(k, L_RelativeX, R_RelativeX)
		if(k >= 0 && k <= 2) then
			return L_RelativeX + (k * 70)
		end
		if(k >= 3 && k <= 4) then
			return (L_RelativeX + 35) + ((k - 3) * 70)
		end
		if(k >= 5 && k <= 7) then
			return R_RelativeX + ((k - 5) * 70)
		end
		if(k >= 8 && k <= 9) then
			return (R_RelativeX + 35) + ((k - 8) * 70)
		end
		return L_RelativeX
	end

	function GetDrawPosY(k, RelativeY)
		if(k >= 3 && k <= 4) then
			return RelativeY + 60
		end
		if(k >= 8 && k <= 9) then
			return RelativeY + 60
		end
		return RelativeY
	end

	function IsBetterPosition(old, new)
		if(old == -1) then return true end
		-- 4, 5, 6, 7 are arms, legs (*0.5 damage)
		if(old >= 4 && old <= 7) then
			if(GetHitgroupImage(new) != GLEGS && GetHitgroupImage(new) != GARMS) then
				return true
			end
		end
		if(old != 1 && new == 1) then return true end
	end

	hook.Add( "HUDPaint", "TrackerHUDPaint", function()
		local ply = LocalPlayer()
		local wep = ply:GetActiveWeapon()
		if(!IsValid(wep)) then return end
		if(!IsTrackerWeapon(wep)) then return end
		if(wep:GetCSO_SwitchState()) then
		local vPosX = ScrW() / 2
		local vPosY = ScrH() / 1.5
		local vPosXAdjust = 0
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(GBG)
		surface.DrawTexturedRect(vPosX - 300, vPosY, 210, 120)
		surface.DrawTexturedRect(vPosX + 90, vPosY, 210, 120) -- vPos + 210(Image size) + 90 (300 - image size)
			for k,v in pairs(TRHitGroups) do
				if(k < 5) then
					vPosXAdjust = (5 - k) * 90
				else
					vPosXAdjust = (10 - k) * -90
				end
				local L_RelativePosX = vPosX - 300
				local R_RelativePosX = vPosX + 90
				if(v[0] != -1) then
					surface.SetMaterial(GetHitgroupImage(v[0]))
					surface.SetDrawColor(255, 255, 255, 255)
					surface.DrawTexturedRect(GetDrawPosX(k, L_RelativePosX, R_RelativePosX), GetDrawPosY(k, vPosY), 70, 60)
					surface.SetDrawColor(255, 255, 255, v[2])
					v[2] = math.Clamp(v[2] - GetFixedValue(20), 0, 255)
					surface.SetMaterial(GFLASH)
					surface.DrawTexturedRect(GetDrawPosX(k, L_RelativePosX, R_RelativePosX), GetDrawPosY(k, vPosY), 70, 60)
				end
			end
		else
			for k,v in next, TRHitGroups do
				if(v[0] == -1 || v[1] == -1) then TRHitGroups[k][0] = -1 TRHitGroups[k][1] = -1 continue end
				net.Start("CSO_TrackerFireRockets")
				net.WriteInt(v[1], 32)
				net.WriteInt(v[0], 8)
				net.SendToServer()
				TRHitGroups[k][0] = -1
				TRHitGroups[k][1] = -1
			end
		end
	end )

	net.Receive("CSO_TrackerHitGroup", function()
		local ply = LocalPlayer()
		local wep = ply:GetActiveWeapon()
		if(!IsValid(wep)) then return end
		if(!IsTrackerWeapon(wep)) then return end
		if(!wep:GetCSO_SwitchState()) then return end
		local hitgroup = net.ReadInt(8)
		local idx = net.ReadInt(32)
		for k,v in pairs(TRHitGroups) do
			if(v[0] == -1 || IsBetterPosition(v[0], hitgroup)) then -- Re-register if it hits a better position
				TRHitGroups[k][0] = hitgroup -- Gmod's table in fucking read only for me somehow, had to use this way to modify value
				TRHitGroups[k][1] = idx
				TRHitGroups[k][2] = 255
				sound.PlayFile( "sound/weapons/tfa_cso/xtracker/beep.wav", "noplay", function( station, errCode, errStr ) station:Play() end)
				return
			end
		end
	end)

end

if(SERVER) then
	RocketTable = {}

	util.AddNetworkString("CSO_TrackerHitGroup")
	util.AddNetworkString("CSO_TrackerFireRockets")

	net.Receive("CSO_TrackerFireRockets", function(len, ply)
		if(!IsValid(ply)) then return end
		local Target = Entity(net.ReadInt(32))
		local HitGroup = net.ReadInt(8)
		local w = ply:GetActiveWeapon()
		if !IsValid(w) then return end
		if !IsTrackerWeapon(w) then return end -- someone's being naughty
		w:SetNextPrimaryFire(CurTime() + 2.67)
		w:SetStatusEnd(CurTime() + 2.67)
		w.ShouldPlayAnim = true
		table.insert(RocketTable, {
			["oPly"] = ply,
			["tEnt"] = Target,
			["Hitgroup"] = HitGroup,
		})
	end)

	function SendHitGroup(Gidx, Eidx, ply)
		net.Start("CSO_TrackerHitGroup")
		net.WriteInt(Gidx, 8)
		net.WriteInt(Eidx, 32)
		net.Send(ply)
	end

	hook.Add("ScalePlayerDamage", "TrackerHitGroup_Player", function( ply, hitgroup, dmginfo )
		local attacker = dmginfo:GetAttacker()
		if(!IsValid(attacker)) then return end
		if(!attacker:IsPlayer()) then return end
		local wep = attacker:GetActiveWeapon()
		if(!IsValid(wep)) then return end
		if(!IsTrackerWeapon(wep)) then return end
		if(!wep:GetCSO_SwitchState()) then return end
		if(dmginfo:GetDamageType() == 64) then return end
		SendHitGroup(hitgroup, ply:EntIndex(), attacker)
	end)

	hook.Add( "ScaleNPCDamage", "ScaleNPCDamageExample", function( npc, hitgroup, dmginfo )
		local attacker = dmginfo:GetAttacker()
		if(!IsValid(attacker)) then return end
		if(!attacker:IsPlayer()) then return end
		local wep = attacker:GetActiveWeapon()
		if(!IsValid(wep)) then return end
		if(!IsTrackerWeapon(wep)) then return end
		if(!wep:GetCSO_SwitchState()) then return end
		if(dmginfo:GetDamageType() == 64) then return end
		SendHitGroup(hitgroup, npc:EntIndex(), attacker)
	end )
end

function SWEP:Think2(...)
	if(SERVER) then
		if(self.ShouldPlayAnim && !self:IsCurrentlyScoped() && TFA.Enum.ReadyStatus[self:GetStatus()] && !self:GetSprinting()) then
			local vm = self:GetOwner():GetViewModel(0)
			if(vm:GetSequence() != 12) then
				if(vm:GetSequence() != 14) then
					self:SetNextPrimaryFire(CurTime() + 2.67)
					self:SetStatusEnd(CurTime() + 2.67)
					self:SetNWFloat("CSO_NextReloadTime", CurTime() + 2.67)
					vm:SetSequence(14)
					self:GetOwner():EmitSound("weapons/tfa_cso/xtracker/shootb.wav")
					for i = table.Count(RocketTable), 1, -1 do -- Since gmod is fucking retarded (A table with 10 values only runs five of them?) I have use this way)
						if(RocketTable[i] == nil) then continue end
						local dat = RocketTable[i]
						if(dat["oPly"] != self:GetOwner()) then continue end
							timer.Simple(0.45, function()
								local yRand = math.random(0, 1)
								if(yRand == 0) then
									yRand = -1
								end
								yRand = yRand * 90
								local missile = ents.Create("tracker_missile")
								local oPos = (self:GetOwner():GetPos() + Vector(0, 0, 40)) + Angle(math.random(-35, 35), self:GetOwner():EyeAngles().y + yRand, 0):Forward() * 55
									missile:SetPos(oPos)
									missile:SetAngles(self:GetOwner():EyeAngles())
									missile:SetOwner(self:GetOwner())
									missile:Spawn()
									missile.AimTarget = dat["tEnt"]
									missile.HGroup = dat["Hitgroup"]
									util.SpriteTrail(missile, 0, Color(255, 255, 255, 255), false, 2, 1, 0.07, 0.15, "trails/smoke.vmt")
							end)
						table.remove(RocketTable, i)
					end
				else
					self.ShouldPlayAnim = false
				end
			end
		end
	end
	if self:GetStatus() == TFA.Enum.STATUS_SILENCER_TOGGLE and self:GetStatusEnd() <= CurTime() then
		-- condition is inverted since real status will be updated on BaseClass call
		if self:GetSilenced() then
			self.Primary_TFA.Damage = self.Primary_TFA.Damage_Regular
			self.TracerName = "tra_xtracker"
			self.Primary_TFA.RPM = 900
			self.Primary_TFA.AmmoConsumption = 1
			self.Primary_TFA.NumShots = 1
			self.MuzzleFlashEffect = "muz_xtracker"
			self.Primary_TFA.KickUp	= 0.125	
            self.Primary_TFA.KickDown	= 0.10		
            self.Primary_TFA.KickHorizontal	= 0.05	
			self.Primary_TFA.StaticRecoilFactor = 0.25
			self.Primary_TFA.Spread		= .006
            self.Primary_TFA.IronAccuracy = .003	
			self.data.ironsights = 0
			self:ClearStatCache()
		else
			self.TracerName = "tra_xtracker"
			self.Primary_TFA.Damage = self.Primary_TFA.Damage_Regular
			self.Primary_TFA.RPM = 700
			self.Primary_TFA.AmmoConsumption = 1
			self.Primary_TFA.NumShots = 1
			self.MuzzleFlashEffectSilenced = "muz_xtracker"
			self.Primary_TFA.KickUp	= 0.10	
            self.Primary_TFA.KickDown = 0.075				
            self.Primary_TFA.KickHorizontal	= 0.075
			self.Primary_TFA.StaticRecoilFactor = 0.2
			self.Primary_TFA.Spread = .0055
			self.Primary_TFA.IronAccuracy = .00001
            self.data.ironsights = 1
			self:ClearStatCache()
		end
end	
	    if self:GetIronSightsProgress() <= 0.5 and self:GetCSO_SwitchState() then
		    self.TracerName = "tra_xtracker"
			self.Primary_TFA.Damage = self.Primary_TFA.Damage_Regular
			self.Primary_TFA.DamageType = DMG_BULLET
			self.Primary_TFA.RPM = 700
			self.Primary_TFA.AmmoConsumption = 1
			self.Primary_TFA.NumShots = 1
			self.MuzzleFlashEffectSilenced = "muz_xtracker"
			self.Primary_TFA.KickUp	= 0.125	
            self.Primary_TFA.KickDown	= 0.10		
            self.Primary_TFA.KickHorizontal	= 0.05	
			self.Primary_TFA.StaticRecoilFactor = 0.2
			self.Primary_TFA.Spread = .0055
			self.Primary_TFA.IronAccuracy = .00001
		    self:SetCSO_SwitchState(false)
		    self:ClearStatCache()
	elseif self:GetIronSightsProgress() > 0.5 and not self:GetCSO_SwitchState() then
		    self.TracerName = "tra_xtracker"
			self.Primary_TFA.Damage = self.Primary_TFA.Damage_Regular
			self.Primary_TFA.DamageType = DMG_BULLET
			self.Primary_TFA.RPM = 700
			self.Primary_TFA.AmmoConsumption = 1
			self.Primary_TFA.NumShots = 1
			self.MuzzleFlashEffectSilenced = "muz_xtracker"
			self.Primary_TFA.KickUp	= 0.125	
            self.Primary_TFA.KickDown	= 0.13		
            self.Primary_TFA.KickHorizontal	= 0.10	
			self.Primary_TFA.StaticRecoilFactor = 0.25
			self.Primary_TFA.Spread = .0055
			self.Primary_TFA.IronAccuracy = .00001
		    self:SetCSO_SwitchState(true)
		    self:ClearStatCache()
	     end

	BaseClass.Think2(self, ...)
end