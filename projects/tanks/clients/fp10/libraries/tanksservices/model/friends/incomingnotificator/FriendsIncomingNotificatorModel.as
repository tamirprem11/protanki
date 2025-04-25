package projects.tanks.clients.fp10.libraries.tanksservices.model.friends.incomingnotificator
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import projects.tanks.client.users.model.friends.container.UserContainerCC;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendRemoveEvent;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class FriendsIncomingNotificatorModel
   {
      [Inject]
      public static var logService:LogService;
      
      [Inject]
      public static var friendsInfoService:IFriendInfoService;
      
      public function FriendsIncomingNotificatorModel()
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
            logService.getLogger("fcounter").debug("FriendsIncomingNotificatorModel newFriendsIncoming userId=%1",[_loc3_]);
            friendsInfoService.onAddNewIncomingFriend(_loc3_);
         }
         friendsInfoService.addEventListener(NewFriendRemoveEvent.INCOMING,this.remove);
      }
      
      public function remove(param1:NewFriendRemoveEvent) : void
      {
         logService.getLogger("fcounter").debug("FriendsIncomingNotificatorModel remove userId=%1",[param1.userId]);
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;remove_new_incoming_friend;" + param1.userId);
      }
      
      public function onAdding(param1:String) : void
      {
         logService.getLogger("fcounter").debug("FriendsIncomingNotificatorModel onAdding userId=%1",[param1]);
         friendsInfoService.onAddNewIncomingFriend(param1);
      }
      
      public function onRemoved(param1:String) : void
      {
         logService.getLogger("fcounter").debug("FriendsIncomingNotificatorModel onRemoved userId=%1",[param1]);
         friendsInfoService.onRemoveNewIncomingFriend(param1);
      }
      
      public function objectUnloaded() : void
      {
         logService.getLogger("fcounter").debug("FriendsIncomingNotificatorModel objectUnloaded");
         friendsInfoService.removeEventListener(NewFriendRemoveEvent.INCOMING,this.remove);
      }
   }
}

