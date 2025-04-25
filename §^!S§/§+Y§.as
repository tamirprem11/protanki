package §^!S§
{
   import alternativa.physics.Body;
   import alternativa.physics.collision.IRayCollisionFilter;
   import flash.utils.Dictionary;
   
   public class §+Y§ implements IRayCollisionFilter
   {
      private var bodies:Dictionary = new Dictionary();
      
      public function §+Y§()
      {
         super();
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.bodies[param1] == null;
      }
      
      public function addBody(param1:Body) : void
      {
         this.bodies[param1] = true;
      }
      
      public function clear() : void
      {
         this.bodies = new Dictionary();
      }
   }
}

