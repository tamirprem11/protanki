package §8"W§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§null set else§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   
   public class §3!k§
   {
      [Inject]
      public static var §while var false§:BattleInputService;
      
      private var user:Tank;
      
      public function §3!k§(param1:Tank)
      {
         super();
         this.user = param1;
         §while var false§.addEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §while var false§.addEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
      }
      
      private function §4+§(param1:BattleInputLockEvent) : void
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc2_.§super const switch§(this.user.§&"N§(),§null set else§.INPUT);
         _loc2_.§const for package§(this.user.§&"N§()).§switch in§(§null set else§.INPUT,true);
      }
      
      private function §`"A§(param1:BattleInputLockEvent) : void
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc2_.§,"8§(this.user.§&"N§(),§null set else§.INPUT);
         _loc2_.§const for package§(this.user.§&"N§()).§finally var use§(§null set else§.INPUT);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         §while var false§.removeEventListener(BattleInputLockEvent.INPUT_LOCKED,this.§4+§);
         §while var false§.removeEventListener(BattleInputLockEvent.INPUT_UNLOCKED,this.§`"A§);
         this.user = null;
      }
   }
}

