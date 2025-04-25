package alternativa.tanks.service.dailyquest
{
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadPostListener;
   import §return set if§.§get const switch§;
   import §return set if§.§set final§;
   
   public class §finally set switch§ extends §get const switch§ implements §set final§, ObjectLoadPostListener, ObjectUnloadPostListener
   {
      [Inject]
      public static var §+!$§:DailyQuestNotifierService;
      
      public function §finally set switch§()
      {
         super();
      }
      
      public function notifyDailyQuestCompleted() : void
      {
         §+!$§.showNotification();
      }
      
      public function objectLoadedPost() : void
      {
         §+!$§.addEventListener(§6!A§.§,§,this.§null else§);
      }
      
      private function §null else§(param1:§6!A§) : void
      {
         server.§,v§();
      }
      
      public function objectUnloadedPost() : void
      {
         §+!$§.removeEventListener(§6!A§.§,§,this.§null else§);
      }
      
      public function notifyDailyQuestGenerated() : void
      {
         §+!$§.showNotification();
      }
   }
}

