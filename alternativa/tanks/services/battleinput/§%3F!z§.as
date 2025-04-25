package alternativa.tanks.services.battleinput
{
   import alternativa.tanks.utils.BitMask;
   import flash.events.EventDispatcher;
   
   public class §?!z§ extends EventDispatcher implements BattleInputService
   {
      private const §%"L§:BitMask = new BitMask();
      
      public function §?!z§()
      {
         super();
      }
      
      public function lock(param1:§null set with§) : void
      {
         var _loc2_:Boolean = this.§1!z§();
         var _loc3_:Boolean = this.§3!'§();
         this.§%"L§.setBits(param1.§9Z§());
         if(!_loc2_ && this.§1!z§())
         {
            dispatchEvent(new BattleInputLockEvent(BattleInputLockEvent.CHAT_LOCKED));
         }
         if(!_loc3_ && this.§3!'§())
         {
            dispatchEvent(new BattleInputLockEvent(BattleInputLockEvent.INPUT_LOCKED));
         }
      }
      
      public function unlock(param1:§null set with§) : void
      {
         var _loc2_:Boolean = this.§1!z§();
         var _loc3_:Boolean = this.§3!'§();
         this.§%"L§.clearBits(param1.§9Z§());
         if(_loc2_ && !this.§1!z§())
         {
            dispatchEvent(new BattleInputLockEvent(BattleInputLockEvent.CHAT_UNLOCKED));
         }
         if(_loc3_ && !this.§3!'§())
         {
            dispatchEvent(new BattleInputLockEvent(BattleInputLockEvent.INPUT_UNLOCKED));
         }
      }
      
      public function §3!'§() : Boolean
      {
         return !this.§%"L§.isEmpty();
      }
      
      public function §1!z§() : Boolean
      {
         return this.§%"L§.hasAnyBit(§null set with§.§4?§.§9Z§());
      }
   }
}

