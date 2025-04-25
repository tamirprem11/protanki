package §]<§
{
   import §9"9§.§,!"§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §5A§ implements §switch const for§
   {
      private var object:IGameObject;
      
      private var impl:§switch const for§;
      
      public function §5A§(param1:IGameObject, param2:§switch const for§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §in var const§(param1:String) : §,!"§
      {
         var §8!V§:String = param1;
         var §final continue§:§,!"§ = null;
         var §native const do§:String = §8!V§;
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§in var const§(§native const do§);
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
   }
}

