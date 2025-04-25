package §8=§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§catch const class§;
   import §dynamic package§.§]"P§;
   
   public class §0"M§ implements §catch const class§
   {
      private static const §0l§:Number = 250;
      
      private static const §native for function§:RayHit = new RayHit();
      
      private var center:Vector3;
      
      private var §default const class§:Number;
      
      private var §continue const catch§:§^!$§;
      
      private var §return for throw§:Boolean;
      
      private var collisionDetector:CollisionDetector;
      
      public function §0"M§(param1:Vector3, param2:Number, param3:§^!$§, param4:CollisionDetector)
      {
         super();
         this.collisionDetector = param4;
         this.center = param1.clone();
         this.§default const class§ = param2 * param2;
         this.§continue const catch§ = param3;
      }
      
      public function reset() : void
      {
         this.§return for throw§ = false;
      }
      
      public function checkTrigger(param1:Body) : void
      {
         var _loc2_:Vector3 = param1.state.position;
         this.§try var null§(_loc2_);
         var _loc3_:Number = _loc2_.x - this.center.x;
         var _loc4_:Number = _loc2_.y - this.center.y;
         var _loc5_:Number = _loc2_.z - this.center.z;
         var _loc6_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
         if(this.§return for throw§)
         {
            if(_loc6_ > this.§default const class§)
            {
               this.§return for throw§ = false;
               this.§continue const catch§.§9"E§();
            }
         }
         else if(_loc6_ <= this.§default const class§)
         {
            this.§return for throw§ = true;
            this.§continue const catch§.§var throw§();
         }
      }
      
      private function §try var null§(param1:Vector3) : void
      {
         var _loc2_:Number = param1.distanceToXYSquared(this.center);
         if(this.§return for throw§)
         {
            if(_loc2_ > this.§default const class§ || !this.§with for true§(param1))
            {
               this.§return for throw§ = false;
               this.§continue const catch§.§9"E§();
            }
         }
         else if(_loc2_ <= this.§default const class§ && this.§with for true§(param1))
         {
            this.§return for throw§ = true;
            this.§continue const catch§.§var throw§();
         }
      }
      
      private function §with for true§(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + §0l§);
         if(this.collisionDetector.raycastStatic(param1,Vector3.DOWN,§]"P§.§return set for§,10000000000,null,§native for function§))
         {
            _loc2_ = §native for function§.position;
            _loc2_.z += 0.1;
            _loc3_ = _loc2_.subtract(_loc4_);
            return !this.collisionDetector.raycastStatic(_loc4_,_loc3_,§]"P§.§return set for§,1,null,§native for function§);
         }
         return false;
      }
   }
}

