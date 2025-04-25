package alternativa.tanks.battle
{
   import flash.utils.getTimer;
   
   public class §1"h§
   {
      private var §`!,§:int;
      
      private var §@!;§:int;
      
      private var §each do§:int;
      
      private var §function const return§:Number = 0;
      
      private var §dynamic const catch§:int;
      
      private var frameCounter:int;
      
      private var §2"a§:int;
      
      public function §1"h§(param1:int)
      {
         super();
         this.§`!,§ = param1;
         this.reset();
      }
      
      public function §5!L§() : void
      {
         this.§dynamic const catch§ = getTimer();
      }
      
      public function §4!G§() : void
      {
         var _loc1_:int = getTimer() - this.§dynamic const catch§;
         this.§2"a§ += _loc1_;
         this.§case const throw§(_loc1_);
         if(++this.frameCounter >= this.§`!,§)
         {
            this.§function const return§ = this.§2"a§ / this.frameCounter;
            this.§2"a§ = 0;
            this.frameCounter = 0;
         }
      }
      
      public function §if set null§() : Number
      {
         return this.§function const return§;
      }
      
      public function §include set super§() : Number
      {
         return 1000 / this.§function const return§;
      }
      
      private function §case const throw§(param1:int) : void
      {
         if(param1 > this.§each do§)
         {
            this.§each do§ = param1;
         }
         else if(param1 < this.§@!;§)
         {
            this.§@!;§ = param1;
         }
      }
      
      public function reset() : void
      {
         this.§@!;§ = 0;
         this.§each do§ = 0;
         this.§function const return§ = 0;
         this.frameCounter = 0;
         this.§2"a§ = 0;
      }
   }
}

