package §%"I§
{
   import alternativa.tanks.models.weapon.shaft.§case var set§;
   import alternativa.tanks.models.weapon.shaft.§final implements§;
   import alternativa.tanks.models.weapon.shaft.§if var try§;
   
   public class IdleState implements §@O§
   {
      private var weapon:§case var set§;
      
      private var §91§:Boolean;
      
      public function IdleState(param1:§case var set§)
      {
         super();
         this.weapon = param1;
      }
      
      public function enter(param1:int) : void
      {
         this.§91§ = this.weapon.§8"1§();
         this.weapon.§>q§(§final implements§.RECHARGE);
      }
      
      public function update(param1:int, param2:int) : void
      {
         if(this.§91§)
         {
            this.§override var get§();
         }
      }
      
      public function exit() : void
      {
      }
      
      public function §?!q§(param1:§if var try§, param2:*) : void
      {
         switch(param1)
         {
            case §if var try§.TRIGGER_PULL:
               this.§;!,§();
               break;
            case §if var try§.TRIGGER_RELEASE:
               this.§]T§();
         }
      }
      
      private function §;!,§() : void
      {
         if(!this.§91§)
         {
            this.§91§ = true;
            this.§override var get§();
         }
      }
      
      private function §]T§() : void
      {
         this.§91§ = false;
      }
      
      private function §override var get§() : void
      {
         if(this.weapon.§9"G§())
         {
            this.weapon.§?!q§(§if var try§.READY_TO_SHOOT);
            this.§91§ = false;
         }
      }
   }
}

