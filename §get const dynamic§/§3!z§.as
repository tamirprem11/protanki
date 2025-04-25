package §get const dynamic§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.servermodels.captcha.IServerCaptcha;
   import alternativa.tanks.servermodels.login.ILogin;
   import alternativa.tanks.servermodels.loginbyhash.ILoginByHash;
   import alternativa.tanks.servermodels.registartion.password.IPasswordRegistration;
   import alternativa.tanks.servermodels.socialnetwork.IExternalEntranceModel;
   import alternativa.tanks.service.IEntranceServerFacade;
   import org.robotlegs.mvcs.Actor;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §3!z§ extends Actor implements IEntranceServerFacade
   {
      private var _gameObject:IGameObject;
      
      public function §3!z§()
      {
         super();
      }
      
      public function checkCallsign(param1:String) : void
      {
         IPasswordRegistration(OSGi.getInstance().getService(IPasswordRegistration)).checkCallsign(param1);
      }
      
      public function §6t§(param1:String) : void
      {
      }
      
      public function §7!d§(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("system;activateInvite;" + param1);
      }
      
      public function §switch for use§(param1:String, param2:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("restore;recovery_account;" + param1 + ";" + param2);
      }
      
      public function login(param1:String, param2:String, param3:Boolean, param4:String) : void
      {
         ILogin(OSGi.getInstance().getService(ILogin)).login(param1,param2,param3,param4);
      }
      
      public function §implements const default§(param1:String, param2:String) : void
      {
         IExternalEntranceModel(OSGi.getInstance().getService(IExternalEntranceModel)).login(param1,param2);
      }
      
      public function §#!M§() : void
      {
      }
      
      public function §set return§(param1:String) : void
      {
      }
      
      public function loginByHash(param1:String) : void
      {
         ILoginByHash(OSGi.getInstance().getService(ILoginByHash)).loginByHash(param1);
      }
      
      public function loginBySingleUseHash(param1:String) : void
      {
      }
      
      public function §throw var super§(param1:String, param2:String) : void
      {
      }
      
      public function set § &§(param1:IGameObject) : void
      {
         this._gameObject = param1;
      }
      
      public function §import set if§(param1:String, param2:String, param3:String, param4:Boolean, param5:String, param6:String, param7:String, param8:String) : void
      {
         (OSGi.getInstance().getService(IPasswordRegistration) as IPasswordRegistration).register(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §try const try§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String) : void
      {
      }
      
      public function getNewCaptcha(param1:CaptchaLocation) : void
      {
         (OSGi.getInstance().getService(IServerCaptcha) as IServerCaptcha).getNewCaptcha(param1);
      }
      
      public function checkCaptcha(param1:String, param2:CaptchaLocation) : void
      {
      }
      
      public function changePasswordAndEmail(param1:String, param2:String) : void
      {
      }
      
      public function §8!O§(param1:String, param2:String) : void
      {
      }
      
      public function startExternalRegisterUser(param1:String, param2:Boolean, param3:String) : void
      {
         IExternalEntranceModel(OSGi.getInstance().getService(IExternalEntranceModel)).startExternalRegisterUser(param1,param2,param3);
      }
      
      public function startExternalLoginUser(param1:String, param2:Boolean, param3:String) : void
      {
         IExternalEntranceModel(OSGi.getInstance().getService(IExternalEntranceModel)).startExternalLoginUser(param1,param2,param3);
      }
      
      public function finishExternalRegisterUser(param1:String, param2:String) : void
      {
         IExternalEntranceModel(OSGi.getInstance().getService(IExternalEntranceModel)).finishExternalRegisterUser(param1,param2);
      }
      
      public function §try const finally§(param1:String) : void
      {
      }
      
      public function §import for implements§(param1:String, param2:String) : void
      {
      }
      
      public function §class var function§(param1:String, param2:String) : void
      {
      }
   }
}

