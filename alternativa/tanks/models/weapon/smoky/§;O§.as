package alternativa.tanks.models.weapon.smoky
{
   import §#q§.§0"A§;
   import §0!v§.§7y§;
   import §0!v§.§get for get§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§+"Y§;
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§include static§;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import §return in§.§native var use§;
   import §return in§.§switch for default§;
   import scpacker.tanks.WeaponsManager;
   import §true for package§.§2"?§;
   import §true for package§.§5"b§;
   import §var for var§.§class for break§;
   
   public class §;O§ extends §get for get§ implements §7y§, §^!h§, §implements var super§, §override const do§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §case for import§:Number = 1000000;
      
      private var §'K§:§return const if§;
      
      private var weapons:Dictionary = new Dictionary();
      
      private var §0<§:Dictionary = new Dictionary();
      
      private var §^!3§:§in default§;
      
      public function §;O§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§""'§();
      }
      
      private static function §#!f§(param1:ClientObject) : §switch for default§
      {
         var _loc2_:§native var use§ = §native var use§(OSGi.getInstance().getService(§native var use§));
         return _loc2_.§="]§(param1);
      }
      
      private static function §6F§(param1:ClientObject) : §5"b§
      {
         var _loc2_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc3_:§2"?§ = §2"?§(_loc2_.getModelsByInterface(§2"?§)[0]);
         return _loc3_.§-0§(param1);
      }
      
      private static function §native const finally§(param1:ClientObject) : §&"I§
      {
         var _loc2_:§class for break§ = WeaponsManager.getSmokySFX(param1);
         return _loc2_.§native const finally§(param1);
      }
      
      [Obfuscation(rename="false")]
      public function §final var final§(param1:ClientObject) : void
      {
         var _loc2_:§function for else§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§#K§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function §<-§(param1:ClientObject, param2:§finally for false§) : void
      {
         var _loc3_:§function for else§ = this.weapons[param1];
         if(_loc3_ != null)
         {
            _loc3_.§finally const catch§(§#",§.§include for super§(param2));
         }
      }
      
      [Obfuscation(rename="false")]
      public function §static const false§(param1:ClientObject, param2:ClientObject, param3:§finally for false§, param4:Number, param5:Boolean) : void
      {
         var _loc6_:Tank = null;
         var _loc7_:Vector3 = null;
         var _loc8_:§function for else§ = this.weapons[param1];
         if(_loc8_ != null)
         {
            _loc6_ = this.§0<§[param2];
            if(_loc6_ != null)
            {
               _loc7_ = §#",§.§include for super§(param3);
               §#",§.localToGlobal(_loc6_.§<J§(),_loc7_);
               _loc8_.§="!§(_loc6_,_loc7_,param4,param5);
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function §7!s§(param1:ClientObject) : void
      {
         var _loc2_:Tank = this.§0<§[param1];
         this.§^!3§.§4!5§(_loc2_.§<J§().state.position);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function § !i§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§+"Y§ = new §+"Y§(param1);
         var _loc3_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc4_:§0"A§ = WeaponsManager.shotDatas[_loc3_.turret.id];
         var _loc5_:§1!a§ = new §include static§(param1,_loc2_,§case for import§);
         var _loc6_:§switch for default§ = §#!f§(_loc3_.turret);
         var _loc7_:§var for super§ = new §var for super§(_loc6_.§do const class§(),_loc6_.§for for in§());
         this.§^!3§ = new §in default§(_loc4_.reloadMsec.value,_loc7_,_loc5_,§6F§(_loc3_.turret),§native const finally§(param1),this,new §package const final§());
         this.weapons[param1] = this.§^!3§;
         return this.§^!3§;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§switch for default§ = §#!f§(_loc2_.turret);
         var _loc4_:§var for super§ = new §var for super§(_loc3_.§do const class§(),_loc3_.§for for in§());
         var _loc5_:§extends for finally§ = new §function for else§(_loc4_,§native const finally§(param1));
         this.weapons[param1] = _loc5_;
         return _loc5_;
      }
      
      public function §each const var§(param1:int) : void
      {
         server.§if const set§(param1);
      }
      
      public function §get const null§(param1:int, param2:Vector3) : void
      {
         server.§8[§(param1,§#",§.§in for default§(param2));
      }
      
      public function §var set else§(param1:int, param2:Vector3, param3:Body) : void
      {
         var _loc4_:Tank = param3.tank;
         var _loc5_:Vector3 = param2.clone();
         §#",§.globalToLocal(param3,_loc5_);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§["!§(param1,_loc4_.§&"N§(),_loc4_.incarnation,§#",§.§in for default§(param3.state.position),§#",§.§in for default§(_loc5_),§#",§.§in for default§(param2));
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         this.§0<§[param1.tank.tankData.user] = param1.tank;
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         delete this.§0<§[param1.tank.tankData.user];
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         var _loc2_:§extends for finally§ = this.weapons[param1.tank.tankData.user];
         if(_loc2_ == this.§^!3§)
         {
            this.§^!3§ = null;
         }
         delete this.weapons[param1.tank.tankData.user];
      }
   }
}

