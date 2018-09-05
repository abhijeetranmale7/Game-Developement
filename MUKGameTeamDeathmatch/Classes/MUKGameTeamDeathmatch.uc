class MUKGameTeamDeathmatch extends UTTeamGame;

var MUKPlayerControllerTeamDeathmatch currentPlayer;

function RestartPlayer(Controller aPlayer)
{
super.RestartPlayer(aPlayer);
`Log("Player restarted");
currentPlayer = MUKPlayerControllerTeamDeathmatch(aPlayer);

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
Game.PlayerControllerClass=Class'MUKGameTeamDeathmatch.MUKPlayerControllerTeamDeathmatch';
}
}

defaultproperties
{

PlayerControllerClass=Class'MUKGameTeamDeathmatch.MUKPlayerControllerTeamDeathmatch';

}