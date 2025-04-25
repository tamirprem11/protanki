package alternativa.tanks.models.battle.battlefield
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §class var if§ implements §use null§
   {
      private var object:IGameObject;
      
      private var impl:§use null§;
      
      public function §class var if§(param1:IGameObject, param2:§use null§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §function package§() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.§function package§();
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

