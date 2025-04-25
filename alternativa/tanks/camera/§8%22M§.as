package alternativa.tanks.camera
{
   import alternativa.math.Vector3;
   import alternativa.tanks.utils.MathUtils;
   
   public class §8"M§ extends §6+§ implements §<n§
   {
      private static const §final set finally§:Number = 3000;
      
      private static const §default return§:Vector3 = new Vector3();
      
      private var p1:Vector3 = new Vector3();
      
      private var p2:Vector3 = new Vector3();
      
      private var §use const include§:Vector3 = new Vector3();
      
      private var §7N§:Vector3 = new Vector3();
      
      private var §switch if§:Number;
      
      private var distance:Number;
      
      private var acceleration:Number;
      
      private var speed:Number;
      
      private var §do for false§:§for break§ = new §for break§();
      
      private var §%'§:§for break§ = new §for break§();
      
      public var duration:int;
      
      public function §8"M§(param1:int)
      {
         super();
         this.duration = param1;
      }
      
      public function init(param1:Vector3, param2:Vector3) : void
      {
         this.p1.copy(§include var override§());
         this.p2.copy(this.p1);
         this.§7N§.copy(param1);
         this.§use const include§.copy(this.§7N§);
         this.p2.z = this.§use const include§.z = (this.p1.z > this.§7N§.z ? this.p1.z : this.§7N§.z) + §final set finally§;
         var _loc3_:Number = 4000000 / (this.duration * this.duration);
         this.§do for false§.init(MathUtils.clampAngle(§;"§()),param2.x,_loc3_);
         this.§%'§.init(MathUtils.clampAngle(§-3§()),param2.z,_loc3_);
         var _loc4_:Vector3 = new Vector3();
         _loc4_.diff(this.§7N§,this.p1);
         this.§switch if§ = _loc4_.length();
         this.acceleration = this.§switch if§ * _loc3_;
         this.distance = 0;
         this.speed = 0;
      }
      
      override public function update(param1:int, param2:int) : void
      {
         if(this.speed < 0)
         {
            return;
         }
         if(this.distance > 0.5 * this.§switch if§ && this.acceleration > 0)
         {
            this.acceleration = -this.acceleration;
            this.§do for false§.reverseAcceleration();
            this.§%'§.reverseAcceleration();
         }
         var _loc3_:Number = 0.001 * param2;
         var _loc4_:Number = this.acceleration * _loc3_;
         this.distance += (this.speed + 0.5 * _loc4_) * _loc3_;
         this.speed += _loc4_;
         if(this.distance > this.§switch if§)
         {
            this.distance = this.§switch if§;
         }
         this.§="=§(this.distance / this.§switch if§,this.p1,this.p2,this.§use const include§,this.§7N§,§default return§);
         setPosition(§default return§);
         §'%§(this.§do for false§.update(_loc3_),0,this.§%'§.update(_loc3_));
      }
      
      private function §="=§(param1:Number, param2:Vector3, param3:Vector3, param4:Vector3, param5:Vector3, param6:Vector3) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = 1 - param1;
         _loc7_ = _loc9_ * _loc9_;
         var _loc10_:Number = 3 * param1 * _loc7_;
         _loc7_ *= _loc9_;
         _loc8_ = param1 * param1;
         var _loc11_:Number = 3 * _loc8_ * _loc9_;
         _loc8_ *= param1;
         param6.x = _loc7_ * param2.x + _loc10_ * param3.x + _loc11_ * param4.x + _loc8_ * param5.x;
         param6.y = _loc7_ * param2.y + _loc10_ * param3.y + _loc11_ * param4.y + _loc8_ * param5.y;
         param6.z = _loc7_ * param2.z + _loc10_ * param3.z + _loc11_ * param4.z + _loc8_ * param5.z;
      }
   }
}

