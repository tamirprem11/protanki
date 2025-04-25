package §in var else§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §-!C§ implements §,!<§
   {
      private var object:IGameObject;
      
      private var impl:§,!<§;
      
      public function §-!C§(param1:IGameObject, param2:§,!<§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function continueBattle() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.continueBattle();
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

