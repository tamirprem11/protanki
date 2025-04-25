package §9!q§
{
   internal class §throw const throw§ implements §function for function§
   {
      private var message:§switch var native§;
      
      private var §;!r§:int;
      
      private var §'c§:int;
      
      private var §^""§:Number;
      
      private var §0!X§:Number;
      
      private var §7W§:Number;
      
      public function §throw const throw§(param1:§switch var native§, param2:int, param3:Number, param4:Number)
      {
         super();
         this.message = param1;
         this.§;!r§ = param2;
         this.§^""§ = param3;
         this.§0!X§ = param4;
         this.§7W§ = param4 - param3;
      }
      
      public function init() : void
      {
         this.message.setAlpha(this.§^""§);
         this.§'c§ = this.§;!r§;
      }
      
      public function update(param1:int) : Boolean
      {
         if(this.§'c§ <= 0)
         {
            return false;
         }
         this.§'c§ -= param1;
         if(this.§'c§ < 0)
         {
            this.§'c§ = 0;
         }
         this.message.setAlpha(this.§0!X§ - this.§7W§ * this.§'c§ / this.§;!r§);
         return true;
      }
      
      public function §case set dynamic§(param1:int) : void
      {
         this.§;!r§ = param1;
      }
   }
}

