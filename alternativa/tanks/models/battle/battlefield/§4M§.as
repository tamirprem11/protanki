package alternativa.tanks.models.battle.battlefield
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §4M§ implements §use null§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§use null§>;
      
      public function §4M§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§use null§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §function package§() : void
      {
         var §'!c§:int = 0;
         var §try set else§:§use null§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§function package§();
               §'!c§++;
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

