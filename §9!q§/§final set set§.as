package §9!q§
{
   internal class §final set set§ implements §function for function§
   {
      private var §-!I§:int;
      
      private var §'c§:int;
      
      public function §final set set§(param1:int)
      {
         super();
         this.§-!I§ = param1;
      }
      
      public function init() : void
      {
         this.§'c§ = this.§-!I§;
      }
      
      public function update(param1:int) : Boolean
      {
         if(this.§'c§ <= 0)
         {
            return false;
         }
         this.§'c§ -= param1;
         return true;
      }
      
      public function §case set dynamic§(param1:int) : void
      {
         this.§-!I§ = param1;
      }
   }
}

