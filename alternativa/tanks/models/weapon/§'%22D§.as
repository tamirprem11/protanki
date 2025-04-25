package alternativa.tanks.models.weapon
{
   import alternativa.physics.Body;
   import alternativa.physics.collision.IRayCollisionFilter;
   
   public class §'"D§ implements IRayCollisionFilter
   {
      public var §+">§:Body;
      
      public function §'"D§()
      {
         super();
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.§+">§ != param1;
      }
   }
}

