package §!"0§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.scene3d.§set while§;
   
   public class §switch var try§ implements §set while§
   {
      private static const §5z§:Vector3 = new Vector3();
      
      private var §1!P§:Number;
      
      private const center:Vector3 = new Vector3();
      
      private const objects:Vector.<§!]§> = new Vector.<§!]§>();
      
      private var §,""§:int;
      
      public function §switch var try§()
      {
         super();
      }
      
      public function add(param1:§!]§) : void
      {
         if(this.objects.indexOf(param1) < 0)
         {
            var _loc2_:* = this.§,""§++;
            this.objects[_loc2_] = param1;
         }
      }
      
      public function remove(param1:§!]§) : void
      {
         var _loc2_:int = int(this.objects.indexOf(param1));
         if(_loc2_ >= 0)
         {
            param1.setAlphaMultiplier(1);
            --this.§,""§;
            this.objects[_loc2_] = this.objects[this.§,""§];
            this.objects[this.§,""§] = null;
         }
      }
      
      public function §if const false§(param1:Vector3, param2:Number) : void
      {
         this.center.copy(param1);
         this.§1!P§ = param2 * param2;
      }
      
      public function restore() : void
      {
         var _loc1_:§!]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,""§)
         {
            _loc1_ = this.objects[_loc2_];
            _loc1_.setAlphaMultiplier(1);
            _loc2_++;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§!]§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§,""§)
         {
            _loc3_ = this.objects[_loc4_];
            _loc3_.readPosition(§5z§);
            _loc3_.setAlphaMultiplier(this.§false set do§(§5z§));
            _loc4_++;
         }
      }
      
      private function §false set do§(param1:Vector3) : Number
      {
         var _loc2_:Number = param1.x - this.center.x;
         var _loc3_:Number = param1.y - this.center.y;
         var _loc4_:Number = param1.z - this.center.z;
         var _loc5_:Number = _loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc5_ < this.§1!P§)
         {
            return Math.sqrt(_loc5_ / this.§1!P§);
         }
         return 1;
      }
      
      public function clear() : void
      {
         this.objects.length = 0;
         this.§,""§ = 0;
      }
   }
}

