package §"!T§
{
   import §finally for else§.§case include§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §[!y§ implements §super for final§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§super for final§>;
      
      public function §[!y§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§super for final§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function skipDailyQuest(param1:§case include§) : void
      {
         var i:int = 0;
         var m:§super for final§ = null;
         var dailyQuestInfo:§case include§ = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.skipDailyQuest(dailyQuestInfo);
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function takePrize(param1:§case include§) : void
      {
         var i:int = 0;
         var m:§super for final§ = null;
         var dailyQuestInfo:§case include§ = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.takePrize(dailyQuestInfo);
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

