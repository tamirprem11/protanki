package alternativa.tanks.models.battle.gui.chat
{
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §?!p§ implements AutoClosable
   {
      [Inject]
      public static var §0"P§:BattleInputService;
      
      private var chat:§extends var const§;
      
      public function §?!p§(param1:§extends var const§)
      {
         super();
         this.chat = param1;
         §0"P§.addEventListener(BattleInputLockEvent.CHAT_LOCKED,this.§!!§);
         §0"P§.addEventListener(BattleInputLockEvent.CHAT_UNLOCKED,this.§final const include§);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         §0"P§.removeEventListener(BattleInputLockEvent.CHAT_LOCKED,this.§!!§);
         §0"P§.removeEventListener(BattleInputLockEvent.CHAT_UNLOCKED,this.§final const include§);
         this.chat = null;
      }
      
      private function §!!§(param1:BattleInputLockEvent) : void
      {
         this.chat.§8"c§();
         this.chat.locked = true;
      }
      
      private function §final const include§(param1:BattleInputLockEvent) : void
      {
         this.chat.locked = false;
      }
   }
}

