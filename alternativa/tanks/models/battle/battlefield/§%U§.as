package alternativa.tanks.models.battle.battlefield
{
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §false for catch§.§catch extends§;
   
   public class §%U§
   {
      [Inject]
      public static var §0"P§:BattleInputService;
      
      private var §#!&§:§catch extends§;
      
      public function §%U§(param1:§catch extends§)
      {
         super();
         this.§#!&§ = param1;
         §0"P§.addEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §0"P§.addEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
         if(§0"P§.§3!'§())
         {
            param1.§'h§();
         }
      }
      
      private function §4+§(param1:BattleInputLockEvent) : void
      {
         this.§#!&§.§'h§();
      }
      
      private function §`"A§(param1:BattleInputLockEvent) : void
      {
         this.§#!&§.§<"[§();
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§#!&§ = null;
         §0"P§.removeEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §0"P§.removeEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
      }
   }
}

