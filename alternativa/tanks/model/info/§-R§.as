package alternativa.tanks.model.info
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.battleselect.model.info.§"!;§;
   
   public class §-R§ implements §var const get§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§var const get§>;
      
      public function §-R§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§var const get§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getConstructor() : §"!;§
      {
         var result:§"!;§ = null;
         var i:int = 0;
         var m:§var const get§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getConstructor();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getPreviewResource() : ImageResource
      {
         var result:ImageResource = null;
         var i:int = 0;
         var m:§var const get§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getPreviewResource();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

