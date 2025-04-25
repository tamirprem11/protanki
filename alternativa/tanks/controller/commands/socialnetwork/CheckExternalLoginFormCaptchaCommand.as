package alternativa.tanks.controller.commands.socialnetwork
{
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.controller.events.socialnetwork.ExternalLoginEvent;
   import alternativa.tanks.service.§case for include§;
   import org.robotlegs.mvcs.Command;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   
   public class CheckExternalLoginFormCaptchaCommand extends Command
   {
      [Inject]
      public var captchaService:§case for include§;
      
      [Inject]
      public var event:ExternalLoginEvent;
      
      public function CheckExternalLoginFormCaptchaCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:ExternalLoginEvent = new ExternalLoginEvent(ExternalLoginEvent.LOGIN_AFTER_CAPTCHA_CHECKED,this.event.callsign,this.event.password,this.event.captchaAnswer);
         if(this.captchaService.loginCaptchaEnabled)
         {
            dispatch(new CheckCaptchaAnswerEvent(this.event.captchaAnswer,CaptchaLocation.LOGIN_FORM,_loc1_));
         }
         else
         {
            dispatch(_loc1_);
         }
      }
   }
}

