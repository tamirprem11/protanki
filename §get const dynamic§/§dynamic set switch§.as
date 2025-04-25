package §get const dynamic§
{
   import alternativa.tanks.controller.events.AuthorizationFailedEvent;
   import alternativa.tanks.controller.events.CallsignCheckResultEvent;
   import alternativa.tanks.controller.events.CaptchaAnswerIsIncorrectEvent;
   import alternativa.tanks.controller.events.EmailCheckResultEvent;
   import alternativa.tanks.controller.events.EntranceErrorEvent;
   import alternativa.tanks.controller.events.IfengEvent;
   import alternativa.tanks.controller.events.InviteCheckResultEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.controller.events.ParseUrlParamsEvent;
   import alternativa.tanks.controller.events.PartnersEvent;
   import alternativa.tanks.controller.events.PasswordRestoreResultEvent;
   import alternativa.tanks.controller.events.RegistrationFailedEvent;
   import alternativa.tanks.controller.events.SetPasswordChangeResultEvent;
   import alternativa.tanks.controller.events.showform.ShowBlockValidationAlertEvent;
   import alternativa.tanks.controller.events.showform.ShowChangeEmailAndPasswordFormEvent;
   import alternativa.tanks.controller.events.showform.ShowConfirmEmailAlertEvent;
   import alternativa.tanks.controller.events.showform.ShowFormEvent;
   import alternativa.tanks.controller.events.showform.ShowLoginFormEvent;
   import alternativa.tanks.controller.events.socialnetwork.NavigationExternalEvent;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import alternativa.tanks.model.EntranceUrlParamsModel;
   import alternativa.tanks.model.RegistrationBackgroundModel;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.§case for include§;
   import flash.display.BitmapData;
   import org.robotlegs.base.ContextEvent;
   import org.robotlegs.mvcs.Actor;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import projects.tanks.client.entrance.model.entrance.emailconfirm.ConfirmEmailStatus;
   
   public class §dynamic set switch§ extends Actor implements IEntranceClientFacade
   {
      [Inject]
      public var §4y§:RegistrationBackgroundModel;
      
      [Inject]
      public var serverParams:EntranceServerParamsModel;
      
      [Inject]
      public var paramsModel:EntranceUrlParamsModel;
      
      [Inject]
      public var captchaService:§case for include§;
      
      public function §dynamic set switch§()
      {
         super();
      }
      
      public function set §""D§(param1:BitmapData) : void
      {
         this.§4y§.rgbData = param1;
      }
      
      public function set § &§(param1:IGameObject) : void
      {
         dispatch(new ParseUrlParamsEvent());
      }
      
      public function wrongPassword() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.PASSWORD_AUTHORIZATION_FAILED));
      }
      
      public function §,"+§() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.PASSWORD_EXTERNAL_AUTHORIZATION_FAILED));
      }
      
      public function externalLinkAlreadyExists() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.EXTERNAL_LINK_ALREADY_EXISTS));
      }
      
      public function externalValidationFailed() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.EXTERNAL_VALIDATION_FAILED));
      }
      
      public function inviteAlreadyActivated(param1:String) : void
      {
         dispatch(new ShowLoginFormEvent(param1,false,false));
      }
      
      public function §switch for do§() : void
      {
         dispatch(new ShowLoginFormEvent("",true,false));
      }
      
      public function goToLoginForm() : void
      {
         dispatch(new NavigationEvent(NavigationEvent.GO_TO_LOGIN_FORM));
      }
      
      public function §["M§(param1:String) : void
      {
         dispatch(new NavigationExternalEvent(NavigationExternalEvent.GO_TO_EXTERNAL_REGISTRATION_FORM,param1));
      }
      
      public function §9T§(param1:String) : void
      {
         dispatch(new NavigationExternalEvent(NavigationExternalEvent.GO_TO_EXTERNAL_LOGIN_FORM,param1));
      }
      
      public function §@!m§() : void
      {
         dispatch(new CallsignCheckResultEvent(CallsignCheckResultEvent.CALLSIGN_IS_FREE));
      }
      
      public function §native var in§(param1:Vector.<String>) : void
      {
         var _loc2_:CallsignCheckResultEvent = new CallsignCheckResultEvent(CallsignCheckResultEvent.CALLSIGN_IS_BUSY);
         _loc2_.freeUids = param1;
         dispatch(_loc2_);
      }
      
      public function §#V§() : void
      {
         dispatch(new CallsignCheckResultEvent(CallsignCheckResultEvent.CALLSIGN_IS_INCORRECT));
      }
      
      public function inviteNotFound() : void
      {
         dispatch(new InviteCheckResultEvent(InviteCheckResultEvent.INVITE_CODE_DOES_NOT_EXIST));
      }
      
      public function §default var finally§() : void
      {
         dispatch(new ContextEvent(ContextEvent.SHUTDOWN));
      }
      
      public function set inviteEnabled(param1:Boolean) : void
      {
         this.serverParams.inviteEnabled = param1;
      }
      
      public function set registrationThroughEmail(param1:Boolean) : void
      {
         this.serverParams.registrationThroughEmail = param1;
      }
      
      public function §while for case§() : void
      {
         dispatch(new PasswordRestoreResultEvent(PasswordRestoreResultEvent.RESTORE_MESSAGE_HAVE_BEEN_SENT));
      }
      
      public function §]!J§() : void
      {
         dispatch(new PasswordRestoreResultEvent(PasswordRestoreResultEvent.EMAIL_DOES_NOT_EXISTS));
      }
      
      public function §default const catch§(param1:String) : void
      {
         dispatch(new ShowChangeEmailAndPasswordFormEvent(param1));
      }
      
      public function §8$§() : void
      {
         dispatch(new ShowFormEvent(ShowFormEvent.SHOW_RECOVERY_HASH_IS_WRONG_ALERT));
      }
      
      public function captchaUpdated(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         this.captchaService.§4"$§(param2,param1);
      }
      
      public function set antiAddictionEnabled(param1:Boolean) : void
      {
         this.serverParams.antiAddictionEnabled = param1;
      }
      
      public function set §#"§(param1:Vector.<CaptchaLocation>) : void
      {
         this.serverParams.standAloneCaptchaEnabled = param1.indexOf(CaptchaLocation.CLIENT_STARTUP) != -1;
         this.serverParams.registrationCaptchaEnabled = param1.indexOf(CaptchaLocation.REGISTER_FORM) != -1;
         this.serverParams.loginCaptchaEnabled = param1.indexOf(CaptchaLocation.LOGIN_FORM) != -1;
      }
      
      public function setPasswordChangeResult(param1:Boolean, param2:String) : void
      {
         dispatch(new SetPasswordChangeResultEvent(param1,param2));
      }
      
      public function confirmEmailStatus(param1:ConfirmEmailStatus) : void
      {
         dispatch(new ShowConfirmEmailAlertEvent(param1));
      }
      
      public function §7!V§(param1:String) : void
      {
         dispatch(new ShowBlockValidationAlertEvent(ShowBlockValidationAlertEvent.YOU_WERE_BLOCKED,param1));
      }
      
      public function § !,§(param1:String, param2:int, param3:int, param4:int) : void
      {
         dispatch(new ShowBlockValidationAlertEvent(ShowBlockValidationAlertEvent.YOU_WERE_KICKED,param1,param2,param3,param4));
      }
      
      public function captchaAnswerCorrect(param1:CaptchaLocation) : void
      {
         this.captchaService.§for each§(param1);
      }
      
      public function §override const return§(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         dispatch(new CaptchaAnswerIsIncorrectEvent());
         this.captchaService.§4"$§(param2,param1);
      }
      
      public function §^"H§() : void
      {
         dispatch(new IfengEvent(IfengEvent.WRONG_URL_PARAMS));
      }
      
      public function §get var include§() : void
      {
         dispatch(new IfengEvent(IfengEvent.REGISTRATION_FAILED));
      }
      
      public function §-!P§() : void
      {
         dispatch(new IfengEvent(IfengEvent.START_REGISTRATION));
      }
      
      public function §-"!§() : void
      {
         dispatch(new PartnersEvent(PartnersEvent.START_REGISTRATION));
      }
      
      public function §native set static§() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.PARTNER_LINK_ALREADY_EXISTS));
      }
      
      public function §6!i§() : void
      {
         dispatch(new AuthorizationFailedEvent(AuthorizationFailedEvent.PARTNER_PASSWORD_AUTHORIZATION_FAILED));
      }
      
      public function §do var else§() : void
      {
         dispatch(new RegistrationFailedEvent(RegistrationFailedEvent.PASSWORD_IS_INCORRECT));
      }
      
      public function serverHalt() : void
      {
         if(!this.serverParams.serverHalt)
         {
            this.serverParams.serverHalt = true;
            dispatch(new EntranceErrorEvent(EntranceErrorEvent.SERVER_HALT));
         }
      }
      
      public function §;"K§() : void
      {
         dispatch(new EmailCheckResultEvent(EmailCheckResultEvent.EMAIL_IS_INVALID));
      }
      
      public function emailIsBusy() : void
      {
         dispatch(new EmailCheckResultEvent(EmailCheckResultEvent.EMAIL_IS_BUSY));
      }
      
      public function §`"3§() : void
      {
         dispatch(new EmailCheckResultEvent(EmailCheckResultEvent.EMAIL_IS_FREE));
      }
      
      public function emailDomainIsForbidden() : void
      {
         dispatch(new EmailCheckResultEvent(EmailCheckResultEvent.EMAIL_DOMAIN_IS_FORBIDDEN));
      }
      
      public function §1!v§(param1:String) : void
      {
         this.paramsModel.passedCallsign = param1;
         this.goToLoginForm();
      }
   }
}

