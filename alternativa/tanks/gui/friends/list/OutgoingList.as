package alternativa.tanks.gui.friends.list
{
   import alternativa.tanks.gui.friends.IFriendsListState;
   import alternativa.tanks.gui.friends.list.renderer.FriendsOutgoingListRenderer;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   
   public class OutgoingList extends FriendsList implements IFriendsListState
   {
      [Inject]
      public static var friendInfoService:IFriendInfoService;
      
      [Inject]
      public static var contextMenuService:IContextMenuService;
      
      public function OutgoingList()
      {
         super();
         init(FriendsOutgoingListRenderer);
      }
      
      public function initList() : void
      {
         _dataProvider.sortOn(["uid"],[Array.CASEINSENSITIVE]);
         fillFriendsList(FriendState.OUTGOING);
         _list.scrollToIndex(0);
         resize(_width,_height);
         friendInfoService.addEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
         contextMenuService.addEventListener(ContextMenuServiceEvent.CANCEL_REQUEST,this.onCancelRequest);
      }
      
      private function onChangeFriendState(param1:FriendStateChangeEvent) : void
      {
         if(param1.state != FriendState.OUTGOING)
         {
            _dataProvider.removeUser(param1.userId);
            resize(_width,_height);
            return;
         }
         if(_dataProvider.getItemIndexByProperty("id",param1.userId,true) == -1)
         {
            _dataProvider.addUser(param1.userId);
            resize(_width,_height);
         }
      }
      
      private function onCancelRequest(param1:ContextMenuServiceEvent) : void
      {
         _dataProvider.removeUser(param1.userId);
         resize(_width,_height);
      }
      
      public function hide() : void
      {
         contextMenuService.removeEventListener(ContextMenuServiceEvent.CANCEL_REQUEST,this.onCancelRequest);
         friendInfoService.removeEventListener(FriendStateChangeEvent.CHANGE,this.onChangeFriendState);
         if(parent.contains(this))
         {
            parent.removeChild(this);
            _dataProvider.removeAll();
         }
      }
      
      public function filter(param1:String, param2:String) : void
      {
         filterByProperty(param1,param2);
         resize(_width,_height);
      }
      
      public function resetFilter() : void
      {
         _dataProvider.resetFilter();
         resize(_width,_height);
      }
   }
}

