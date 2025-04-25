package alternativa.tanks.model.useremailandpassword
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.alertservice.Alert;
   
   public class UserEmailAndPasswordModel implements IUserEmailAndPassword, PasswordService
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var panelView:IPanelView;
      
      [Inject]
      public static var socialNetworkPanelService:ISocialNetworkPanelService;
      
      [Inject]
      public static var §override set import§:ISettingsService;
      
      private var _email:String;
      
      private var unconfirmedEmail:String;
      
      private var §4!E§:Function;
      
      private var §<o§:Function;
      
      public function UserEmailAndPasswordModel()
      {
         super();
      }
      
      public function incorrectEmail() : void
      {
         display.dialogsLayer.addChild(new Alert(Alert.ERROR_EMAIL_INVALID));
      }
      
      public function emailAlreadyUsed() : void
      {
         display.dialogsLayer.addChild(new Alert(Alert.ERROR_EMAIL_UNIQUE));
      }
      
      public function activateMessage(param1:String) : void
      {
         panelView.showAlert(param1);
         this._email = this.unconfirmedEmail;
      }
      
      public function updatePasswordError() : void
      {
         display.dialogsLayer.addChild(new Alert(Alert.ERROR_PASSWORD_CHANGE));
      }
      
      public function notifyCorrectPassword() : void
      {
         this.§include var switch§(this.§4!E§,true);
      }
      
      public function notifyIncorrectPassword() : void
      {
         this.§include var switch§(this.§4!E§,false);
      }
      
      public function notifyPasswordIsNotSet() : void
      {
         this.§include var switch§(this.§<o§,false);
      }
      
      public function notifyPasswordIsSet() : void
      {
         this.§include var switch§(this.§<o§,true);
      }
      
      private function §include var switch§(param1:Function, param2:Boolean) : *
      {
         if(Boolean(param1))
         {
            param1(param2);
         }
         param1 = null;
      }
      
      public function passwordChanged() : void
      {
         socialNetworkPanelService.passwordCreated = true;
      }
      
      public function changePassword(param1:String) : void
      {
      }
      
      public function changeEmail(param1:String, param2:String) : void
      {
         §override set import§.§]^§(param1,false);
         this.unconfirmedEmail = param1;
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;updateEmail;" + param1 + ";" + param2);
      }
      
      public function getEmail() : String
      {
         return this._email;
      }
      
      public function sendChangeInstruction(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;sendPasswordAndEmailChangeInstruction;" + param1);
      }
      
      public function §,!-§(param1:Function) : void
      {
         this.§<o§ = param1;
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;checkPasswordIsSet");
      }
      
      public function §try const native§(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;setPassword;" + param1);
      }
      
      public function §["b§(param1:String, param2:Function) : void
      {
         this.§4!E§ = param2;
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;checkPasswordCorrectness;" + param1);
      }
      
      public function updatePassword(param1:String, param2:String, param3:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;updatePassword;" + param1 + ";" + param2 + ";" + param3);
      }
      
      public function objectLoaded(param1:String, param2:Boolean) : void
      {
         this._email = param1;
         §override set import§.§]^§(param1,param2);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

