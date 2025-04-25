package §'!j§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §6o§ implements §class set var§
   {
      private var object:IGameObject;
      
      private var impl:§class set var§;
      
      public function §6o§(param1:IGameObject, param2:§class set var§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function removePresent(param1:IGameObject) : void
      {
         var presentItem:IGameObject = param1;
         try
         {
            Model.object = this.object;
            this.impl.removePresent(presentItem);
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

