package §-"@§
{
   import alternativa.tanks.battle.objects.tank.Tank;
   import §import import§.§finally for false§;
   
   public class §4!k§
   {
      private var §+!i§:§finally for false§;
      
      private var _position:§finally for false§;
      
      private var _target:Tank;
      
      private var §=!E§:Number;
      
      public function §4!k§(param1:§finally for false§ = null, param2:§finally for false§ = null, param3:Tank = null, param4:Number = 0)
      {
         super();
         this.§+!i§ = param1;
         this._position = param2;
         this._target = param3;
         this.§=!E§ = param4;
      }
      
      public function get orientation() : §finally for false§
      {
         return this.§+!i§;
      }
      
      public function set orientation(param1:§finally for false§) : void
      {
         this.§+!i§ = param1;
      }
      
      public function get position() : §finally for false§
      {
         return this._position;
      }
      
      public function set position(param1:§finally for false§) : void
      {
         this._position = param1;
      }
      
      public function get target() : Tank
      {
         return this._target;
      }
      
      public function set target(param1:Tank) : void
      {
         this._target = param1;
      }
      
      public function get turretAngle() : Number
      {
         return this.§=!E§;
      }
      
      public function set turretAngle(param1:Number) : void
      {
         this.§=!E§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "TargetPosition [";
         _loc1_ += "orientation = " + this.orientation + " ";
         _loc1_ += "position = " + this.position + " ";
         _loc1_ += "target = " + this.target + " ";
         _loc1_ += "turretAngle = " + this.turretAngle + " ";
         return _loc1_ + "]";
      }
   }
}

