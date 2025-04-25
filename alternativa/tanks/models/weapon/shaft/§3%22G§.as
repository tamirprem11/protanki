package alternativa.tanks.models.weapon.shaft
{
   import §]"h§.§1I§;
   import §]"h§.§function var class§;
   import §]"h§.§set const dynamic§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
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
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.models.weapon.§continue set dynamic§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§true extends§;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§+"3§;
   import §const set false§.§0"I§;
   import §const set false§.§class var null§;
   import §const set false§.§var const throw§;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import §return in§.§native var use§;
   import §return in§.§switch for default§;
   import scpacker.tanks.WeaponsManager;
   import §true for package§.§2"?§;
   import §true for package§.§5"b§;
   
   public class §3"G§ extends §set const dynamic§ implements §1I§, §^!h§, §6"g§, §override const do§, §0"I§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §return var case§:Number = 10000000000;
      
      private var §'K§:§return const if§;
      
      private var §=!y§:Dictionary = new Dictionary();
      
      private var weapons:Dictionary = new Dictionary();
      
      private var §each else§:ClientObject;
      
      private var §if extends§:Dictionary = new Dictionary();
      
      public function §3"G§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§=!O§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
         this.§'K§.§""'§();
      }
      
      private static function §6F§(param1:ClientObject) : §5"b§
      {
         var _loc2_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc3_:§2"?§ = §2"?§(_loc2_.getModelsByInterface(§2"?§)[0]);
         return _loc3_.§-0§(param1);
      }
      
      private static function §native const finally§(param1:ClientObject) : §7G§
      {
         var _loc2_:§include var while§ = WeaponsManager.getShaftSFX(param1);
         return _loc2_.§native const finally§(param1);
      }
      
      private static function §9"7§(param1:Vector3, param2:Body, param3:Vector3) : §6!>§
      {
         var _loc4_:§finally for false§ = null;
         var _loc5_:§finally for false§ = null;
         var _loc6_:§finally for false§ = null;
         var _loc7_:ClientObject = null;
         var _loc8_:int = 0;
         var _loc9_:Vector3 = null;
         if(param2 != null)
         {
            _loc7_ = param2.tank.§&"N§();
            _loc8_ = param2.tank.incarnation;
            _loc9_ = param3;
            _loc6_ = §#",§.§in for default§(_loc9_);
            §#",§.globalToLocal(param2,_loc9_);
            _loc4_ = §#",§.§in for default§(_loc9_);
            _loc5_ = §#",§.§in for default§(param2.state.position);
         }
         return new §6!>§(§#",§.§override for try§(param1),_loc4_,_loc7_,_loc8_,_loc5_,_loc6_);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§function var class§ = getInitParam();
         _loc2_.§import set set§ = §#",§.§8! §(_loc2_.§import set set§);
         _loc2_.§import const implements§ = §#",§.§8! §(_loc2_.§import const implements§);
         param1.putParams(§function var class§,_loc2_);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      [Obfuscation(rename="false")]
      public function §<"D§(param1:ClientObject) : void
      {
         var _loc2_:§?!7§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§]F§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function §'R§(param1:ClientObject, param2:§finally for false§, param3:ClientObject, param4:§finally for false§, param5:Number) : void
      {
         var _loc6_:Vector3 = null;
         var _loc7_:Body = null;
         var _loc8_:Tank = null;
         var _loc9_:§?!7§ = this.weapons[param1];
         if(_loc9_ != null)
         {
            _loc9_.§]F§();
            if(param3 != null)
            {
               _loc8_ = this.§if extends§[param3];
               if(_loc8_ == null)
               {
                  _loc7_ = null;
               }
               else
               {
                  _loc7_ = _loc8_.§<J§();
                  _loc6_ = §#",§.§include for super§(param4);
                  §#",§.localToGlobal(_loc8_.§<J§(),_loc6_);
               }
            }
            _loc9_.§else const dynamic§(§#",§.§do var var§(param2),_loc7_,_loc6_,param5);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §'!P§(param1:ClientObject) : void
      {
         var _loc2_:§?!7§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§6"4§();
         }
      }
      
      public function § !i§(param1:ClientObject) : §extends for finally§
      {
         this.§each else§ = param1;
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§function var class§ = _loc2_.turret.getParams(§function var class§) as §function var class§;
         var _loc4_:§native var use§ = §native var use§(OSGi.getInstance().getService(§native var use§));
         var _loc5_:§switch for default§ = _loc4_.§="]§(_loc2_.turret);
         var _loc6_:§package const final§ = new §package const final§();
         var _loc7_:§false override§ = new §false override§(param1);
         var _loc8_:§1!a§ = new §true extends§(param1,_loc2_.turret.id,§return var case§);
         var _loc9_:§var for super§ = new §var for super§(_loc3_.aimingImpact * §continue set dynamic§.§ !0§.getNumber(),_loc5_.§do const class§());
         var _loc10_:§extends for finally§ = new §]!,§(_loc7_,battleService,battleEventDispatcher,this,_loc3_,_loc9_,_loc6_,this.§=!y§,§var const throw§(_loc4_.§extends switch§(_loc2_)),_loc8_,§6F§(_loc2_.turret));
         this.weapons[param1] = _loc10_;
         return _loc10_;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§function var class§ = _loc2_.turret.getParams(§function var class§) as §function var class§;
         var _loc4_:§native var use§ = §native var use§(OSGi.getInstance().getService(§native var use§));
         var _loc5_:§switch for default§ = _loc4_.§="]§(_loc2_.turret);
         var _loc6_:§7G§ = §native const finally§(param1);
         var _loc7_:§+"3§ = param1.getParams(§+"3§) as §+"3§;
         var _loc8_:TankSpecification = _loc2_.§override set var§;
         var _loc9_:§extends for finally§ = new §?!7§(_loc5_.§do const class§(),_loc3_,_loc6_,_loc7_,_loc8_);
         this.weapons[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §?!"§(param1:int, param2:Vector3, param3:Body, param4:Vector3) : void
      {
         var _loc5_:§6!>§ = §9"7§(param2,param3,param4);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§""8§(param1,_loc5_.§final set super§,_loc5_.tank,_loc5_.hitPoint,_loc5_.incarnation,_loc5_.§!"$§,_loc5_.targetPositionGlobal);
      }
      
      public function §in function§(param1:int, param2:Vector3, param3:Body, param4:Vector3) : void
      {
         var _loc5_:§6!>§ = §9"7§(param2,param3,param4);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§4!c§(param1,_loc5_.§final set super§,_loc5_.tank,_loc5_.hitPoint,_loc5_.incarnation,_loc5_.§!"$§,_loc5_.targetPositionGlobal);
      }
      
      public function §0!Y§(param1:int) : void
      {
         server.§extends const package§(param1);
      }
      
      public function §9D§() : void
      {
         server.§`m§();
      }
      
      public function §return const try§() : void
      {
         server.§super for break§();
      }
      
      private function §=!O§(param1:§if var function§) : void
      {
         this.§native class§(param1.tank);
         this.§if extends§[param1.tank.§&"N§()] = param1.tank;
      }
      
      private function §native class§(param1:Tank) : void
      {
         var _loc2_:§8!x§ = param1.§<M§();
         this.§=!y§[_loc2_.§+S§()] = param1;
         this.§=!y§[_loc2_.§0[§()] = param1;
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         var _loc2_:ClientObject = param1.tank.§&"N§();
         if(_loc2_ == this.§each else§)
         {
            this.§each else§ = null;
         }
         delete this.weapons[_loc2_];
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         delete this.§if extends§[param1.tank.§&"N§()];
         this.§var const finally§(param1.tank.§<M§());
      }
      
      private function §var const finally§(param1:§8!x§) : void
      {
         delete this.§=!y§[param1.§+S§()];
         delete this.§=!y§[param1.§0[§()];
      }
      
      public function §#"#§() : void
      {
      }
      
      public function createLocalTurretController(param1:§+"3§, param2:§7!n§) : §class var null§
      {
         var _loc3_:§function var class§ = param2.turret.getParams(§function var class§) as §function var class§;
         var _loc4_:§implements final§ = new §implements final§(_loc3_.§#"^§);
         return new §var const throw§(param1,_loc4_,_loc3_.§9&§);
      }
   }
}

