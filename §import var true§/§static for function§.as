package §import var true§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§catch const class§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   
   public class §static for function§ implements §catch const class§
   {
      private static const §native for function§:RayHit = new RayHit();
      
      private var center:Vector3;
      
      private var §implements var static§:§9!d§;
      
      private var §while const in§:Number;
      
      private var §4!%§:Boolean;
      
      private var §null set var§:Number;
      
      private var §7"§:Boolean;
      
      private var §continue for final§:int;
      
      private var §if for package§:Number;
      
      private var collisionDetector:§throw const function§;
      
      public function §static for function§(param1:Vector3, param2:Number, param3:Number, param4:int, param5:§9!d§, param6:§throw const function§, param7:Number)
      {
         super();
         this.center = param1;
         this.§while const in§ = param2;
         this.§continue for final§ = param4;
         this.§implements var static§ = param5;
         this.§null set var§ = param3;
         this.collisionDetector = param6;
         this.§if for package§ = param7;
      }
      
      public function reset() : void
      {
         this.§4!%§ = false;
         this.§7"§ = false;
      }
      
      public function checkTrigger(param1:Body) : void
      {
         var _loc2_:Vector3 = null;
         var _loc3_:Tank = param1.tank;
         if(_loc3_.tankData.spawnState == §extends var dynamic§.§<"]§)
         {
            _loc2_ = param1.state.position;
            this.§8!2§(_loc2_);
            this.§try var null§(_loc2_);
         }
         else
         {
            if(this.§4!%§)
            {
               this.§4!%§ = false;
               this.§implements var static§.§const false§(this.§continue for final§);
            }
            if(this.§7"§)
            {
               this.§7"§ = false;
               this.§implements var static§.§48§(this.§continue for final§);
            }
         }
      }
      
      private function §8!2§(param1:Vector3) : void
      {
         var _loc2_:Number = Vector3.distanceBetween(param1,this.center);
         if(this.§4!%§)
         {
            if(_loc2_ > this.§while const in§ || !this.§<l§(param1))
            {
               this.§4!%§ = false;
               this.§implements var static§.§const false§(this.§continue for final§);
            }
         }
         else if(_loc2_ <= this.§while const in§ && this.§<l§(param1))
         {
            this.§4!%§ = true;
            this.§implements var static§.§do return§(this.§continue for final§);
         }
      }
      
      private function §try var null§(param1:Vector3) : void
      {
         var _loc2_:Number = param1.distanceToXY(this.center);
         if(this.§7"§)
         {
            if(_loc2_ > this.§null set var§ || !this.§with for true§(param1))
            {
               this.§7"§ = false;
               this.§implements var static§.§48§(this.§continue for final§);
            }
         }
         else if(_loc2_ <= this.§null set var§ && this.§with for true§(param1))
         {
            this.§7"§ = true;
            this.§implements var static§.§var var try§(this.§continue for final§);
         }
      }
      
      private function §<l§(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = new Vector3(this.center.x,this.center.y,this.center.z + this.§if for package§);
         var _loc3_:Vector3 = param1.clone().subtract(_loc2_);
         return !this.collisionDetector.raycastStatic(_loc2_,_loc3_,§]"P§.§return set for§,1,null,§native for function§);
      }
      
      private function §with for true§(param1:Vector3) : Boolean
      {
         var _loc2_:Vector3 = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = null;
         _loc2_ = new Vector3(this.center.x,this.center.y,this.center.z + this.§if for package§);
         if(this.collisionDetector.raycastStatic(param1,Vector3.DOWN,§]"P§.§return set for§,10000000000,null,§native for function§))
         {
            _loc3_ = §native for function§.position;
            _loc3_.z += 0.1;
            _loc4_ = _loc3_.subtract(_loc2_);
            return !this.collisionDetector.raycastStatic(_loc2_,_loc4_,§]"P§.§return set for§,1,null,§native for function§);
         }
         return false;
      }
   }
}

