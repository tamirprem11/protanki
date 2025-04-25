package §get const dynamic§
{
   import alternativa.tanks.controller.events.CaptchaUpdatedEvent;
   import alternativa.tanks.servermodels.captcha.CaptchaParser;
   import alternativa.tanks.service.IEntranceServerFacade;
   import alternativa.tanks.service.§case for include§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   import org.robotlegs.mvcs.Actor;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   
   public class §]!`§ extends Actor implements §case for include§
   {
      [Inject]
      public var serverFacade:IEntranceServerFacade;
      
      private var §in set var§:Dictionary = new Dictionary();
      
      private var §package for return§:Dictionary = new Dictionary();
      
      public function §]!`§()
      {
         super();
      }
      
      public function §default for import§(param1:CaptchaLocation, param2:String, param3:Function) : void
      {
         this.§in set var§[param1] = param3;
         this.serverFacade.checkCaptcha(param2,param1);
      }
      
      public function §for each§(param1:CaptchaLocation) : void
      {
         this.§in set var§[param1].apply();
      }
      
      public function §4"$§(param1:Vector.<int>, param2:CaptchaLocation) : void
      {
         this.§package for return§[param2] = true;
         CaptchaParser.parse(param1,this.§^!x§,param2);
      }
      
      private function §^!x§(param1:Bitmap, param2:CaptchaLocation) : void
      {
         switch(param2)
         {
            case CaptchaLocation.CLIENT_STARTUP:
               dispatch(new CaptchaUpdatedEvent(CaptchaUpdatedEvent.STAND_ALONE_CAPTCHA_UPDATED,param1));
               break;
            case CaptchaLocation.LOGIN_FORM:
               dispatch(new CaptchaUpdatedEvent(CaptchaUpdatedEvent.LOGIN_FORM_CAPTCHA_UPDATED,param1));
               break;
            case CaptchaLocation.REGISTER_FORM:
               dispatch(new CaptchaUpdatedEvent(CaptchaUpdatedEvent.REGISTRATION_FORM_CAPTCHA_UPDATED,param1));
         }
      }
      
      public function get loginCaptchaEnabled() : Boolean
      {
         return Boolean(this.§package for return§[CaptchaLocation.LOGIN_FORM]);
      }
   }
}

