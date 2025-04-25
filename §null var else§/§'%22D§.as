package §null var else§
{
   import alternativa.physics.Body;
   import alternativa.physics.collision.IRayCollisionFilter;
   
   internal class §'"D§ implements IRayCollisionFilter
   {
      private var body:Body;
      
      public function §'"D§(param1:Body)
      {
         super();
         this.body = param1;
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.body != param1;
      }
   }
}

