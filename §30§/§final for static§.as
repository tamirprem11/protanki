package §30§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §final for static§ implements §@"#§
   {
      private var object:IGameObject;
      
      private var impl:§@"#§;
      
      public function §final for static§(param1:IGameObject, param2:§@"#§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function getUsersCount() : int
      {
         var result:int = 0;
         try
         {
            Model.object = this.object;
            result = this.impl.getUsersCount();
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
         try
         {
            Model.object = this.object;
            result = this.impl.getFriendsCount();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

