package alternativa.tanks.servermodels.login
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.IEntranceClientFacade;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class LoginModel implements ILogin
   {
      [Inject]
      public static var entranceClientFacade:IEntranceClientFacade;
      
      public function LoginModel()
      {
         super();
      }
      
      public function wrongPassword() : void
      {
         entranceClientFacade.wrongPassword();
      }
      
      public function login(param1:String, param2:String, param3:Boolean, param4:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("auth;login;" + param4 + ";" + param3 + ";" + param1 + ";" + param2);
      }
   }
}

