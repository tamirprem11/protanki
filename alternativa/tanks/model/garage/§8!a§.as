package alternativa.tanks.model.garage
{
   import flash.display.BitmapData;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §8!a§ implements §super const default§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§super const default§>;
      
      public function §8!a§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§super const default§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function showConfirmAlert(param1:String, param2:int, param3:BitmapData, param4:Boolean, param5:int, param6:int = -1) : void
      {
         var i:int = 0;
         var m:§super const default§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.showConfirmAlert(param1,param2,param3,param4,param5,param6);
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

