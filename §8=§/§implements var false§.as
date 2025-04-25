package §8=§
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §implements var false§ implements §^!$§
   {
      private var object:IGameObject;
      
      private var impl:Vector.<§^!$§>;
      
      public function §implements var false§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<§^!$§>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function §var throw§() : void
      {
         var §'!c§:int = 0;
         var §try set else§:§^!$§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§var throw§();
               §'!c§++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §9"E§() : void
      {
         var §'!c§:int = 0;
         var §try set else§:§^!$§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§9"E§();
               §'!c§++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §5"c§(param1:§function set package§) : void
      {
         var §8!V§:§function set package§ = param1;
         var §'!c§:int = 0;
         var §try set else§:§^!$§ = null;
         var §false const if§:§function set package§ = §8!V§;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§5"c§(§false const if§);
               §'!c§++;
            }
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §var const catch§() : void
      {
         var §'!c§:int = 0;
         var §try set else§:§^!$§ = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §try set else§.§var const catch§();
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

