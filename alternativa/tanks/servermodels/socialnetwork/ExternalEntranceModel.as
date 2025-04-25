package alternativa.tanks.servermodels.socialnetwork
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.service.IEntranceClientFacade;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import projects.tanks.client.entrance.model.entrance.externalentrance.SocialNetworkEntranceParams;
   import projects.tanks.clients.flash.commons.services.nameutils.SocialNetworkNameUtils;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   import services.alertservice.§if const finally§;
   
   public class ExternalEntranceModel implements IExternalEntranceModel, INetworkListener
   {
      [Inject]
      public static var clientFacade:IEntranceClientFacade;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      public var data:SocialNetworkEntranceParams = new SocialNetworkEntranceParams();
      
      private var isSendStartRegisterFacade:Boolean;
      
      private var isSendStartLoginFacade:Boolean;
      
      private var _socialNetworkId:String;
      
      public function ExternalEntranceModel()
      {
         super();
      }
      
      private static function goToURL(param1:String) : void
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
      
      public function onData(param1:Command) : void
      {
         if(param1.type == Type.AUTH)
         {
            switch(param1.args[0])
            {
               case "init_external_model":
                  this.data.authorizationUrl = param1.args[1];
                  this.data.snId = param1.args[2];
                  break;
               case "external_model_validation_success":
                  this.validationSuccess();
            }
         }
      }
      
      public function login(param1:String, param2:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("auth;external_create_link_for_existing_user;" + param1 + ";" + param2);
      }
      
      public function startExternalRegisterUser(param1:String, param2:Boolean, param3:String) : void
      {
         this.isSendStartRegisterFacade = true;
         this.startExternalEnter(param1,param2,param3);
      }
      
      public function startExternalLoginUser(param1:String, param2:Boolean, param3:String) : void
      {
         this.isSendStartLoginFacade = true;
         this.startExternalEnter(param1,param2,param3);
      }
      
      private function startExternalEnter(param1:String, param2:Boolean, param3:String) : void
      {
         this._socialNetworkId = param1;
         Network(OSGi.getInstance().getService(INetworker)).send("auth;set_login_data;" + param2);
         goToURL(this.getAuthorizationUrl(param1));
      }
      
      private function getAuthorizationUrl(param1:String) : String
      {
         var _loc2_:SocialNetworkEntranceParams = this.data;
         if(_loc2_.snId == param1)
         {
            return _loc2_.authorizationUrl;
         }
         return null;
      }
      
      public function finishExternalRegisterUser(param1:String, param2:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("registration;register_via_vk;" + param1);
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function validationSuccess() : void
      {
         if(this.isSendStartRegisterFacade)
         {
            this.isSendStartRegisterFacade = false;
            clientFacade.§["M§("vkontakte");
         }
         if(this.isSendStartLoginFacade)
         {
            this.isSendStartLoginFacade = false;
            clientFacade.§9T§("vkontakte");
         }
      }
      
      public function wrongPassword() : void
      {
         clientFacade.§,"+§();
      }
      
      public function validationFailed() : void
      {
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_ERROR_EXTERNAL_ENTER),Vector.<String>([localeService.getText(§if const finally§.OK)]));
         clientFacade.externalValidationFailed();
      }
      
      public function linkAlreadyExists() : void
      {
         alertService.showAlert(localeService.getText(TextConst.STRING_ALERT_GAME_ACCOUNT_ALREADY_LINKED,SocialNetworkNameUtils.makeSocialNetworkNameFromId("vkontakte")),Vector.<String>([localeService.getText(§if const finally§.OK)]));
         clientFacade.externalLinkAlreadyExists();
      }
   }
}

