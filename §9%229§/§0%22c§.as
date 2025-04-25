package §9"9§
{
   public class §0"c§
   {
      private var §null try§:int;
      
      private var §catch function§:int;
      
      private var §@"K§:int;
      
      private var maxValue:Number;
      
      private var minValue:Number;
      
      private var § `§:Number;
      
      private var value:Number;
      
      private var §override break§:Number;
      
      private var §while for dynamic§:Number;
      
      private var §package var break§:int;
      
      private var §1Y§:int;
      
      public function §0"c§(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number)
      {
         super();
         this.§null try§ = param1;
         this.§catch function§ = param2;
         this.§@"K§ = param3;
         this.minValue = param4;
         this.maxValue = param5;
         this.§ `§ = param6;
         this.§while for dynamic§ = param5 - param4;
      }
      
      public function §-!`§(param1:int) : void
      {
         this.§null try§ = param1;
      }
      
      public function init(param1:int) : void
      {
         this.value = this.maxValue;
         this.§1Y§ = this.§null try§;
         this.§override break§ = this.§false set§(-1);
         this.§package var break§ = param1 + this.§1Y§;
      }
      
      public function §[9§(param1:Number) : void
      {
         if(param1 >= this.minValue)
         {
            this.maxValue = param1;
            this.§while for dynamic§ = this.maxValue - this.minValue;
         }
      }
      
      public function §false set function§(param1:Number) : void
      {
         if(param1 <= this.maxValue)
         {
            this.minValue = param1;
            this.§while for dynamic§ = this.maxValue - this.minValue;
         }
      }
      
      public function §1!o§() : Number
      {
         return this.minValue;
      }
      
      public function §extends const use§(param1:int, param2:int) : Number
      {
         this.value += this.§override break§ * param2;
         if(this.value > this.maxValue)
         {
            this.value = this.maxValue;
         }
         if(this.value < this.minValue)
         {
            this.value = this.minValue;
         }
         if(param1 >= this.§package var break§)
         {
            if(this.§1Y§ > this.§catch function§)
            {
               this.§1Y§ -= this.§@"K§;
               if(this.§1Y§ < this.§catch function§)
               {
                  this.§1Y§ = this.§catch function§;
               }
            }
            this.§package var break§ = param1 + this.§1Y§;
            if(this.§override break§ < 0)
            {
               this.§override break§ = this.§false set§(1);
            }
            else
            {
               this.§override break§ = this.§false set§(-1);
            }
         }
         return this.value;
      }
      
      private function §false set§(param1:Number) : Number
      {
         return param1 * this.§ `§ * this.§while for dynamic§ / this.§1Y§;
      }
   }
}

