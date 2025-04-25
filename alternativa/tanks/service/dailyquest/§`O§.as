package alternativa.tanks.service.dailyquest
{
   import flash.events.EventDispatcher;
   
   public class §`O§ extends EventDispatcher implements DailyQuestNotifierService
   {
      public function §`O§()
      {
         super();
      }
      
      public function showNotification() : void
      {
         dispatchEvent(new §6!A§(§6!A§.§if set package§));
      }
      
      public function hideNotification() : void
      {
         dispatchEvent(new §6!A§(§6!A§.§,§));
      }
   }
}

