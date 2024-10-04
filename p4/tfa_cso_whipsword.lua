SWEP.Base = "tfa_melee_base"
SWEP.Category = "TFA CS:O Melees"
SWEP.PrintName = "Whip Sword"
SWEP.Author				= "Kamikaze" --Author Tooltip
SWEP.Type	= "Transcendent grade melee weapon"
SWEP.ViewModel = "models/weapons/tfa_cso/c_whipsword.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_whipsword.mdl"
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 85
SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.DrawCrosshair = true
SWEP.Primary.Knockback = 0 

SWEP.Primary.Directional = false

SWEP.Spawnable = true
SWEP.AdminOnly = false

--[[INSPECTION]]--
SWEP.InspectPos = Vector(0, 0, 0)
SWEP.InspectAng = Vector(0, 0, 0)

SWEP.DisableIdleAnimations = false

SWEP.Secondary.CanBash = false

-- nZombies Stuff
SWEP.NZWonderWeapon		= true	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "Magic Slayer"
--SWEP.NZPaPReplacement 	= "tfa_cso_dualsword"	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.
SWEP.PaPMats			= {}

SWEP.Precision = 50
SWEP.Secondary.MaxCombo = -1
SWEP.Primary.MaxCombo = -1

SWEP.Offset = {
		Pos = {
		Up = -8,
		Right = 2.5,
		Forward = 3,
		},
		Ang = {
		Up = -5,
		Right = 100,
		Forward = -60
		},
		Scale = 1
}


sound.Add({
	['name'] = "WhipSword.Draw",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/whipsword/draw.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Slash",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/whipsword/slash1.wav", "weapons/tfa_cso/whipsword/slash2.wav", "weapons/tfa_cso/whipsword/slash3.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Slash1_End",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/whipsword/slash1_end.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Slash_Skill",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/whipsword/slash_skill.wav" },
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Stab1",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/whipsword/stab1.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Stab2",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/whipsword/stab2.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "WhipSword.Stab12_End",
	['channel'] = CHAN_STATIC,
	['sound'] = { "weapons/tfa_cso/whipsword/stab12_end.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "PrismSword.HitFleshSlash",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/magicknife/hit.wav"},
	['pitch'] = {100,100}
})
sound.Add({
	['name'] = "PrismSword.HitWall",
	['channel'] = CHAN_WEAPON,
	['sound'] = { "weapons/tfa_cso/magicknife/wall.wav" },
	['pitch'] = {100,100}
})

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 185, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,0), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 750, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.05, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.05,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.6, --time before next attack
		['hull'] = 32, --Hullsize
		['direction'] = "F", --Swing dir,
		['hitflesh'] = "PrismSword.HitFleshSlash",
		['hitworld'] = "PrismSword.HitWall",
		['maxhits'] = 25
	}
}

SWEP.Secondary.Attacks = {
	{
		['act'] = ACT_VM_HITLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 175, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(180,0,-75), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 500, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.12, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.12,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.3, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "PrismSword.HitFleshSlash",
		['hitworld'] = "PrismSword.HitWall",
		['maxhits'] = 25
	},
	{
		['act'] = ACT_VM_HITRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 175, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-120,0,-75), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 500, --Nope!! Not overpowered!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.12, --Delay
		['spr'] = true, --Allow attack while sprinting?
		['snd'] = "TFABaseMelee.Null", -- Sound ID
		['snd_delay'] = 0.12,
		["viewpunch"] = Angle(0,0,0), --viewpunch angle
		['end'] = 0.3, --time before next attack
		['hull'] = 128, --Hullsize
		['direction'] = "F", --Swing dir
		['hitflesh'] = "PrismSword.HitFleshSlash",
		['hitworld'] = "PrismSword.HitWall",
		['maxhits'] = 25
	}
}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Holster( ... )
	self:StopSound("Hellfire.Idle")
	return BaseClass.Holster(self,...)
