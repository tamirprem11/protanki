package §]<§
{
   import §9"9§.§,!"§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §throw set const§ implements §switch const for§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§switch const for§>;
      
      public function §throw set const§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§switch const for§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §in var const§(param1:String) : §,!"§
      {
         var §8!V§:String = param1;
         var §final continue§:§,!"§ = null;
         var §'!c§:int = 0;
         var §try set else§:§switch const for§ = null;
         var §native const do§:String = §8!V§;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§in var const§(§native const do§);
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

