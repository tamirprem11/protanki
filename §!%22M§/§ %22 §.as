package §!"M§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class § " § implements §#6§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§#6§>;
      
      public function § " §(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§#6§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §finally for case§() : §1h§
      {
         var §final continue§:§1h§ = null;
         var §'!c§:int = 0;
         var §try set else§:§#6§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§finally for case§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
   }
}

