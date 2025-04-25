package §%"I§
{
   import alternativa.tanks.models.weapon.shaft.§case var set§;
   import alternativa.tanks.models.weapon.shaft.§if var try§;
   
   public class §case const continue§ implements §@O§
   {
      private var weapon:§case var set§;
      
      private var §5",§:int;
      
      private var §package var break§:int;
      
      public function §case const continue§(param1:§case var set§, param2:int)
      {
         super();
         this.weapon = param1;
         this.§5",§ = param2;
      }
      
      public function enter(param1:int) : void
      {
         this.§package var break§ = param1 + this.§5",§;
      }
      
      public function update(param1:int, param2:int) : void
      {
         if(this.weapon.§-!<§())
         {
            this.weapon.§?!q§(§if var try§.STOP);
         }
         else if(param1 >= this.§package var break§ && this.weapon.§if for override§(param1) == this.weapon.§try package§())
         {
            this.weapon.§?!q§(§if var try§.SWITCH);
         }
      }
      
      public function exit() : void
      {
      }
      
      public function §?!q§(param1:§if var try§, param2:*) : void
      {
         switch(param1)
         {
            case §if var try§.TRIGGER_RELEASE:
               this.weapon.§?!q§(§if var try§.TRIGGER_RELEASE);
         }
      }
   }
}

