package §0"[§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §]!C§ implements §default set false§
   {
      private var object:IGameObject;
      
      private var impl:§default set false§;
      
      public function §]!C§(param1:IGameObject, param2:§default set false§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function getClanName() : String
      {
         var result:String = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getClanName();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getClanLink() : String
      {
         var result:String = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getClanLink();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

