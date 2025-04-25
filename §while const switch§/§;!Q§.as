package §while const switch§
{
   import §4"P§.§else var set§;
   import §4"P§.§in set for§;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §;!Q§ extends §in set for§ implements §else var set§, ObjectLoadPostListener, ObjectUnloadListener
   {
      [Inject]
      public static var §+"i§:IDelayMountCategoryService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var logService:LogService;
      
      public function §;!Q§()
      {
         super();
      }
      
      private static function §,!,§(param1:BattleInfoServiceEvent) : void
      {
         §+"i§.§var const if§();
      }
      
      private static function onBattleUnload(param1:BattleInfoServiceEvent) : void
      {
         §+"i§.§var const if§();
      }
      
      public function objectLoadedPost() : void
      {
         if(lobbyLayoutService.inBattle())
         {
            §+"i§.§#!=§(getInitParam());
            battleInfoService.addEventListener(BattleInfoServiceEvent.BATTLE_RESTART,§,!,§);
            battleInfoService.addEventListener(BattleInfoServiceEvent.BATTLE_UNLOAD,onBattleUnload);
         }
      }
      
      public function objectUnloaded() : void
      {
         battleInfoService.removeEventListener(BattleInfoServiceEvent.BATTLE_RESTART,§,!,§);
         battleInfoService.removeEventListener(BattleInfoServiceEvent.BATTLE_UNLOAD,onBattleUnload);
         if(lobbyLayoutService.inBattle())
         {
            §+"i§.§static set dynamic§();
         }
      }
   }
}

