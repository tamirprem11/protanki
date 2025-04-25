package §%0§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §86§ implements §'!s§
   {
      private var object:IGameObject;
      
      private var impl:§'!s§;
      
      public function §86§(param1:IGameObject, param2:§'!s§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function getEnterPrice() : int
      {
         var result:int = 0;
         try
         {
            Model.object = this.object;
            result = this.impl.getEnterPrice();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getTimeLeftInSec() : int
      {
         var result:int = 0;
         try
         {
            Model.object = this.object;
            result = this.impl.getTimeLeftInSec();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

