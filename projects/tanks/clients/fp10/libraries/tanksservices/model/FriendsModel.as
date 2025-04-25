package projects.tanks.clients.fp10.libraries.tanksservices.model
{
   import alternativa.osgi.OSGi;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionServiceUidEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   
   public class FriendsModel implements IFriends, INetworkListener
   {
      [Inject]
      public static var friendsActionService:IFriendActionService;
      
      public function FriendsModel()
      {
         super();
      }
      
      public function onData(param1:Command) : void
      {
         if(param1.type == Type.LOBBY)
         {
            switch(param1.args[0])
            {
               case "friend_check_exist":
                  this.uidExist();
                  break;
               case "friend_check_not_exist":
                  this.uidNotExist();
                  break;
               case "friend_alreadyInAcceptedFriends":
                  this.alreadyInAcceptedFriends(param1.args[1]);
                  break;
               case "friend_alreadyInIncomingFriends":
                  this.alreadyInIncomingFriends(param1.args[1],param1.args[1]);
                  break;
               case "friend_alreadyInOutgoingFriends":
                  this.alreadyInOutgoingFriends(param1.args[1]);
            }
         }
      }
      
      public function objectLoaded() : void
      {
         friendsActionService.addEventListener(FriendActionServiceEvent.ACCEPT,this.onAccept);
         friendsActionService.addEventListener(FriendActionServiceEvent.ADD,this.onAdd);
         friendsActionService.addEventListener(FriendActionServiceUidEvent.ADD,this.onAddByUid);
         friendsActionService.addEventListener(FriendActionServiceEvent.BREAK_OFF,this.onBreakItOff);
         friendsActionService.addEventListener(FriendActionServiceEvent.REJECT,this.onReject);
         friendsActionService.addEventListener(FriendActionServiceEvent.REJECT_ALL_INCOMING,this.onRejectAllIncoming);
         friendsActionService.addEventListener(FriendActionServiceEvent.REVOKE,this.onRevoke);
         friendsActionService.addEventListener(FriendActionServiceUidEvent.CHECK,this.onCheck);
      }
      
      private function onAccept(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_accept;" + param1.userId);
      }
      
      private function onAddByUid(param1:FriendActionServiceUidEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_add;" + param1.uid);
      }
      
      private function onAdd(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_add;" + param1.userId);
      }
      
      private function onBreakItOff(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_breakItOff;" + param1.userId);
      }
      
      private function onReject(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_reject;" + param1.userId);
      }
      
      private function onRejectAllIncoming(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_rejectAllIncoming");
      }
      
      private function onRevoke(param1:FriendActionServiceEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_revoke;" + param1.userId);
      }
      
      private function onCheck(param1:FriendActionServiceUidEvent) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;friend_check;" + param1.uid);
      }
      
      public function objectUnloaded() : void
      {
         friendsActionService.removeEventListener(FriendActionServiceEvent.ACCEPT,this.onAccept);
         friendsActionService.removeEventListener(FriendActionServiceEvent.ADD,this.onAdd);
         friendsActionService.removeEventListener(FriendActionServiceUidEvent.ADD,this.onAddByUid);
         friendsActionService.removeEventListener(FriendActionServiceEvent.BREAK_OFF,this.onBreakItOff);
         friendsActionService.removeEventListener(FriendActionServiceEvent.REJECT,this.onReject);
         friendsActionService.removeEventListener(FriendActionServiceEvent.REJECT_ALL_INCOMING,this.onRejectAllIncoming);
         friendsActionService.removeEventListener(FriendActionServiceEvent.REVOKE,this.onRevoke);
         friendsActionService.removeEventListener(FriendActionServiceUidEvent.CHECK,this.onCheck);
      }
      
      public function isLocal() : Boolean
      {
         return true;
      }
      
      public function alreadyInAcceptedFriends(param1:String) : void
      {
         friendsActionService.alreadyInAcceptedFriends(param1);
      }
      
      public function alreadyInIncomingFriends(param1:String, param2:String) : void
      {
         friendsActionService.alreadyInIncomingFriends(param1,param2);
      }
      
      public function alreadyInOutgoingFriends(param1:String) : void
      {
         friendsActionService.alreadyInOutgoingFriends(param1);
      }
      
      public function uidExist() : void
      {
         friendsActionService.uidExist();
      }
      
      public function uidNotExist() : void
      {
         friendsActionService.uidNotExist();
      }
   }
}

