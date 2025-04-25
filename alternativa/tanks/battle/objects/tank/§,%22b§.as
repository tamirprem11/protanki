package alternativa.tanks.battle.objects.tank
{
   public class §,"b§ implements §'"Y§
   {
      private var currentValue:Number;
      
      private var §[Q§:Number;
      
      private var §"E§:Number;
      
      private var §catch const extends§:Number;
      
      public function §,"b§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§"E§ = param1;
         this.§catch const extends§ = param2;
         this.§[Q§ = param3;
         this.currentValue = param4;
      }
      
      public function reset(param1:Number) : void
      {
         this.currentValue = param1;
         this.§[Q§ = param1;
      }
      
      public function update(param1:Number) : Number
      {
         if(this.currentValue < this.§[Q§)
         {
            this.currentValue += this.§"E§ * param1;
            if(this.currentValue > this.§[Q§)
            {
               this.currentValue = this.§[Q§;
            }
         }
         else if(this.currentValue > this.§[Q§)
         {
            this.currentValue -= this.§catch const extends§ * param1;
            if(this.currentValue < this.§[Q§)
            {
               this.currentValue = this.§[Q§;
            }
         }
         return this.currentValue;
      }
      
      public function §class const break§(param1:Number) : void
      {
         this.§[Q§ = param1;
      }
      
      public function §="P§() : Number
      {
         return this.§[Q§;
      }
   }
}

