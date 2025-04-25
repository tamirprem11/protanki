package projects.tanks.clients.fp10.libraries.tanksservices.model.friends.outgoing
{
   import projects.tanks.client.users.model.friends.container.UserContainerCC;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class FriendsOutgoingModel
   {
      [Inject]
      public static var friendsInfoService:IFriendInfoService;
      
      public function FriendsOutgoingModel()
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
            friendsInfoService.setFriendState(_loc3_,FriendState.OUTGOING);
         }
      }
      
      public function onAdding(param1:String) : void
      {
         friendsInfoService.setFriendState(param1,FriendState.OUTGOING);
      }
      
      public function onRemoved(param1:String) : void
      {
         friendsInfoService.deleteFriend(param1,FriendState.OUTGOING);
      }
   }
}

