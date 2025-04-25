package alternativa.tanks.model.item.countable
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class ICountableItemEvents implements ICountableItem
   {
      private var object:IGameObject;
      
      private var impl:Vector.<ICountableItem>;
      
      public function ICountableItemEvents(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<ICountableItem>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getCount() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:ICountableItem = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getCount();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function setCount(param1:int) : void
      {
         var i:int = 0;
         var m:ICountableItem = null;
         var value:int = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.setCount(value);
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

