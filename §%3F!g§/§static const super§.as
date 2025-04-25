package §?!g§
{
   import alternativa.tanks.bonuses.Bonus;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §static const super§ implements §@r§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§@r§>;
      
      public function §static const super§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§@r§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §each set null§(param1:String) : Bonus
      {
         var §8!V§:String = param1;
         var §final continue§:Bonus = null;
         var §'!c§:int = 0;
         var §try set else§:§@r§ = null;
         var §with const var§:String = §8!V§;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§each set null§(§with const var§);
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

