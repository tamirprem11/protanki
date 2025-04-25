package alternativa.tanks.camera
{
   public class §for break§
   {
      private var §#"G§:Number;
      
      private var §9!Q§:Number;
      
      private var angularAcceleration:Number;
      
      private var angularSpeed:Number;
      
      private var §;"W§:Number;
      
      public function §for break§()
      {
         super();
      }
      
      public function init(param1:Number, param2:Number, param3:Number) : void
      {
         this.§9!Q§ = param2 - param1;
         if(this.§9!Q§ < 0)
         {
            this.§9!Q§ = -this.§9!Q§;
            this.§;"W§ = -1;
         }
         else
         {
            this.§;"W§ = 1;
         }
         if(this.§9!Q§ > Math.PI)
         {
            this.§;"W§ = -this.§;"W§;
            this.§9!Q§ = 2 * Math.PI - this.§9!Q§;
         }
         this.angularAcceleration = param3 * this.§9!Q§;
         this.angularSpeed = 0;
         this.§#"G§ = 0;
      }
      
      public function reverseAcceleration() : void
      {
         this.angularAcceleration = -this.angularAcceleration;
      }
      
      public function update(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#"G§ < this.§9!Q§)
         {
            _loc2_ = this.angularAcceleration * param1;
            _loc3_ = (this.angularSpeed + 0.5 * _loc2_) * param1;
            this.angularSpeed += _loc2_;
            _loc4_ = this.§9!Q§ - this.§#"G§;
            if(_loc4_ < _loc3_)
            {
               _loc3_ = _loc4_;
            }
            this.§#"G§ += _loc3_;
            return _loc3_ * this.§;"W§;
         }
         return 0;
      }
   }
}

