package alternativa.tanks.service.battle
{
   import alternativa.tanks.model.item.BattleItem;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class §set for function§
   {
      [Inject]
      public static var friendsInfoService:IFriendInfoService;
      
      [Inject]
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function §set for function§()
      {
         super();
         friendsInfoService.addEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
      }
      
      public function destroy() : void
      {
         friendsInfoService.removeEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
      }
      
      private function onChangeFriendState(param1:FriendStateChangeEvent) : void
      {
         var _loc2_:BattleItem = null;
         var _loc3_:String = param1.userId;
         var _loc4_:FriendState = param1.state;
         var _loc5_:FriendState = param1.prevState;
         if(battleUserInfoService.§"!V§(_loc3_))
         {
            _loc2_ = BattleItem(battleUserInfoService.§while for extends§(_loc3_).adapt(BattleItem));
            if(_loc4_ == FriendState.ACCEPTED)
            {
               _loc2_.onAddFriend(_loc3_);
            }
            if(_loc4_ == FriendState.UNKNOWN && _loc5_ == FriendState.ACCEPTED)
            {
               _loc2_.onDeleteFriend(_loc3_);
            }
         }
      }
   }
}

