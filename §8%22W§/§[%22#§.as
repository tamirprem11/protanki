package §8"W§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §["#§ implements AutoClosable, §override const do§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var §each else§:Tank;
      
      private var §'K§:§return const if§;
      
      public function §["#§(param1:Tank)
      {
         super();
         this.§each else§ = param1;
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
         this.§'K§.§import var get§(§set var override§,this.§'i§);
         this.§'K§.§import var get§(§package for null§,this.§1!"§);
         this.§'K§.§""'§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         var _loc2_:§catch for const§ = null;
         if(param1.tank == this.§each else§)
         {
            _loc2_ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
            _loc2_.§set var const§();
         }
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         var _loc2_:§catch for const§ = null;
         if(param1.tank == this.§each else§)
         {
            _loc2_ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
            _loc2_.§`"g§();
         }
      }
      
      private function §'i§(param1:§set var override§) : void
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc2_.§break for super§(param1.§7!t§);
      }
      
      private function §1!"§(param1:Object) : void
      {
         var _loc2_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc2_.§`"g§();
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§'K§.§const var false§();
         this.§'K§ = null;
         this.§each else§ = null;
      }
   }
}

