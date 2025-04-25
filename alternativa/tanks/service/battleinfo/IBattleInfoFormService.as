package alternativa.tanks.service.battleinfo
{
   import §],§.§while var const§;
   import alternativa.tanks.view.battleinfo.dm.BattleInfoDmParams;
   import alternativa.tanks.view.battleinfo.team.BattleInfoTeamParams;
   import flash.events.IEventDispatcher;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public interface IBattleInfoFormService extends IEventDispatcher
   {
      function §break for use§(param1:BattleInfoDmParams) : void;
      
      function §'"`§(param1:BattleInfoTeamParams) : void;
      
      function §3!6§() : void;
      
      function destroy() : void;
      
      function updateName(param1:String) : void;
      
      function updateTeamScore(param1:§while var const§, param2:int) : void;
      
      function addUserTeam(param1:BattleInfoUser, param2:§while var const§) : void;
      
      function §#3§(param1:BattleInfoUser) : void;
      
      function removeUser(param1:String) : void;
      
      function updateUserScore(param1:String, param2:int) : void;
      
      function updateUserSuspiciousState(param1:String, param2:Boolean) : void;
      
      function swapTeams() : void;
      
      function §@"4§() : void;
      
      function roundStart() : void;
      
      function roundFinish() : void;
      
      function battleStop() : void;
      
      function §static extends§() : void;
      
      function removeFormFromStage() : void;
      
      function getBattleItemId() : String;
      
      function §^"]§() : void;
   }
}

