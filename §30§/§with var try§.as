package §30§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §with var try§ implements §@"#§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§@"#§>;
      
      public function §with var try§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§@"#§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getUsersCount() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§@"#§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getUsersCount();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getFriendsCount() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§@"#§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getFriendsCount();
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

