package §with const catch§
{
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §0"F§ implements §in const import§
   {
      private var object:IGameObject;
      
      private var impl:§in const import§;
      
      public function §0"F§(param1:IGameObject, param2:§in const import§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function createFilter(param1:String) : BitmapFilter
      {
         var result:BitmapFilter = null;
         var key:String = param1;
         try
         {
            Model.object = this.object;
            result = this.impl.createFilter(key);
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

