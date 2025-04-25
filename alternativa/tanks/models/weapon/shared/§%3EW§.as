package alternativa.tanks.models.weapon.shared
{
   import alternativa.physics.Body;
   import alternativa.physics.collision.IRayCollisionFilter;
   import flash.utils.Dictionary;
   
   public class §>W§ implements IRayCollisionFilter
   {
      public var §#!T§:Body;
      
      private var targets:Dictionary = new Dictionary();
      
      private var §`&§:Dictionary = new Dictionary();
      
      public function §>W§()
      {
         super();
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.§#!T§ != param1 && this.targets[param1] == null && this.§`&§[param1] == null;
      }
      
      public function §88§(param1:Body) : void
      {
         this.targets[param1] = true;
      }
      
      public function §var for native§(param1:Body) : void
      {
         this.§`&§[param1] = true;
      }
      
      public function §%?§() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.targets)
         {
            delete this.targets[_loc1_];
         }
      }
      
      public function §set for break§() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§`&§)
         {
            delete this.§`&§[_loc1_];
         }
      }
   }
}

