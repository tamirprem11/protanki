package §7![§
{
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§^!h§;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import scpacker.tanks.WeaponsManager;
   import §with const else§.§"!D§;
   import §with const else§.§final var false§;
   import §with const else§.§import for return§;
   
   public class §3!h§ extends §"!D§ implements §import for return§, §^!h§, §7!D§, §override const do§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var weapons:Dictionary = new Dictionary();
      
      private var §'K§:§return const if§;
      
      public function §3!h§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§""'§();
      }
      
      private static function §native const finally§(param1:ClientObject) : §extends for try§
      {
         return WeaponsManager.getTwinsSFX(param1);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§final var false§ = getInitParam();
         _loc2_.distance = §#",§.§8! §(_loc2_.distance);
         _loc2_.speed = §#",§.§8! §(_loc2_.speed);
         _loc2_.shellRadius = §#",§.§8! §(_loc2_.shellRadius);
         param1.putParams(§final var false§,_loc2_);
      }
      
      [Obfuscation(rename="false")]
      public function §'R§(param1:ClientObject, param2:int, param3:int, param4:§finally for false§) : void
      {
         var _loc5_:§package var with§ = null;
         if(battleService.§try const get§())
         {
            _loc5_ = this.weapons[param1];
            if(_loc5_ != null)
            {
               _loc5_.§'R§(param2,param3,§#",§.§include for super§(param4));
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function §try set var§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§package var with§ = null;
         if(battleService.§try const get§())
         {
            _loc3_ = this.weapons[param1];
            if(_loc3_ != null)
            {
               _loc3_.§try set var§(param2);
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function § !i§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§extends for finally§ = new §'!k§(param1,_loc2_.turret,_loc2_.turret.getParams(§final var false§) as §final var false§,§native const finally§(param1),this);
         this.weapons[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§extends for finally§ = new §package var with§(param1,_loc2_.turret.getParams(§final var false§) as §final var false§,§native const finally§(param1));
         this.weapons[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §each const var§(param1:int, param2:int, param3:int, param4:Vector3) : void
      {
         if(battleService.§try const get§())
         {
            this.§'K§.dispatchEvent(§set var override§.§9E§);
            server.§if const set§(param1,param3,param2,§#",§.§in for default§(param4));
         }
      }
      
      public function §66§(param1:int, param2:int) : void
      {
         if(battleService.§try const get§())
         {
            this.§'K§.dispatchEvent(§set var override§.§9E§);
            server.§if implements§(param1,param2);
         }
      }
      
      public function § "R§(param1:int, param2:Body, param3:Vector3) : void
      {
         var _loc4_:Tank = null;
         var _loc5_:ClientObject = null;
         var _loc6_:§finally for false§ = null;
         if(battleService.§try const get§())
         {
            _loc4_ = param2.tank;
            _loc5_ = _loc4_.§&"N§();
            _loc6_ = §#",§.§in for default§(param2.state.position);
            server.§continue const const§(battleService.§catch static§(),param1,_loc5_,_loc6_,§#",§.§in for default§(param3));
         }
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         delete this.weapons[param1.tank.§&"N§()];
      }
      
      public function §return set use§(param1:int, param2:Vector3) : void
      {
         if(battleService.§try const get§())
         {
            server.§[!F§(battleService.§catch static§(),param1,§#",§.§in for default§(param2));
         }
      }
   }
}

