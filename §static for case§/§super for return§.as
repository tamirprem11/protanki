package §static for case§
{
   import §2!P§.§`"7§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §super for return§ implements §<y§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§<y§>;
      
      public function §super for return§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§<y§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §false set import§() : §`"7§
      {
         var §final continue§:§`"7§ = null;
         var §'!c§:int = 0;
         var §try set else§:§<y§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§false set import§();
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

