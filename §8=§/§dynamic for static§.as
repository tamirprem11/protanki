package §8=§
{
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §dynamic for static§ implements §^!$§
   {
      private var object:IGameObject;
      
      private var impl:§^!$§;
      
      public function §dynamic for static§(param1:IGameObject, param2:§^!$§)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function §var throw§() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.§var throw§();
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §9"E§() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.§9"E§();
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
         var §false const if§:§function set package§ = §8!V§;
         try
         {
            Model.object = this.object;
            this.impl.§5"c§(§false const if§);
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §var const catch§() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.§var const catch§();
            return;
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

