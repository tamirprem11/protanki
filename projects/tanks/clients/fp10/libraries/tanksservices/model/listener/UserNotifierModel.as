package projects.tanks.clients.fp10.libraries.tanksservices.model.listener
{
   import alternativa.osgi.OSGi;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.UserRefresh;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.UserInfoConsumer;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class UserNotifierModel implements UserNotifier
   {
      [Inject]
      public static var userInfoService:IUserInfoService;
      
      public function UserNotifierModel()
      {
         super();
         this.objectLoaded();
      }
      
      public function subcribe(param1:String, param2:UserInfoConsumer) : void
      {
         this.refresh(param1,param2);
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;subscribe_user_update;" + param1);
      }
      
      public function refresh(param1:String, param2:UserInfoConsumer) : void
      {
         §0d§.§8!A§.refresh(param1,param2);
         §0d§.§8";§.refresh(param1,param2);
         §0d§.§var for each§.refresh(param1,param2);
         §0d§.§package for set§.refresh(param1,param2);
      }
      
      public function unsubcribe(param1:Vector.<String>) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            UserRefresh(OSGi.getInstance().getService(UserRefresh)).remove(_loc2_);
            Network(OSGi.getInstance().getService(INetworker)).send("lobby;unsubscribe_user_update;" + _loc2_);
         }
      }
      
      public function hasDataConsumer(param1:String) : Boolean
      {
         return userInfoService.hasConsumer(param1);
      }
      
      public function getDataConsumer(param1:String) : UserInfoConsumer
      {
         return userInfoService.getConsumer(param1);
      }
      
      public function objectLoaded() : void
      {
         userInfoService.init();
      }
      
      public function objectUnloaded() : void
      {
         userInfoService.unload();
      }
      
      public function getCurrentUserId() : String
      {
         var _loc1_:IUserPropertiesService = OSGi.getInstance().getService(IUserPropertiesService) as IUserPropertiesService;
         return _loc1_.userName;
      }
   }
}

