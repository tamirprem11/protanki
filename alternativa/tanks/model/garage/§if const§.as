package alternativa.tanks.model.garage
{
   import flash.display.BitmapData;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §if const§ implements §super const default§
   {
      private var object:IGameObject;
      
      private var impl:§super const default§;
      
      public function §if const§(param1:IGameObject, param2:§super const default§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function showConfirmAlert(param1:String, param2:int, param3:BitmapData, param4:Boolean, param5:int, param6:int = -1) : void
      {
         try
         {
            Model.object = this.object;
            this.impl.showConfirmAlert(param1,param2,param3,param4,param5,param6);
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

