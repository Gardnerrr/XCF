	AddCSLuaFile( "shared.lua" )
	SWEP.HoldType			= "pistol"

if (CLIENT) then
	
	SWEP.PrintName			= "ACF Pistol"
	SWEP.Author				= "Bubbus"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "f"
	SWEP.DrawCrosshair		= false
	SWEP.Purpose		= "Make dudes one-handedly."
	SWEP.Instructions       = "Reload at 12.7mm MG Ammo-boxes!"

end

util.PrecacheSound( "weapons/launcher_fire.wav" )

SWEP.Base				= "weapon_acf_base"
SWEP.ViewModelFlip			= false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false
SWEP.Category			= "ACF"
SWEP.ViewModel 			= "models/weapons/v_pist_deagle.mdl";
SWEP.WorldModel 		= "models/weapons/w_pist_deagle.mdl";
SWEP.ViewModelFlip		= true

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 2
SWEP.Primary.ClipSize		= 8
SWEP.Primary.Delay			= 0.1
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "XBowBolt"
SWEP.Primary.Sound 			= "Weapon_Deagle.Single"

SWEP.ReloadTime				= 2.5

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.AimOffset = Vector(32, 8, -1)

SWEP.ScopeChopPos = false
SWEP.ScopeChopAngle = false
SWEP.WeaponBone = false//"v_weapon.aug_Parent"

SWEP.MinInaccuracy = 1
SWEP.MaxInaccuracy = 5
SWEP.Inaccuracy = SWEP.MaxInaccuracy
SWEP.InaccuracyDecay = 0.15
SWEP.AccuracyDecay = 0.25
SWEP.InaccuracyPerShot = 3
SWEP.InaccuracyCrouchBonus = 1.3
SWEP.InaccuracyDuckPenalty = 2

SWEP.Stamina = 1
SWEP.StaminaDrain = 0.004
SWEP.StaminaJumpDrain = 0.06

SWEP.HasZoom = true
SWEP.ZoomInaccuracyMod = 0.6
SWEP.ZoomDecayMod = 1.3
SWEP.ZoomFOV = 70

SWEP.Class = "MG"
SWEP.FlashClass = "MG"
SWEP.Launcher = false