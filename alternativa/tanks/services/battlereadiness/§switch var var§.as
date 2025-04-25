package alternativa.tanks.services.battlereadiness
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.flash.commons.models.layout.notify.ILobbyLayoutNotify;
   import projects.tanks.clients.flash.commons.models.layout.notify.LobbyLayoutNotifyModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §switch var var§ implements BattleReadinessService
   {
      [Inject]
      public static var §7!i§:BattleService;
      
      [Inject]
      public static var loaderWindowService:ILoaderWindowService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      private var §null var static§:Boolean;
      
      private var §2"N§:Boolean;
      
      public function §switch var var§()
      {
         super();
      }
      
      public function reset() : void
      {
         lobbyLayoutService.setBattleReady(false);
         this.§null var static§ = false;
         this.§2"N§ = false;
      }
      
      public function §5"8§() : void
      {
         if(!this.§null var static§)
         {
            this.§null var static§ = true;
            this.§'"f§();
         }
      }
      
      public function §`!R§() : void
      {
         if(!this.§2"N§)
         {
            this.§2"N§ = true;
            this.§'"f§();
         }
      }
      
      public function isBattleReady() : Boolean
      {
         return this.§null var static§ && this.§2"N§;
      }
      
      public function §=j§() : Boolean
      {
         return this.§null var static§;
      }
      
      private function §'"f§() : void
      {
         if(this.isBattleReady())
         {
            lobbyLayoutService.setBattleReady(true);
            LobbyLayoutNotifyModel(OSGi.getInstance().getService(ILobbyLayoutNotify)).endLayoutSwitch(LayoutState.BATTLE,LayoutState.BATTLE);
            loaderWindowService.hideLoaderWindow();
            §7!i§.§%9§();
         }
      }
   }
}

