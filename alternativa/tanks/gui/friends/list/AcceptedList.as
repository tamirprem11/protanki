package alternativa.tanks.gui.friends.list
{
   import alternativa.tanks.gui.friends.IFriendsListState;
   import alternativa.tanks.gui.friends.list.dataprovider.FriendsDataProvider;
   import alternativa.tanks.gui.friends.list.renderer.FriendsAcceptedListRenderer;
   import alternativa.tanks.gui.friends.list.renderer.HeaderAcceptedList;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.battle.BattleLinkData;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.online.ClientOnlineNotifierData;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.NewFriendEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.LeaveBattleNotifierServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.SetBattleNotifierServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.OnlineNotifierServiceEvent;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   
   public class AcceptedList extends FriendsList implements IFriendsListState
   {
      [Inject]
      public static var contextMenuService:IContextMenuService;
      
      [Inject]
      public static var onlineNotifierService:IOnlineNotifierService;
      
      [Inject]
      public static var battleNotifierService:IBattleNotifierService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var battleInviteService:IBattleInviteService;
      
      public static var SCROLL_ON:Boolean;
      
      private var _header:HeaderAcceptedList;
      
      public function AcceptedList()
      {
         super();
         init(FriendsAcceptedListRenderer);
         _dataProvider.getItemAtHandler = this.markAsViewed;
         this._header = new HeaderAcceptedList();
         addChild(this._header);
      }
      
      private function markAsViewed(param1:Object) : void
      {
         if(!isViewed(param1) && Boolean(param1.isNew))
         {
            friendInfoService.removeNewAcceptedFriend(param1.id);
            setAsViewed(param1);
         }
      }
      
      public function initList() : void
      {
         friendInfoService.addEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
         friendInfoService.addEventListener(NewFriendEvent.ACCEPTED_CHANGE,this.onNewFriendChange);
         contextMenuService.addEventListener(ContextMenuServiceEvent.REMOVE_FROM_FRIENDS,this.onRemoveFromFriends);
         onlineNotifierService.addEventListener(OnlineNotifierServiceEvent.SET_ONLINE,this.onSetOnline);
         battleNotifierService.addEventListener(SetBattleNotifierServiceEvent.SET_BATTLE,this.onSetBattle);
         battleNotifierService.addEventListener(LeaveBattleNotifierServiceEvent.LEAVE,this.onLeaveBattle);
         battleInfoService.addEventListener(BattleInfoServiceEvent.SELECTION_BATTLE,this.onSelectBattleInfo);
         battleInfoService.addEventListener(BattleInfoServiceEvent.RESET_SELECTION_BATTLE,this.onResetSelectBattleInfo);
         battleInviteService.addEventListener(BattleInviteServiceEvent.REMOVE_INVITE,this.onRemoveInvite);
         _dataProvider.sortOn([FriendsDataProvider.IS_NEW,FriendsDataProvider.ONLINE,FriendsDataProvider.IS_BATTLE,FriendsDataProvider.UID],[Array.NUMERIC | Array.DESCENDING,Array.NUMERIC | Array.DESCENDING,Array.NUMERIC | Array.DESCENDING,Array.CASEINSENSITIVE]);
         _list.scrollToIndex(0);
         this.resize(_width,_height);
         fillFriendsList(FriendState.ACCEPTED);
      }
      
      private function onNewFriendChange(param1:NewFriendEvent) : void
      {
         _dataProvider.setUserAsNew(param1.userId);
      }
      
      private function onChangeFriendState(param1:FriendStateChangeEvent) : void
      {
         if(param1.state != FriendState.ACCEPTED)
         {
            _dataProvider.removeUser(param1.userId);
            this.resize(_width,_height);
            return;
         }
         if(_dataProvider.getItemIndexByProperty("id",param1.userId,true) == -1)
         {
            _dataProvider.addUser(param1.userId);
            this.resize(_width,_height);
         }
      }
      
      private function onRemoveFromFriends(param1:ContextMenuServiceEvent) : void
      {
         _dataProvider.removeUser(param1.userId);
         this.resize(_width,_height);
      }
      
      private function onSetOnline(param1:OnlineNotifierServiceEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:Vector.<ClientOnlineNotifierData> = param1.users;
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = _dataProvider.setOnlineUser(_loc4_[_loc6_],false);
            _loc3_ = !_loc3_ ? Boolean(_loc2_ != -1) : Boolean(false);
            _loc6_++;
         }
         if(_loc3_)
         {
            _dataProvider.reSort();
         }
      }
      
      private function onSetBattle(param1:SetBattleNotifierServiceEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:Vector.<BattleLinkData> = param1.users;
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = _dataProvider.setBattleUser(_loc4_[_loc6_],false);
            _loc3_ = !_loc3_ ? Boolean(_loc2_ != -1) : Boolean(false);
            _loc6_++;
         }
         if(_loc3_ > 0)
         {
            _dataProvider.reSort();
         }
      }
      
      private function onLeaveBattle(param1:LeaveBattleNotifierServiceEvent) : void
      {
         _dataProvider.clearBattleUser(param1.userId);
      }
      
      private function onResetSelectBattleInfo(param1:BattleInfoServiceEvent) : void
      {
         _dataProvider.updatePropertyAvailableInvite();
      }
      
      private function onSelectBattleInfo(param1:BattleInfoServiceEvent) : void
      {
         _dataProvider.updatePropertyAvailableInvite();
      }
      
      private function onRemoveInvite(param1:BattleInviteServiceEvent) : void
      {
         _dataProvider.updatePropertyAvailableInviteById(param1.userId);
      }
      
      override public function resize(param1:Number, param2:Number) : void
      {
         _width = param1;
         _height = param2;
         AcceptedList.SCROLL_ON = _list.maxVerticalScrollPosition > 0;
         this._header.width = _width;
         _list.y = 20;
         _list.width = AcceptedList.SCROLL_ON ? Number(_width + 6) : Number(_width);
         _list.height = _height - 20;
      }
      
      public function hide() : void
      {
         contextMenuService.removeEventListener(ContextMenuServiceEvent.REMOVE_FROM_FRIENDS,this.onRemoveFromFriends);
         friendInfoService.removeEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
         friendInfoService.removeEventListener(NewFriendEvent.ACCEPTED_CHANGE,this.onNewFriendChange);
         onlineNotifierService.removeEventListener(OnlineNotifierServiceEvent.SET_ONLINE,this.onSetOnline);
         battleNotifierService.removeEventListener(SetBattleNotifierServiceEvent.SET_BATTLE,this.onSetBattle);
         battleNotifierService.removeEventListener(LeaveBattleNotifierServiceEvent.LEAVE,this.onLeaveBattle);
         battleInfoService.removeEventListener(BattleInfoServiceEvent.SELECTION_BATTLE,this.onSelectBattleInfo);
         battleInfoService.removeEventListener(BattleInfoServiceEvent.RESET_SELECTION_BATTLE,this.onResetSelectBattleInfo);
         battleInviteService.removeEventListener(BattleInviteServiceEvent.REMOVE_INVITE,this.onRemoveInvite);
         if(parent.contains(this))
         {
            parent.removeChild(this);
            _dataProvider.removeAll();
         }
      }
      
      public function filter(param1:String, param2:String) : void
      {
         filterByProperty(param1,param2);
         this.resize(_width,_height);
      }
      
      public function resetFilter() : void
      {
         _dataProvider.resetFilter();
         this.resize(_width,_height);
      }
   }
}

