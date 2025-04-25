package alternativa.tanks.controller.commands.captcha
{
   import alternativa.tanks.controller.events.LoginEvent;
   import alternativa.tanks.service.§case for include§;
   import org.robotlegs.mvcs.Command;
   
   public class CheckLoginFormCaptchaCommand extends Command
   {
      [Inject]
      public var captchaService:§case for include§;
      
      [Inject]
      public var event:LoginEvent;
      
      public function CheckLoginFormCaptchaCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:LoginEvent = new LoginEvent(LoginEvent.LOGIN_AFTER_CAPTCHA_CHECKED,this.event.callsign,this.event.password,this.event.rememberMe,this.event.captchaAnswer);
         dispatch(_loc1_);
      }
   }
}

