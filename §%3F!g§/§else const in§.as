package §?!g§
{
   import alternativa.tanks.bonuses.Bonus;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §else const in§ implements §@r§
   {
      private var object:IGameObject;
      
      private var impl:§@r§;
      
      public function §else const in§(param1:IGameObject, param2:§@r§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §each set null§(param1:String) : Bonus
      {
         var §8!V§:String = param1;
         var §final continue§:Bonus = null;
         var §with const var§:String = §8!V§;
         try
         {
            Model.object = this.object;
            §final continue§ = this.impl.§each set null§(§with const var§);
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
   }
}

