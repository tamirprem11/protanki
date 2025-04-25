package §static for case§
{
   import §2!P§.§`"7§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §^!"§ implements §<y§
   {
      private var object:IGameObject;
      
      private var impl:§<y§;
      
      public function §^!"§(param1:IGameObject, param2:§<y§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §false set import§() : §`"7§
      {
         var §final continue§:§`"7§ = null;
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§false set import§();
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
   }
}

