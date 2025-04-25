package §"!T§
{
   import §finally for else§.§case include§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §return default§ implements §super for final§
   {
      private var object:IGameObject;
      
      private var impl:§super for final§;
      
      public function §return default§(param1:IGameObject, param2:§super for final§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function skipDailyQuest(param1:§case include§) : void
      {
         var dailyQuestInfo:§case include§ = param1;
         try
         {
            Model.object = this.object;
            this.impl.skipDailyQuest(dailyQuestInfo);
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function takePrize(param1:§case include§) : void
      {
         var dailyQuestInfo:§case include§ = param1;
         try
         {
            Model.object = this.object;
            this.impl.takePrize(dailyQuestInfo);
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

