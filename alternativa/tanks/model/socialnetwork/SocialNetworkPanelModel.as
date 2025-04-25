package alternativa.tanks.model.socialnetwork
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.service.socialnetwork.SocialNetworkServiceEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import projects.tanks.client.panel.model.socialnetwork.SocialNetworkPanelCC;
   import projects.tanks.client.panel.model.socialnetwork.SocialNetworkPanelParams;
   import projects.tanks.clients.flash.commons.services.nameutils.SocialNetworkNameUtils;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.alertservice.§if const finally§;
   
   public class SocialNetworkPanelModel
   {
      [Inject]
      public static var socialNetworkService:ISocialNetworkPanelService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      public var data:SocialNetworkPanelCC;
      
      public function SocialNetworkPanelModel()
      {
         super();
      }
      
      public function objectLoaded(param1:SocialNetworkPanelCC) : void
      {
         this.data = param1;
         socialNetworkService.passwordCreated = param1.passwordCreated;
         socialNetworkService.§super var throw§ = this.getLinkExists("vkontakte");
         socialNetworkService.§default var override§ = this.getLinkExists("facebook");
         socialNetworkService.addEventListener(SocialNetworkServiceEvent.CREATE_LINK,this.onCreateLink);
         socialNetworkService.addEventListener(SocialNetworkServiceEvent.UNLINK,this.onUnlink);
      }
      
      public function objectUnloaded() : void
      {
         socialNetworkService.removeEventListener(SocialNetworkServiceEvent.CREATE_LINK,this.onCreateLink);
         socialNetworkService.removeEventListener(SocialNetworkServiceEvent.UNLINK,this.onUnlink);
      }
      
      private function onUnlink(param1:SocialNetworkServiceEvent) : void
      {
         if(socialNetworkService.passwordCreated)
         {
            Network(OSGi.getInstance().getService(INetworker)).send("lobby;unlink_account;" + param1.socialNetworkId);
         }
         else
         {
            alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ACCOUNT_CANT_BE_UNLINKED,SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1.socialNetworkId)),Vector.<String>([localeService.getText(§if const finally§.OK)]));
         }
      }
      
      private function onCreateLink(param1:SocialNetworkServiceEvent) : void
      {
         this.goToURL(this.getAuthorizationUrl(param1.socialNetworkId));
      }
      
      private function getAuthorizationUrl(param1:String) : String
      {
         var _loc2_:SocialNetworkPanelParams = null;
         for each(_loc2_ in this.data.socialNetworkParams)
         {
            if(_loc2_.snId == param1)
            {
               return _loc2_.authorizationUrl;
            }
         }
         return "";
      }
      
      private function getLinkExists(param1:String) : Boolean
      {
         var _loc2_:SocialNetworkPanelParams = null;
         for each(_loc2_ in this.data.socialNetworkParams)
         {
            if(_loc2_.snId == param1)
            {
               return _loc2_.linkExists;
            }
         }
         return false;
      }
      
      private function goToURL(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("newPopup",param1);
         }
         else
         {
            navigateToURL(new URLRequest(param1));
         }
      }
      
      public function validationFailed() : void
      {
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ACCOUNT_LINKING_ERROR),Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
      
      public function linkAlreadyExists(param1:String) : void
      {
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ACCOUNT_ALREADY_LINKED,SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1)),Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
      
      public function linkCreated(param1:String) : void
      {
         socialNetworkService.§set for§(param1);
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ACCOUNT_SUCCESS_LINKED),Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
      
      public function unlinkSuccess(param1:String) : void
      {
         socialNetworkService.§#!§(param1);
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ACCOUNT_UNLINKED,SocialNetworkNameUtils.makeSocialNetworkNameFromId(param1)),Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
   }
}

