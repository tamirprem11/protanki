package alternativa.tanks.models.weapons.targeting
{
   import alternativa.math.Vector3;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   
   public class §native var import§
   {
      private var direction:Vector3 = new Vector3();
      
      private var staticHit:RayHit;
      
      private var §&p§:Vector.<RayHit>;
      
      public function §native var import§()
      {
         super();
      }
      
      public function hasStaticHit() : Boolean
      {
         return this.staticHit != null;
      }
      
      public function §&!w§() : RayHit
      {
         return this.staticHit;
      }
      
      public function §9G§() : Vector3
      {
         return this.direction;
      }
      
      public function §0"V§() : Vector.<RayHit>
      {
         return this.§&p§;
      }
      
      public function §const const else§() : Boolean
      {
         return this.§&p§.length > 0;
      }
      
      public function §dynamic throw§() : Boolean
      {
         return this.staticHit != null || this.§&p§.length > 0;
      }
      
      public function §"!5§(param1:Vector3, param2:Vector.<RayHit>) : void
      {
         var _loc3_:RayHit = null;
         this.direction.copy(param1);
         this.§&p§ = param2.concat();
         this.staticHit = null;
         if(this.§&p§.length > 0)
         {
            _loc3_ = this.§&p§[this.§&p§.length - 1];
            if(!§#",§.§extends for use§(_loc3_.shape.body))
            {
               this.staticHit = this.§&p§.pop();
            }
         }
      }
      
      public function §set var include§() : RayHit
      {
         if(this.staticHit != null)
         {
            return this.staticHit;
         }
         return this.§&p§[0];
      }
   }
}

