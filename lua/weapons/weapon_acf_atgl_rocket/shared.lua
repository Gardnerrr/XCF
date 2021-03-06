	AddCSLuaFile( "shared.lua" )
	SWEP.HoldType			= "rpg"

if (CLIENT) then
	
	SWEP.PrintName			= "ACF Anti-Tank GL"
	SWEP.Author				= "Bubbus"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "f"
	SWEP.DrawCrosshair		= false
	SWEP.Purpose		= "Make tanks disappear."
	SWEP.Instructions       = "Reload at 50mm Cannon Ammo-boxes!"
	//SWEP.WepSelectIcon = surface.GetTextureID("vgui/entities/potato_launcher.vtf")

end



SWEP.Base				= "weapon_acf_base"
SWEP.ViewModelFlip			= false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false
SWEP.Category			= "ACF"
SWEP.ViewModel 			= "models/weapons/v_RPG.mdl";
SWEP.WorldModel 		= "models/weapons/w_rocket_launcher.mdl";

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 20
SWEP.Primary.ClipSize		= 1
SWEP.Primary.Delay			= 0.1
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "RPG_Round"
SWEP.Primary.Sound 			= "acf_extra/tankfx/gnomefather/2pdr2.wav"

util.PrecacheSound( SWEP.Primary.Sound )

SWEP.ReloadTime				= 3

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.ScopeChopPos = false
SWEP.ScopeChopAngle = false
SWEP.WeaponBone = false

SWEP.MinInaccuracy = 0.7
SWEP.MaxInaccuracy = 10
SWEP.Inaccuracy = SWEP.MaxInaccuracy
SWEP.InaccuracyDecay = 0.05
SWEP.AccuracyDecay = 0.3
SWEP.InaccuracyPerShot = 7
SWEP.InaccuracyCrouchBonus = 1.7
SWEP.InaccuracyDuckPenalty = 4

SWEP.Stamina = 1
SWEP.StaminaDrain = 0.015
SWEP.StaminaJumpDrain = 0.15

SWEP.HasZoom = true
SWEP.ZoomInaccuracyMod = 0.5
SWEP.ZoomDecayMod = 1.2
SWEP.ZoomFOV = 40

SWEP.Class = "C"
SWEP.FlashClass = "AC"
SWEP.Launcher = true


function SWEP:Reload()
	if self.Zoomed then return false end

	local reloaded = self:DefaultReload( ACT_VM_RELOAD )
	
	if SERVER then
		
		local crate = self.Owner:GetEyeTrace().Entity
		if reloaded and IsValid(crate) and crate:GetClass() == "acf_ammo" and self.Owner:GetPos():Distance(crate:GetPos()) < 200 then
			self:GrabRocketFromCrate(crate)
		end
	
		self.Owner:DoReloadEvent()
	end
	
	if reloaded then
		self.Inaccuracy = self.MaxInaccuracy
	end
end

