package alternativa.tanks.model
{
   import §-A§.§with in§;
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.service.IAddressService;
   import alternativa.tanks.gui.ChangePasswordAndEmailEvent;
   import alternativa.tanks.gui.InviteWindow;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.servermodels.EntranceModel;
   import alternativa.tanks.servermodels.blockvalidator.BlockValidatorModel;
   import alternativa.tanks.servermodels.captcha.IServerCaptcha;
   import alternativa.tanks.servermodels.captcha.ServerCaptchaModel;
   import alternativa.tanks.servermodels.login.ILogin;
   import alternativa.tanks.servermodels.login.LoginModel;
   import alternativa.tanks.servermodels.loginbyhash.ILoginByHash;
   import alternativa.tanks.servermodels.loginbyhash.LoginByHashModel;
   import alternativa.tanks.servermodels.registartion.password.IPasswordRegistration;
   import alternativa.tanks.servermodels.registartion.password.PasswordRegistrationModel;
   import alternativa.types.Long;
   import com.alternativaplatform.client.models.core.users.model.entrance.ConfirmEmailStatus;
   import com.alternativaplatform.client.models.core.users.model.entrance.EntranceModelBase;
   import com.alternativaplatform.client.models.core.users.model.entrance.IEntranceModelBase;
   import com.alternativaplatform.client.models.core.users.model.entrance.RegisterStatusEnum;
   import com.alternativaplatform.client.models.core.users.model.entrance.RestorePasswordStatusEnum;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import forms.events.AlertEvent;
   import forms.events.LoginFormEvent;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import scpacker.gui.ConfirmEmailCode;
   import scpacker.gui.RecoveryWindow;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   import services.alertservice.Alert;
   import services.alertservice.§if const finally§;
   
   public class UserModel extends EntranceModelBase implements IEntranceModelBase, INetworkListener
   {
      public static var display:IDisplay = OSGi.getInstance().getService(IDisplay) as IDisplay;
      
      private var addressService:IAddressService;
      
      private var clientObject:ClientObject;
      
      private var layer:DisplayObjectContainer;
      
      private var errorWindow:Alert;
      
      private var confirmAlert:Alert;
      
      private var changeEmailAndPasswordWindow:RecoveryWindow;
      
      private var inputShortInt:int = -1;
      
      private var inputLongInt:int = -1;
      
      private const inputShortDelay:int = 250;
      
      private const inputLongDelay:int = 3000;
      
      private const STATE_LOGIN:int = 1;
      
      private const STATE_REGISTER:int = 2;
      
      private const STATE_RESTORE_PASSWORD:int = 3;
      
      private var state:int = 0;
      
      private var not1stSimbols:String = "-_.";
      
      private var hash:String;
      
      private var login:String;
      
      private var up:String;
      
      private var emailConfirmHash:String;
      
      private var email:String;
      
      private var emailChangeHash:String;
      
      private var inviteWindow:InviteWindow;
      
      private var inviteEnabled:Boolean;
      
      private var antiAddictionEnabled:Boolean;
      
      private var params:Dictionary;
      
      private var checkCallsignTimer:Timer;
      
      private const checkCallsignDelay:int = 500;
      
      private var localeService:ILocaleService;
      
      private var network:Network;
      
      private var blockValidator:BlockValidatorModel;
      
      private var §do package§:EntranceModel;
      
      private var isUnique:Boolean;
      
      public function UserModel()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(IEntranceModelBase);
         _interfaces.push(IObjectLoadListener);
         this.localeService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.layer = IDisplay(OSGi.getInstance().getService(IDisplay)).contentUILayer;
         this.inviteWindow = new InviteWindow();
         this.addressService = OSGi.getInstance().getService(IAddressService) as IAddressService;
         this.blockValidator = new BlockValidatorModel();
         ServerCaptchaModel(OSGi.getInstance().getService(IServerCaptcha)).objectLoaded();
      }
      
      public function initObject(param1:Boolean, param2:Boolean) : void
      {
         this.§do package§ = new EntranceModel();
         this.§do package§.objectLoadedPost();
         this.inviteEnabled = param2;
         this.antiAddictionEnabled = param1;
      }
      
      public function objectLoaded() : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:ILoaderWindowService = null;
         var _loc7_:ILoaderWindowService = null;
         var _loc1_:SharedObject = IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage();
         this.network = OSGi.getInstance().getService(INetworker) as Network;
         this.network.addListener(this);
         if(this.addressService != null)
         {
            _loc2_ = this.addressService.getValue();
            _loc3_ = _loc2_.split("&");
            this.params = new Dictionary();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = (_loc3_[_loc4_] as String).split("=");
               this.params[_loc5_[0]] = _loc5_[1];
               _loc4_++;
            }
            this.hash = this.params["hash"];
            this.emailConfirmHash = this.params["emailConfirmHash"];
            this.email = this.params["userEmail"];
            this.emailChangeHash = this.params["emailChangeHash"];
         }
         if(this.email != null && this.email != "")
         {
            _loc1_.data.userEmail = this.email;
         }
         else
         {
            this.email = _loc1_.data.userEmail;
         }
         this.login = _loc1_.data.userName;
         this.up = _loc1_.data.up;
         if(this.emailConfirmHash != null)
         {
            _loc6_ = OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService;
            _loc6_.hideLoaderWindow();
            _loc6_.lockLoaderWindow();
            this.confirmAlert = new Alert(Alert.ALERT_CONFIRM_EMAIL);
            this.layer.addChild(this.confirmAlert);
            this.confirmAlert.addEventListener(AlertEvent.ALERT_BUTTON_PRESSED,this.onAlertButtonPressed);
         }
         else if(this.emailChangeHash != null)
         {
            _loc7_ = OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService;
            _loc7_.hideLoaderWindow();
            _loc7_.lockLoaderWindow();
         }
      }
      
      public function onData(param1:Command) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:Vector.<int> = null;
         var _loc7_:Alert = null;
         if(param1.type == Type.REGISTRATON)
         {
            switch(param1.args[0])
            {
               case "check_name_result":
                  if(param1.args[1] == "not_exist")
                  {
                     PasswordRegistrationModel(OSGi.getInstance().getService(IPasswordRegistration)).enteredUidIsFree();
                  }
                  else if(param1.args[1] == "incorrect")
                  {
                     PasswordRegistrationModel(OSGi.getInstance().getService(IPasswordRegistration)).enteredUidIsIncorrect();
                  }
                  else if(param1.args[1] == "nickname_exist")
                  {
                     _loc2_ = JSON.parse(param1.args[2]);
                     _loc3_ = new Vector.<String>();
                     for each(_loc4_ in _loc2_.free_nicknames)
                     {
                        _loc3_.push(_loc4_);
                     }
                     PasswordRegistrationModel(OSGi.getInstance().getService(IPasswordRegistration)).enteredUidIsBusy(_loc3_);
                  }
            }
         }
         else if(param1.type == Type.AUTH)
         {
            switch(param1.args[0])
            {
               case "serverHalt":
                  §with in§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(0,300020028))).serverHalt();
                  break;
               case "accept":
                  this.objectUnloaded(this.clientObject);
                  ILobbyLayoutService(OSGi.getInstance().getService(ILobbyLayoutService)).layoutSwitchPredicted();
                  new §0d§().§@W§();
                  this.§do package§.objectUnloadedPost();
                  break;
               case "set_entrance_hash":
                  LoginByHashModel(OSGi.getInstance().getService(ILoginByHash)).rememberUsersHash(param1.args[1] == "null" ? null : param1.args[1]);
                  break;
               case "login_by_hash_failed":
                  LoginByHashModel(OSGi.getInstance().getService(ILoginByHash)).loginByHashFailed();
                  break;
               case "denied":
                  LoginModel(OSGi.getInstance().getService(ILogin)).wrongPassword();
                  break;
               case "not_exist":
                  this.passwdLoginFailed(null);
                  break;
               case "ban":
                  this.blockValidator.youAreBlocked(param1.args[1]);
                  break;
               case "kick":
                  this.blockValidator.youWereKicked(param1.args[1],parseInt(param1.args[2]),parseInt(param1.args[3]),parseInt(param1.args[4]));
                  break;
               case "wrong_captcha":
                  _loc6_ = new Vector.<int>();
                  for each(_loc5_ in String(param1.args[2]).split(","))
                  {
                     _loc6_.push(parseInt(_loc5_));
                  }
                  ServerCaptchaModel(OSGi.getInstance().getService(IServerCaptcha)).captchaFailed(this.getCaptchaLocation(param1.args[1]),_loc6_);
                  break;
               case "enable_captcha":
                  break;
               case "update_captcha":
                  _loc6_ = new Vector.<int>();
                  for each(_loc5_ in String(param1.args[2]).split(","))
                  {
                     _loc6_.push(parseInt(_loc5_));
                  }
                  ServerCaptchaModel(OSGi.getInstance().getService(IServerCaptcha)).showCaptcha(this.getCaptchaLocation(param1.args[1]),_loc6_);
                  break;
               case "recovery_account":
                  if(param1.args[1] == "false")
                  {
                     this.setPasswordChangeResult(null,false,this.localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_ERROR));
                  }
                  else
                  {
                     this.setPasswordChangeResult(null,true,this.localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_PASSWORD_CHANGED));
                  }
            }
         }
         else if(param1.type == Type.RESTORE)
         {
            switch(param1.args[0])
            {
               case "recovery_account_done":
                  display.cursorLayer.addChild(new ConfirmEmailCode(this.localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_ENTER_CODE),this.onEnterConfirmCode));
                  break;
               case "recovery_account_result":
                  if(param1.args[1] == "false")
                  {
                     this.setPasswordChangeResult(null,false,this.localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_ERROR));
                  }
                  break;
               case "recovery_account_code":
                  if(param1.args[1] == "true")
                  {
                     this.restorePasswordStatus(null,RestorePasswordStatusEnum.OK);
                     this.changeEmailHashIsOk(null,param1.args[2]);
                  }
                  else
                  {
                     _loc7_ = new Alert();
                     _loc7_.showAlert(this.localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_WRONG_CODE),Vector.<String>([§if const finally§.OK]));
                     this.layer.addChild(_loc7_);
                  }
            }
         }
      }
      
      private function getCaptchaLocation(param1:String) : CaptchaLocation
      {
         switch(param1)
         {
            case "registration":
               return CaptchaLocation.REGISTER_FORM;
            case "AUTH":
               return CaptchaLocation.LOGIN_FORM;
            default:
               return CaptchaLocation.REGISTER_FORM;
         }
      }
      
      private function onEnterConfirmCode(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("restore;confirm_email_code;" + param1);
      }
      
      public function changeEmailHashIsOk(param1:ClientObject, param2:String) : void
      {
         this.changeEmailAndPasswordWindow = new RecoveryWindow(null,param2);
         this.changeEmailAndPasswordWindow.addEventListener(ChangePasswordAndEmailEvent.CHANGE_PRESSED,this.onChangePassAndEmailPressed);
         this.changeEmailAndPasswordWindow.addEventListener(ChangePasswordAndEmailEvent.CANCEL_PRESSED,this.onCancelPassAndEmailPressed);
         display.stage.addEventListener(Event.RESIZE,this.allignChangeEmailAndPasswordWindow);
      }
      
      public function changeEmailHashIsWrong(param1:ClientObject) : void
      {
         var _loc2_:Alert = new Alert();
         _loc2_.showAlert(this.localeService.getText(TextConst.SETTINGS_CHANGE_PASSWORD_WRONG_LINK_TEXT),Vector.<String>([§if const finally§.OK]));
         this.layer.addChild(_loc2_);
         _loc2_.addEventListener(AlertEvent.ALERT_BUTTON_PRESSED,this.onWrongChangePasswordAlertButtonPressed);
      }
      
      private function onWrongChangePasswordAlertButtonPressed(param1:AlertEvent) : void
      {
         this.enter();
      }
      
      private function enter() : void
      {
         if(this.inviteEnabled)
         {
            this.showInviteWindow();
         }
         else
         {
            this.afterInviteEnter();
         }
      }
      
      private function afterInviteEnter() : void
      {
         this.showWindow();
      }
      
      private function onAlertButtonPressed(param1:AlertEvent) : void
      {
      }
      
      public function confirmEmailStatus(param1:ClientObject, param2:ConfirmEmailStatus) : void
      {
         switch(param2)
         {
            case ConfirmEmailStatus.ERROR:
               this.enter();
               break;
            case ConfirmEmailStatus.OK:
               this.enter();
               break;
            case ConfirmEmailStatus.OK_EXISTS:
               this.goToPortal();
         }
      }
      
      private function goToPortal(param1:AlertEvent = null) : void
      {
         navigateToURL(new URLRequest("http://alternativaplatform.com/ru/"),"_self");
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
      }
      
      public function hashLoginFailed(param1:ClientObject) : void
      {
         var _loc2_:ILoaderWindowService = OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService;
         _loc2_.hideLoaderWindow();
         _loc2_.lockLoaderWindow();
         if(this.inviteEnabled)
         {
            this.showInviteWindow();
         }
         else
         {
            this.afterInviteEnter();
         }
      }
      
      public function wrongCaptcha(param1:ClientObject) : void
      {
         this.showErrorWindow(Alert.CAPTCHA_INCORRECT);
      }
      
      public function passwdLoginFailed(param1:ClientObject) : void
      {
      }
      
      public function registerStatus(param1:ClientObject, param2:RegisterStatusEnum) : void
      {
         switch(param2)
         {
            case RegisterStatusEnum.EMAIL_LDAP_UNIQUE:
               this.showErrorWindow(Alert.ERROR_EMAIL_UNIQUE);
               break;
            case RegisterStatusEnum.EMAIL_NOT_VALID:
               this.showErrorWindow(Alert.ERROR_EMAIL_INVALID);
               break;
            case RegisterStatusEnum.UID_LDAP_UNIQUE:
               this.showErrorWindow(Alert.ERROR_CALLSIGN_UNIQUE);
         }
      }
      
      public function setHash(param1:ClientObject, param2:String) : void
      {
      }
      
      public function restorePasswordStatus(param1:ClientObject, param2:RestorePasswordStatusEnum) : void
      {
         switch(param2)
         {
            case RestorePasswordStatusEnum.OK:
               this.state = this.STATE_LOGIN;
               break;
            case RestorePasswordStatusEnum.MAIL_NOT_FOUND:
               this.showErrorWindow(Alert.ERROR_EMAIL_NOTFOUND);
               break;
            case RestorePasswordStatusEnum.MAIL_NOT_SEND:
               this.showErrorWindow(Alert.ERROR_EMAIL_NOTSENDED);
         }
      }
      
      public function inviteFree(param1:ClientObject) : void
      {
         this.hideInviteWindow();
         this.afterInviteEnter();
      }
      
      public function inviteAlreadyActivated(param1:ClientObject, param2:String) : void
      {
         this.hideInviteWindow();
         var _loc3_:SharedObject = IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage();
         this.showWindow();
         this.state = this.STATE_LOGIN;
         if(!_loc3_.data.rememberUserFlag)
         {
         }
      }
      
      public function inviteNotFound(param1:ClientObject) : void
      {
         this.inviteWindow.showInviteError();
      }
      
      public function nameUnique(param1:ClientObject, param2:Boolean) : void
      {
         this.isUnique = param2;
      }
      
      private function showWindow() : void
      {
      }
      
      private function hideWindow() : void
      {
      }
      
      private function onCallsignChanged(param1:LoginFormEvent) : void
      {
      }
      
      private function onCallsignCheckTimerComplete(param1:TimerEvent) : void
      {
      }
      
      private function showErrorWindow(param1:int) : void
      {
         this.errorWindow = new Alert(param1);
         if(!this.layer.contains(this.errorWindow))
         {
            this.layer.addChild(this.errorWindow);
            display.stage.focus = this.errorWindow.closeButton;
         }
      }
      
      public function showBanWindow(param1:String, param2:Boolean) : void
      {
      }
      
      private function showInviteWindow() : void
      {
         if(!this.layer.contains(this.inviteWindow))
         {
            this.layer.addChild(this.inviteWindow);
            this.alignInviteWindow();
            display.stage.addEventListener(Event.RESIZE,this.alignInviteWindow);
            this.inviteWindow.addEventListener(Event.COMPLETE,this.onInviteWindowComplete);
         }
      }
      
      private function hideInviteWindow() : void
      {
         if(this.layer.contains(this.inviteWindow))
         {
            this.layer.removeChild(this.inviteWindow);
            display.stage.removeEventListener(Event.RESIZE,this.alignInviteWindow);
            this.inviteWindow.removeEventListener(Event.COMPLETE,this.onInviteWindowComplete);
         }
      }
      
      private function alignInviteWindow(param1:Event = null) : void
      {
         this.inviteWindow.x = Math.round((display.stage.stageWidth - this.inviteWindow.width) * 0.5);
         this.inviteWindow.y = Math.round((display.stage.stageHeight - this.inviteWindow.height) * 0.5);
      }
      
      private function onInviteWindowComplete(param1:Event) : void
      {
      }
      
      private function onPlayPressed(param1:LoginFormEvent) : void
      {
      }
      
      private function loginByName(param1:String, param2:String, param3:Boolean, param4:String) : void
      {
      }
      
      private function registerUser(param1:String, param2:String, param3:String, param4:Boolean, param5:Boolean, param6:String) : void
      {
      }
      
      private function onStateChanged(param1:LoginFormEvent) : void
      {
      }
      
      private function onShowTermsPressed(param1:LoginFormEvent) : void
      {
      }
      
      private function onShowRulesPressed(param1:LoginFormEvent) : void
      {
      }
      
      private function onRestoreClick(param1:MouseEvent) : void
      {
      }
      
      private function onLoginRestore(param1:LoginFormEvent) : void
      {
      }
      
      private function restorePassword(param1:String) : void
      {
      }
      
      private function onCancelPassAndEmailPressed(param1:ChangePasswordAndEmailEvent) : void
      {
         this.changeEmailAndPasswordWindow.removeEventListener(ChangePasswordAndEmailEvent.CANCEL_PRESSED,this.onCancelPassAndEmailPressed);
         this.changeEmailAndPasswordWindow.removeEventListener(ChangePasswordAndEmailEvent.CHANGE_PRESSED,this.onChangePassAndEmailPressed);
         this.changeEmailAndPasswordWindow.close();
         this.enter();
      }
      
      private function onChangePassAndEmailPressed(param1:ChangePasswordAndEmailEvent) : void
      {
         this.changePasswordAndEmail(this.changeEmailAndPasswordWindow.§default const get§(),this.changeEmailAndPasswordWindow.getEmail());
      }
      
      private function changePasswordAndEmail(param1:String, param2:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("restore;change_pass_email;" + param1 + ";" + param2);
      }
      
      private function allignChangeEmailAndPasswordWindow(param1:Event) : void
      {
         this.changeEmailAndPasswordWindow.x = Math.round((display.stage.stageWidth - this.changeEmailAndPasswordWindow.width) * 0.5);
         this.changeEmailAndPasswordWindow.y = Math.round((display.stage.stageHeight - this.changeEmailAndPasswordWindow.height) * 0.5) - 10;
      }
      
      public function setPasswordChangeResult(param1:ClientObject, param2:Boolean, param3:String) : void
      {
         var _loc4_:Alert = null;
         var _loc5_:Alert = null;
         if(param2 == true)
         {
            if(this.layer.contains(this.changeEmailAndPasswordWindow))
            {
               this.changeEmailAndPasswordWindow.removeEventListener(ChangePasswordAndEmailEvent.CANCEL_PRESSED,this.onCancelPassAndEmailPressed);
               this.changeEmailAndPasswordWindow.removeEventListener(ChangePasswordAndEmailEvent.CHANGE_PRESSED,this.onChangePassAndEmailPressed);
               this.layer.removeChild(this.changeEmailAndPasswordWindow);
               _loc4_ = new Alert();
               _loc4_.showAlert(param3,Vector.<String>([§if const finally§.OK]));
               this.layer.addChild(_loc4_);
               _loc4_.addEventListener(AlertEvent.ALERT_BUTTON_PRESSED,this.onChangePasswordAndEmailAlertPressed);
            }
         }
         else
         {
            _loc5_ = new Alert();
            _loc5_.showAlert(param3,Vector.<String>([§if const finally§.OK]));
            this.layer.addChild(_loc5_);
         }
      }
      
      private function onChangePasswordAndEmailAlertPressed(param1:Event) : void
      {
         this.enter();
      }
      
      public function serverIsRestarting(param1:ClientObject) : void
      {
      }
      
      public function youWereKicked(param1:ClientObject) : void
      {
      }
   }
}

