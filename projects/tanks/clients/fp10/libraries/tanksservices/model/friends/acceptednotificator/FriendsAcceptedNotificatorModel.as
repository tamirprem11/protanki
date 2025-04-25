package projects.tanks.clients.fp10.libraries.tanksservices.model.friends.acceptednotificator
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import projects.tanks.client.users.model.friends.container.UserContainerCC;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendRemoveEvent;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class FriendsAcceptedNotificatorModel
   {
      [Inject]
      public static var logService:LogService;
      
      [Inject]
      public static var friendsInfoService:IFriendInfoService;
      
      public function FriendsAcceptedNotificatorModel()
      {
         super();
      }
      
      public function objectLoaded(param1:UserContainerCC) : void
      {
         var _loc2_:UserContainerCC = null;
         var _loc3_:String = null;
         _loc2_ = param1;
         for each(_loc3_ in _loc2_.users)
         {
            friendsInfoService.onAddNewAcceptedFriend(_loc3_);
         }
         friendsInfoService.addEventListener(NewFriendRemoveEvent.ACCEPTED,this.remove);
      }
      
      private function remove(param1:NewFriendRemoveEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;remove_new_accepted_friend;" + param1.userId);
      }
      
      public function onAdding(param1:String) : void
      {
         friendsInfoService.onAddNewAcceptedFriend(param1);
      }
      
      public function onRemoved(param1:String) : void
      {
         friendsInfoService.onRemoveNewAcceptedFriend(param1);
      }
      
      public function objectUnloaded() : void
      {
         friendsInfoService.removeEventListener(NewFriendRemoveEvent.ACCEPTED,this.remove);
      }
   }
}

