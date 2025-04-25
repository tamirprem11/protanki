package §'!j§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §]v§ implements §-b§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§-b§>;
      
      public function §]v§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§-b§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function preparePresent(param1:IGameObject) : void
      {
         var i:int = 0;
         var m:§-b§ = null;
         var presentItem:IGameObject = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.preparePresent(presentItem);
               i++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function confirmPresentPurchase(param1:IGameObject) : void
      {
         var i:int = 0;
         var m:§-b§ = null;
         var presentItem:IGameObject = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.confirmPresentPurchase(presentItem);
               i++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

