package projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online
{
   import flash.events.IEventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.online.ClientOnlineNotifierData;
   
   public interface IOnlineNotifierService extends IEventDispatcher
   {
      function setOnline(param1:Vector.<ClientOnlineNotifierData>) : void;
      
      function addUserOnlineData(param1:ClientOnlineNotifierData) : void;
      
      function removeUserOnlineData(param1:String) : void;
      
      function hasUserOnlineData(param1:String) : Boolean;
      
      function getUserOnlineData(param1:String) : ClientOnlineNotifierData;
   }
}

