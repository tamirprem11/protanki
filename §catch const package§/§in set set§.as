package §catch const package§
{
   public class §in set set§
   {
      private var _alpha:Number;
      
      private var _color:int;
      
      private var §]"0§:Number;
      
      private var §function const extends§:Number;
      
      public function §in set set§(param1:Number = 0, param2:int = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this._alpha = param1;
         this._color = param2;
         this.§]"0§ = param3;
         this.§function const extends§ = param4;
      }
      
      public function get alpha() : Number
      {
         return this._alpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this._alpha = param1;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function set color(param1:int) : void
      {
         this._color = param1;
      }
      
      public function get farLimit() : Number
      {
         return this.§]"0§;
      }
      
      public function set farLimit(param1:Number) : void
      {
         this.§]"0§ = param1;
      }
      
      public function get nearLimit() : Number
      {
         return this.§function const extends§;
      }
      
      public function set nearLimit(param1:Number) : void
      {
         this.§function const extends§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "FogParams [";
         _loc1_ += "alpha = " + this.alpha + " ";
         _loc1_ += "color = " + this.color + " ";
         _loc1_ += "farLimit = " + this.farLimit + " ";
         _loc1_ += "nearLimit = " + this.nearLimit + " ";
         return _loc1_ + "]";
      }
   }
}

