class MUKGameDeathmatch extends UTDeathmatch;

var MUKPlayerControllerDeathmatch currentPlayer;

function RestartPlayer(Controller aPlayer)
{
super.RestartPlayer(aPlayer);
`Log("Player restarted");
currentPlayer = MUKPlayerControllerDeathmatch(aPlayer);

currentPlayer.resetMesh();
currentPlayer.rSetBehindView(true);
currentPlayer.rSetCameraMode('ThirdPerson');
}

simulated function PostBeginPlay() {
local UTTeamGame Game;
Super.PostBeginPlay();

Game = UTTeamGame(WorldInfo.Game);

if (Game != None)
{
Game.PlayerControllerClass=Class'MUKGameDeathmatch.MUKPlayerControllerDeathmatch';
}
}

defaultproperties
{

PlayerControllerClass=Class'MUKGameDeathmatch.MUKPlayerControllerDeathmatch';

}