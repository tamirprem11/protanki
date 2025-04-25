package §8!M§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §+!Z§ implements §finally switch§
   {
      private var object:IGameObject;
      
      private var impl:§finally switch§;
      
      public function §+!Z§(param1:IGameObject, param2:§finally switch§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function fit() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.fit();
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

