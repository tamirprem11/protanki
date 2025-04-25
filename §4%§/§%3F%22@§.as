package §4%§
{
   import alternativa.object.ClientObject;
   import §import import§.§finally for false§;
   
   public class §?"@§
   {
      private var _direction:§finally for false§;
      
      private var §6x§:§finally for false§;
      
      private var §null const const§:int;
      
      private var _target:ClientObject;
      
      public function §?"@§(param1:§finally for false§ = null, param2:§finally for false§ = null, param3:int = 0, param4:ClientObject = null)
      {
         super();
         this._direction = param1;
         this.§6x§ = param2;
         this.§null const const§ = param3;
         this._target = param4;
      }
      
      public function get direction() : §finally for false§
      {
         return this._direction;
      }
      
      public function set direction(param1:§finally for false§) : void
      {
         this._direction = param1;
      }
      
      public function get localHitPoint() : §finally for false§
      {
         return this.§6x§;
      }
      
      public function set localHitPoint(param1:§finally for false§) : void
      {
         this.§6x§ = param1;
      }
      
      public function get §0!f§() : int
      {
         return this.§null const const§;
      }
      
      public function set §0!f§(param1:int) : void
      {
         this.§null const const§ = param1;
      }
      
      public function get target() : ClientObject
      {
         return this._target;
      }
      
      public function set target(param1:ClientObject) : void
      {
         this._target = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "TargetHit [";
         _loc1_ += "direction = " + this.direction + " ";
         _loc1_ += "localHitPoint = " + this.localHitPoint + " ";
         _loc1_ += "numberHits = " + this.§0!f§ + " ";
         _loc1_ += "target = " + this.target + " ";
         return _loc1_ + "]";
      }
   }
}

