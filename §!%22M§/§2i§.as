package §!"M§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §2i§ implements §#6§
   {
      private var object:IGameObject;
      
      private var impl:§#6§;
      
      public function §2i§(param1:IGameObject, param2:§#6§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §finally for case§() : §1h§
      {
         var §final continue§:§1h§ = null;
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§finally for case§();
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
   }
}