end
if CLIENT then
	SWEP.WepSelectIconCSO = Material("vgui/killicons/tfa_cso_whipsword")
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

    local lastattack = self:GetLastSecondaryAttackChoice() -- default value is 0 so it'll start with 1 from next line

    local nextattack = lastattack + 1 -- choosing the next attack
    ---if nextattack > 2 or self:GetComboCount() <= 0 then -- use this if you want choice to start from 1 when leaving mouse key (combo reset), otherwise do self:SetLastPrimaryAttackChoice(0) either in SWEP:Deploy() or SWEP:Holster()
    ---   nextattack = 1
	---end
    if nextattack > 2 then -- reset the count if we're going beyond attacks count
        nextattack = 1
    end

    self:SetLastSecondaryAttackChoice(nextattack) -- remembering the current choice for next time
    return nextattack, attacks[nextattack] -- returning the key of SWEP.Primary.Attacks table and the chosen attack table itself
end

SWEP.CurrentSequence = 0
SWEP.SeqCache = 0
SWEP.NextSequence = false
SWEP.PrimaryCount = 0
SWEP.SecondaryCount = 0
SWEP.MainSkillSoundLoop = 0
SWEP.SecondarySkillSoundLoop = 0
SWEP.SecondarySkillDamageTime = 0
SWEP.ExitSkillTime = 0
SWEP.State = 0
SWEP.SkillType = 0
--[[
function SWEP:Think()
	local ply = self:GetOwner()
	local vm = ply:GetViewModel(0)
	local seq = vm:GetSequence()
	local dur = vm:SequenceDuration(3)
	local cyc = vm:GetCycle()
	local cur = math.Round(dur * cyc, 2)
	if(self.SkillType != 0) then
		if(self.SkillType == 1) then
			vm:SetSequence(3)
				if(self.MainSkillSoundLoop < CurTime()) then
					if(SERVER) then
						for k,v in pairs(ents.FindInSphere(ply:GetPos(), 160)) do
							if!(IsValid(v)) then continue end
							if(v:Health() <= 0) then continue end
							if(v:IsRagdoll()) then continue end
							if(v == ply) then continue end
							local d = DamageInfo()
								d:SetDamage(850)
								d:SetDamageType(4)
								d:SetDamagePosition(v:GetPos() + Vector(0, 0, 30))
								d:SetAttacker(ply)
								d:SetInflictor(ply)
							v:TakeDamageInfo(d)
							if(v:IsPlayer() || v:IsNPC()) then
								v:EmitSound("weapons/tfa_cso/magicknife/hit.wav", 100, 100, 100)
							end
						end
					end
					self.MainSkillSoundLoop = CurTime() + 0.6
					self:EmitSound("weapons/tfa_cso/whipsword/slash_loop"..math.random(1, 3)..".wav", 100, 100, 90)
				end
		end


		if(self.SkillType == 2) then
			self:SetNextPrimaryFire(CurTime() + 0.1)
			self:SetNextSecondaryFire(CurTime() + 0.1)
			self:SetStatusEnd(CurTime() + 0.15)
			vm:SetSequence(9)
			if(self.SecondarySkillDamageTime < CurTime()) then
				if(SERVER) then
					local fPos = ply:EyePos() + ply:EyeAngles():Forward() * 96
					for k,v in pairs(ents.FindInSphere(fPos, 80)) do
						if!(IsValid(v)) then continue end
						if(v:Health() <= 0) then continue end
						if(v:IsRagdoll()) then continue end
						if(v == ply) then continue end
						local d = DamageInfo()
							d:SetDamage(125)
							d:SetDamageType(4)
							d:SetDamagePosition(v:GetPos() + Vector(0, 0, 30))
							d:SetAttacker(ply)
							d:SetInflictor(ply)
							v:TakeDamageInfo(d)
						if(v:IsPlayer() || v:IsNPC()) then
							v:EmitSound("weapons/tfa_cso/magicknife/hit.wav", 100, 100, 100)
						end
					end
				end
				self.SecondarySkillDamageTime = CurTime() + 0.10
			end
			if(self.SecondarySkillSoundLoop < CurTime()) then
				self:EmitSound("weapons/tfa_cso/whipsword/stab_loop_all2.wav", 100, 100, 50)
				self.SecondarySkillSoundLoop = CurTime() + 1.3
			end
		end

		if(ply:KeyDown(IN_ATTACK) || ply:KeyDown(IN_ATTACK2)) then -- exit the skill
			if(self.ExitSkillTime <= CurTime()) then
				if(self.SkillType == 1) then
					if(SERVER) then
						for k,v in pairs(ents.FindInSphere(ply:GetPos(), 256)) do
							if!(IsValid(v)) then continue end
							if(v:Health() <= 0) then continue end
							if(v:IsRagdoll()) then continue end
							if(v == ply) then continue end
							local d = DamageInfo()
								d:SetDamage(5)
								d:SetDamageType(4)
								d:SetDamagePosition(v:GetPos() + Vector(0, 0, 30))
								d:SetAttacker(ply)
								d:SetInflictor(ply)
							v:TakeDamageInfo(d)
							local pushYaw = (v:EyePos() - ply:EyePos()):Angle().y
							v:SetVelocity(v:GetVelocity() + Angle(-60, pushYaw, 0):Forward() * 600)
						end
					end
					self:SetNextPrimaryFire(CurTime() + 1.25)
					self:SetNextSecondaryFire(CurTime() + 1.25)
					local effectdata = EffectData()
						effectdata:SetOrigin(ply:GetPos())
						util.Effect( "exp_whipsword", effectdata)
					vm:SetSequence(5)
					self:SetStatusEnd(CurTime() + 0.5)
				end

				if(self.SkillType == 2) then
					vm:SetSequence(11)
					self:SetStatusEnd(CurTime() + 0.4)
					local ret = ply:GetEyeTrace()
					if(ret.HitPos:Distance(ply:GetPos()) < 1024) then
						local pushVel = (ret.HitPos - ply:EyePos()):Angle():Forward() * 1024
						ply:SetVelocity(ply:GetVelocity() + pushVel)
						self:EmitSound("weapons/tfa_cso/whipsword/stab_skill_flying.wav")
					else
						self:EmitSound("weapons/tfa_cso/whipsword/stab_skill_end.wav")
					end
					timer.Simple(0.4, function() vm:SetSequence(10) end)
				end
				self.PrimaryCount = 0
				self.SecondaryCount = 0
				self.SkillType = 0
			end
		end
	end
	if(self:GetStatus() == 11) then
		if(!self.NextSequence) then

			if(self.PrimaryCount >= 4) then
				self:EmitSound("weapons/tfa_cso/whipsword/slash_loop_start.wav")
				self.PrimaryCount = 0
				self.SkillType = 1
				self.ExitSkillTime = CurTime() + 1
				self:SetNextPrimaryFire(CurTime() + 1)
				self:SetNextSecondaryFire(CurTime() + 1)
			end

			if(self.SecondaryCount >= 4) then
				self:SetStatusEnd(CurTime() + 0.5)
				self.SecondaryCount = 0
				self.SkillType = 2
				self.ExitSkillTime = CurTime() + 1
				self:SetNextPrimaryFire(CurTime() + 1)
				self:SetNextSecondaryFire(CurTime() + 1)
			end

			if(seq == 1) then
				self.PrimaryCount = self.PrimaryCount + 1
				self.SecondaryCount = 0
			end

			if(seq == 6 || seq == 7) then
				self.PrimaryCount = 0
				self.SecondaryCount = self.SecondaryCount + 1
			end

			self.NextSequence = true
		end
	end
	if(self:GetStatus() == 0) then
		self.NextSequence = false
	end
end
]]