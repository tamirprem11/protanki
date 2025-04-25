package §each var import§
{
   public class § !e§
   {
      private var §extends var throw§:Number;
      
      private var §?!v§:Number;
      
      private var _color:String;
      
      private var §4!i§:Number;
      
      private var §#!a§:int;
      
      public function § !e§(param1:Number = 0, param2:Number = 0, param3:String = null, param4:Number = 0, param5:int = 0)
      {
         super();
         this.§extends var throw§ = param1;
         this.§?!v§ = param2;
         this._color = param3;
         this.§4!i§ = param4;
         this.§#!a§ = param5;
      }
      
      public function get attenuationBegin() : Number
      {
         return this.§extends var throw§;
      }
      
      public function set attenuationBegin(param1:Number) : void
      {
         this.§extends var throw§ = param1;
      }
      
      public function get attenuationEnd() : Number
      {
         return this.§?!v§;
      }
      
      public function set attenuationEnd(param1:Number) : void
      {
         this.§?!v§ = param1;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function set color(param1:String) : void
      {
         this._color = param1;
      }
      
      public function get intensity() : Number
      {
         return this.§4!i§;
      }
      
      public function set intensity(param1:Number) : void
      {
         this.§4!i§ = param1;
      }
      
      public function get time() : int
      {
         return this.§#!a§;
      }
      
      public function set time(param1:int) : void
      {
         this.§#!a§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "LightingEfectRecord [";
         _loc1_ += "attenuationBegin = " + this.attenuationBegin + " ";
         _loc1_ += "attenuationEnd = " + this.attenuationEnd + " ";
         _loc1_ += "color = " + this.color + " ";
         _loc1_ += "intensity = " + this.intensity + " ";
         _loc1_ += "time = " + this.time + " ";
         return _loc1_ + "]";
      }
   }
}

