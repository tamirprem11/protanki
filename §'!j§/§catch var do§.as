package §'!j§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §catch var do§ implements §class set var§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§class set var§>;
      
      public function §catch var do§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§class set var§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function removePresent(param1:IGameObject) : void
      {
         var i:int = 0;
         var m:§class set var§ = null;
         var presentItem:IGameObject = param1;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               m.removePresent(presentItem);
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

