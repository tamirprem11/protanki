package §0"[§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §+!l§ implements §default set false§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§default set false§>;
      
      public function §+!l§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§default set false§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getClanName() : String
      {
         var result:String = null;
         var i:int = 0;
         var m:§default set false§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getClanName();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getClanLink() : String
      {
         var result:String = null;
         var i:int = 0;
         var m:§default set false§ = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getClanLink();
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

