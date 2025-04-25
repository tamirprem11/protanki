package §in const use§
{
   import §implements var get§.§"n§;
   import §implements var get§.§+"B§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteEnableEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   
   public class §2!S§ extends §+"B§ implements §"n§, ObjectLoadListener, ObjectUnloadListener
   {
      [Inject]
      public static var battleInviteService:IBattleInviteService;
      
      public function §2!S§()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         battleInviteService.receiveBattleInvite = getInitParam().receiveBattleInvite;
         battleInviteService.addEventListener(BattleInviteEnableEvent.UPDATE,this.§""W§);
      }
      
      private function §""W§(param1:BattleInviteEnableEvent) : void
      {
         server.enable(param1.enable);
      }
      
      public function objectUnloaded() : void
      {
         battleInviteService.removeEventListener(BattleInviteEnableEvent.UPDATE,this.§""W§);
      }
   }
}

