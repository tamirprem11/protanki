package §!#§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §8!+§ implements §include try§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§include try§>;
      
      public function §8!+§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§include try§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getUsersCountBlue() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§include try§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getUsersCountBlue();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getUsersCountRed() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§include try§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getUsersCountRed();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getFriendsCountBlue() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§include try§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getFriendsCountBlue();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getFriendsCountRed() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:§include try§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getFriendsCountRed();
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

