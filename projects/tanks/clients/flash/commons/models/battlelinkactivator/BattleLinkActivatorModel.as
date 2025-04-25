package projects.tanks.clients.flash.commons.models.battlelinkactivator
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorServiceEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkAliveEvent;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.alertservice.§if const finally§;
   
   public class BattleLinkActivatorModel
   {
      [Inject]
      public static var battleLinkActivatorService:IBattleLinkActivatorService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var userPropertyService:IUserPropertiesService;
      
      public function BattleLinkActivatorModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         battleLinkActivatorService.addEventListener(BattleLinkActivatorServiceEvent.ACTIVATE_LINK,this.onActivateLink);
         battleLinkActivatorService.addEventListener(BattleLinkAliveEvent.IS_ALIVE,this.onIsAlive);
      }
      
      private function onActivateLink(param1:BattleLinkActivatorServiceEvent) : void
      {
         if(!lobbyLayoutService.isSwitchInProgress())
         {
            Network(OSGi.getInstance().getService(INetworker)).send("battle_select;select;" + param1.link);
         }
      }
      
      private function onIsAlive(param1:BattleLinkAliveEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;is_battle_alive;" + param1.battleId);
      }
      
      public function objectUnloaded() : void
      {
         battleLinkActivatorService.removeEventListener(BattleLinkActivatorServiceEvent.ACTIVATE_LINK,this.onActivateLink);
         battleLinkActivatorService.removeEventListener(BattleLinkAliveEvent.IS_ALIVE,this.onIsAlive);
      }
      
      public function battleNotFound() : void
      {
         var _loc1_:String = userPropertyService.userName;
         if(storageService.getStorage().data.showAlertDeadBattle == _loc1_ + "_true")
         {
            alertService.showAlert(localeService.getText(TextConst.STRING_BATTLE_CANNOT_BE_FOUND_ALERT),Vector.<String>([localeService.getText(§if const finally§.OK)]));
            storageService.getStorage().data.showAlertDeadBattle = _loc1_ + "_false";
         }
      }
      
      public function alive(param1:String) : void
      {
         battleLinkActivatorService.alive(param1);
      }
      
      public function dead(param1:String) : void
      {
         battleLinkActivatorService.dead(param1);
      }
   }
}

