package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle
{
   import flash.events.IEventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.battle.BattleLinkData;
   
   public interface IBattleNotifierService extends IEventDispatcher
   {
      function setBattle(param1:Vector.<BattleLinkData>) : void;
      
      function leaveBattle(param1:String) : void;
   }
}

