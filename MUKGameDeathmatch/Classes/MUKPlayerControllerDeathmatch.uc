class MUKPlayerControllerDeathmatch extends UTPlayerController;

// members for the custom mesh
var SkeletalMesh defaultMesh;
var MaterialInterface defaultMaterial0;
var MaterialInterface defaultMaterial1;
var AnimTree defaultAnimTree;

// On the next line ?AnimSet? these question marks should be < and >
var array <AnimSet> defaultAnimSet;

var AnimNodeSequence defaultAnimSeq;
var PhysicsAsset defaultPhysicsAsset;

simulated function PostBeginPlay() {
super.PostBeginPlay();

SetCameraMode('ThirdPerson');

resetMesh();
}

// Sets the Pawns Mesh to the resources speced in the DefaultProperties
public function resetMesh(){
self.Pawn.Mesh.SetSkeletalMesh(defaultMesh);
self.Pawn.Mesh.SetMaterial(0,defaultMaterial0);
self.Pawn.Mesh.SetMaterial(1,defaultMaterial1);
self.Pawn.Mesh.SetPhysicsAsset(defaultPhysicsAsset );
self.Pawn.Mesh.AnimSets=defaultAnimSet;
self.Pawn.Mesh.SetAnimTreeTemplate(defaultAnimTree );
}

//Called at RestartPlayer by GameType
public function rSetBehindView(bool view){
SetBehindView(view);
}

// Called at RestartPlayer by GameType
public function rSetCameraMode(name cameraSetting){
SetCameraMode(cameraSetting);
}

DefaultProperties
{

defaultMesh=SkeletalMesh'MyPackage.main_char.Student'
defaultAnimTree=AnimTree'MyPackage.main_char.Stud_AnTree'
defaultAnimSet(0)=AnimSet'MyPackage.main_char.Student_A'
defaultPhysicsAsset=PhysicsAsset'MyPackage.main_char.Student_Physics'
//UTHUDBase(myHUD).bCrosshairShow = false

}