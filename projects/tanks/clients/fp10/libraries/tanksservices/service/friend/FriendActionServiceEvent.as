package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import flash.events.Event;
   
   public class FriendActionServiceEvent extends Event
   {
      public static const ADD:String = "FriendsActionServiceEvent.ADD";
      
      public static const ACCEPT:String = "FriendsActionServiceEvent.ACCEPT";
      
      public static const BREAK_OFF:String = "FriendsActionServiceEvent.BREAK_OFF";
      
      public static const REJECT:String = "FriendsActionServiceEvent.REJECT";
      
      public static const REJECT_ALL_INCOMING:String = "FriendsActionServiceEvent.REJECT_ALL_INCOMING";
      
      public static const REVOKE:String = "FriendsActionServiceEvent.REVOKE";
      
      public var userId:String;
      
      public function FriendActionServiceEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.userId = param2;
      }
   }
}

