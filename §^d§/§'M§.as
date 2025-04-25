package §^d§
{
   public class §'M§
   {
      private var §extends var throw§:Number;
      
      private var §?!v§:Number;
      
      private var §4!i§:Number;
      
      private var §?!5§:String;
      
      public function §'M§(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:String = null)
      {
         super();
         this.§extends var throw§ = param1;
         this.§?!v§ = param2;
         this.§4!i§ = param3;
         this.§?!5§ = param4;
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
      
      public function get intensity() : Number
      {
         return this.§4!i§;
      }
      
      public function set intensity(param1:Number) : void
      {
         this.§4!i§ = param1;
      }
      
      public function get lightColor() : String
      {
         return this.§?!5§;
      }
      
      public function set lightColor(param1:String) : void
      {
         this.§?!5§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "BonusLightCC [";
         _loc1_ += "attenuationBegin = " + this.attenuationBegin + " ";
         _loc1_ += "attenuationEnd = " + this.attenuationEnd + " ";
         _loc1_ += "intensity = " + this.intensity + " ";
         _loc1_ += "lightColor = " + this.lightColor + " ";
         return _loc1_ + "]";
      }
   }
}

