package alternativa.tanks.servermodels.captcha
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.IEntranceClientFacade;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class ServerCaptchaModel implements IServerCaptcha
   {
      [Inject]
      public static var clientFacade:IEntranceClientFacade;
      
      public function ServerCaptchaModel()
      {
         super();
      }
      
      public function showCaptcha(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         clientFacade.captchaUpdated(param1,param2);
      }
      
      public function captchaCorrect(param1:CaptchaLocation) : void
      {
         clientFacade.captchaAnswerCorrect(param1);
      }
      
      public function captchaFailed(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         clientFacade.§override const return§(param1,param2);
      }
      
      public function checkCaptcha(param1:String, param2:CaptchaLocation) : void
      {
      }
      
      public function getNewCaptcha(param1:CaptchaLocation) : void
      {
         switch(param1)
         {
            case CaptchaLocation.LOGIN_FORM:
               Network(OSGi.getInstance().getService(INetworker)).send("auth;refresh_captcha");
               break;
            case CaptchaLocation.REGISTER_FORM:
               Network(OSGi.getInstance().getService(INetworker)).send("registration;refresh_captcha");
               break;
            case CaptchaLocation.RESTORE_PASSWORD_FORM:
               Network(OSGi.getInstance().getService(INetworker)).send("restore;refresh_captcha");
               break;
            case CaptchaLocation.ACCOUNT_SETTINGS_FORM:
               Network(OSGi.getInstance().getService(INetworker)).send("lobby;refresh_captcha");
         }
      }
      
      public function objectLoaded() : void
      {
         clientFacade.§#"§ = new Vector.<CaptchaLocation>([CaptchaLocation.LOGIN_FORM,CaptchaLocation.REGISTER_FORM,CaptchaLocation.RESTORE_PASSWORD_FORM]);
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

