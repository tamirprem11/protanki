package alternativa.tanks.servermodels.loginbyhash
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.IEntranceClientFacade;
   import flash.net.SharedObject;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class LoginByHashModel implements ILoginByHash
   {
      [Inject]
      public static var clientFacade:IEntranceClientFacade;
      
      [Inject]
      public static var storageService:IStorageService;
      
      public function LoginByHashModel()
      {
         super();
      }
      
      public function loginBySingleUseHash(param1:String) : void
      {
      }
      
      public function loginByHash(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("auth;loginByHash;" + param1);
      }
      
      public function loginBySingleUseHashFailed() : void
      {
         clientFacade.goToLoginForm();
      }
      
      public function loginByHashFailed() : void
      {
         clientFacade.goToLoginForm();
      }
      
      public function rememberUsersHash(param1:String) : void
      {
         var _loc2_:SharedObject = storageService.getStorage();
         _loc2_.data.userHash = param1;
         _loc2_.flush();
      }
   }
}

