package §return in§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   
   public class §;!f§
   {
      public var distance:Number;
      
      public var body:Body;
      
      public var position:Vector3 = new Vector3();
      
      public var direction:Vector3 = new Vector3();
      
      public var normal:Vector3 = new Vector3();
      
      public function §;!f§()
      {
         super();
      }
      
      public function setResult(param1:§'!L§, param2:§native var import§) : void
      {
         if(param2.§dynamic throw§())
         {
            this.§4!;§(param1.§#!!§,param2.§9G§(),param2.§set var include§());
         }
         else
         {
            this.§&G§(param2.§9G§());
         }
      }
      
      private function §4!;§(param1:Vector3, param2:Vector3, param3:RayHit) : void
      {
         this.distance = param3.t;
         this.body = param3.shape.body;
         this.normal.copy(param3.normal);
         this.direction.copy(param2);
         this.position.copy(param1).addScaled(param3.t,param2);
      }
      
      private function §&G§(param1:Vector3) : void
      {
         this.direction.copy(param1);
         this.body = null;
      }
   }
}

