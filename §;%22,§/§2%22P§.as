package §;",§
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
   import §package function§.§9z§;
   import §package function§.§case const while§;
   import §package function§.§case set do§;
   import scpacker.tanks.WeaponsManager;
   
   public class §2"P§ extends §case set do§ implements §9z§, §^!h§, §if for§, §override const do§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const shotDirection:Vector3 = new Vector3();
      
      private var §'K§:§return const if§;
      
      private var weapons:Dictionary = new Dictionary();
      
      public function §2"P§()
      {
         super();
         this.§&6§();
      }
      
      private static function §each for try§(param1:Number) : Number
      {
         return param1 * 32767;
      }
      
      private static function §use const continue§(param1:Number) : Number
      {
         return param1 / 32767;
      }
      
      private static function §native const finally§(param1:ClientObject) : §include break§
      {
         return WeaponsManager.getRicochetSFXModel(param1);
      }
      
      private function §&6§() : void
      {
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§""'§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      [Obfuscation(rename="false")]
      public function §'R§(param1:ClientObject, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:§!!j§ = this.weapons[param1];
         if(_loc5_ != null)
         {
            shotDirection.reset(§use const continue§(param2),§use const continue§(param3),§use const continue§(param4)).normalize();
            _loc5_.§final var final§(shotDirection);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §try set var§(param1:ClientObject) : void
      {
         var _loc2_:§!!j§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§catch set set§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§case const while§ = getInitParam();
         _loc2_.shellRadius = §#",§.§8! §(_loc2_.shellRadius);
         _loc2_.shellSpeed = §#",§.§8! §(_loc2_.shellSpeed);
         _loc2_.shotDistance = §#",§.§8! §(_loc2_.shotDistance);
         param1.putParams(§case const while§,_loc2_);
      }
      
      public function § !i§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§extends for finally§ = new §<"E§(param1,_loc2_.turret.getParams(§case const while§) as §case const while§,§native const finally§(param1),this);
         this.weapons[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§extends for finally§ = new §!!j§(param1,_loc2_.turret.getParams(§case const while§) as §case const while§,§native const finally§(param1));
         this.weapons[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §each const var§(param1:int, param2:int, param3:Vector3) : void
      {
         if(battleService.§try const get§())
         {
            this.§'K§.dispatchEvent(§set var override§.§9E§);
            server.§if const set§(param1,param2,§each for try§(param3.x),§each for try§(param3.y),§each for try§(param3.z));
         }
      }
      
      public function §66§(param1:int) : void
      {
         if(battleService.§try const get§())
         {
            this.§'K§.dispatchEvent(§set var override§.§9E§);
            server.§if implements§(param1);
         }
      }
      
      public function § "R§(param1:int, param2:Body, param3:Vector.<Vector3>) : void
      {
         var _loc4_:Tank = null;
         if(battleService.§try const get§())
         {
            _loc4_ = param2.tank;
            server.§continue const const§(battleService.§catch static§(),_loc4_.§&"N§(),param1,§#",§.§in for default§(param2.state.position),§#",§.§]"M§(param3));
         }
      }
      
      public function §return set use§(param1:int, param2:Vector.<Vector3>) : void
      {
         if(battleService.§try const get§())
         {
            server.§[!F§(battleService.§catch static§(),param1,§#",§.§]"M§(param2));
         }
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         delete this.weapons[param1.tank.§&"N§()];
      }
   }
}

