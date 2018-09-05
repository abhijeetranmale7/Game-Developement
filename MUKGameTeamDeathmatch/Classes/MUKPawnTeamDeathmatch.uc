class MUKPawnTeamDeathmatch extends UTPawn;

var(NPC) class NPCController;

defaultproperties
{
WalkingPct=+0.4
CrouchedPct=+0.4
BaseEyeHeight=38.0
EyeHeight=38.0
GroundSpeed=400.0
AirSpeed=440.0
WaterSpeed=220.0
DodgeSpeed=200.0
DodgeSpeedZ=295.0
AccelRate=2048.0
JumpZ=322.0
CrouchHeight=29.0
CrouchRadius=21.0
WalkableFloorZ=.75

AlwaysRelevantDistanceSquared=+1960000.0
//InventoryManagerClass=class'UTGame.UTInventoryManager'

//ControllerClass=class'MUKGameTeamDeathmatch.MUKPlayerControllerTeamDeathmatch'
NPCController=class'MUKGameTeamDeathmatch.MUKPlayerControllerTeamDeathmatch'

MeleeRange=+20.0
bMuffledHearing=true

Buoyancy=+000.99000000
UnderWaterTime=+00020.000000
bCanStrafe=True
bCanSwim=true
RotationRate=(Pitch=20000,Yaw=20000,Roll=20000)
MaxLeanRoll=2048
AirControl=+0.35
DefaultAirControl=+0.35
bCanCrouch=true
bCanClimbLadders=True
bCanPickupInventory=True
bCanDoubleJump=true
SightRadius=+3000.0

FireRateMultiplier=5.0

MaxMultiJump=3
MultiJumpRemaining=10
MultiJumpBoost=-95.0

SoundGroupClass=class'UTGame.UTPawnSoundGroup'

TransInEffects(0)=class'UTEmit_TransLocateOutRed'
TransInEffects(1)=class'UTEmit_TransLocateOut'

MaxStepHeight=35.0
MaxJumpHeight=69.0
MaxDoubleJumpHeight=87.0
DoubleJumpEyeHeight=43.0

SuperHealthMax=9000

Begin Object Name=WPawnSkeletalMeshComponent
bOwnerNoSee=false
End Object
Name=”Default__MUKPawnTeamDeathmatch”
}