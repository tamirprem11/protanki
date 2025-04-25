package §30§
{
   import §'J§.§do const in§;
   import §'J§.§set for static§;
   import alternativa.tanks.controllers.BattleSelectVectorUtil;
   import alternativa.tanks.model.item.BattleItem;
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class BattleDMItemModel extends §set for static§ implements §do const in§, §@"#§, BattleItem, ObjectLoadListener
   {
      [Inject]
      public static var battleListFormService:IBattleListFormService;
      
      [Inject]
      public static var friendsInfoService:IFriendInfoService;
      
      [Inject]
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function BattleDMItemModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:String = null;
         var _loc2_:BattleDMData = this.data();
         var _loc3_:Vector.<String> = getInitParam().users;
         var _loc4_:int = int(_loc3_.length - 1);
         while(_loc4_ >= 0)
         {
            _loc1_ = _loc3_[_loc4_];
            _loc2_.users.push(_loc1_);
            battleUserInfoService.connect(_loc1_,object);
            if(friendsInfoService.isFriendsInState(_loc1_,FriendState.ACCEPTED))
            {
               _loc2_.friends.push(_loc1_);
            }
            _loc4_--;
         }
      }
      
      public function getUsersCount() : int
      {
         return this.data().users.length;
      }
      
      public function getFriendsCount() : int
      {
         return this.data().friends.length;
      }
      
      public function onReserveSlot(param1:String) : void
      {
         this.data().users.push(param1);
         battleUserInfoService.connect(param1,object);
         if(friendsInfoService.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onAddFriend(param1);
         }
         this.§,,§();
      }
      
      public function onReleaseSlot(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().users,param1);
         battleUserInfoService.disconnect(param1);
         if(friendsInfoService.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onDeleteFriend(param1);
         }
         this.§,,§();
      }
      
      private function §,,§() : void
      {
         battleListFormService.updateUsersCountDm(object.name,this.data().users.length,this.data().friends.length);
      }
      
      private function data() : BattleDMData
      {
         var _loc1_:BattleDMData = BattleDMData(getData(BattleDMData));
         if(_loc1_ == null)
         {
            _loc1_ = new BattleDMData();
            putData(BattleDMData,_loc1_);
         }
         return _loc1_;
      }
      
      public function onAddFriend(param1:String) : void
      {
         this.data().friends.push(param1);
         this.§,,§();
      }
      
      public function onDeleteFriend(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().friends,param1);
         this.§,,§();
      }
   }
}

class BattleDMData
{
   public var users:Vector.<String> = new Vector.<String>();
   
   public var friends:Vector.<String> = new Vector.<String>();
   
   public function BattleDMData()
   {
      super();
   }
}
