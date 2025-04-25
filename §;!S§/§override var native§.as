package §;!S§
{
   import §#q§.§0"A§;
   import §7!-§.§+"&§;
   import §@"?§.§!!i§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.service.IModelService;
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
   import alternativa.tanks.models.weapon.§+"Y§;
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§include static§;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import §return in§.§native var use§;
   import §return in§.§switch for default§;
   import scpacker.tanks.WeaponsManager;
   import §static include§.§?!t§;
   import §static include§.§continue for native§;
   import §true for package§.§2"?§;
   import §true for package§.§5"b§;
   
   public class §override var native§ extends §continue for native§ implements §?!t§, §^!h§, §override const do§, §implements const import§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §return var case§:Number = 1000000;
      
      private var weapons:Dictionary = new Dictionary();
      
      private var §'K§:§return const if§;
      
      public function §override var native§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§""'§();
      }
      
      private static function §="]§(param1:ClientObject) : §switch for default§
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
      
      private static function §native const finally§(param1:ClientObject) : §2`§
      {
         var _loc2_:§4![§ = WeaponsManager.getThunderSFX(param1);
         return _loc2_.§native const finally§(param1);
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
         var _loc5_:§switch for default§ = §="]§(_loc3_.turret);
         var _loc6_:§5"b§ = §6F§(_loc3_.turret);
         var _loc7_:§+"&§ = new §+"&§();
         _loc7_.putInitParams(§!!i§(_loc3_.turret.getParams(§!!i§)));
         _loc7_.objectLoaded(_loc3_.turret);
         var _loc8_:§2`§ = §native const finally§(param1);
         var _loc9_:§1!a§ = new §include static§(param1,_loc2_,§return var case§);
         var _loc10_:§var for super§ = new §var for super§(_loc5_.§do const class§(),_loc5_.§for for in§());
         var _loc11_:§extends for finally§ = new § k§(_loc4_.reloadMsec.value,_loc10_,_loc6_,_loc9_,_loc7_,_loc8_,this);
         this.weapons[param1] = _loc11_;
         return _loc11_;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§switch for default§ = §="]§(_loc2_.turret);
         var _loc4_:§5"b§ = §6F§(_loc2_.turret);
         var _loc5_:§2`§ = §native const finally§(param1);
         var _loc6_:§+"&§ = new §+"&§();
         _loc6_.putInitParams(§!!i§(_loc2_.turret.getParams(§!!i§)));
         _loc6_.objectLoaded(_loc2_.turret);
         var _loc7_:§var for super§ = new §var for super§(_loc3_.§do const class§(),_loc3_.§for for in§());
         var _loc8_:§extends for finally§ = new §true var return§(_loc7_,_loc4_,_loc6_,_loc5_);
         this.weapons[param1] = _loc8_;
         return _loc8_;
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         delete this.weapons[param1.tank.§&"N§()];
      }
      
      [Obfuscation(rename="false")]
      public function §final var final§(param1:ClientObject) : void
      {
         var _loc2_:§true var return§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§final var final§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function §<-§(param1:ClientObject, param2:§finally for false§) : void
      {
         var _loc3_:§true var return§ = this.weapons[param1];
         if(_loc3_ != null)
         {
            _loc3_.§<-§(§#",§.§include for super§(param2));
         }
      }
      
      [Obfuscation(rename="false")]
      public function §static const false§(param1:ClientObject, param2:ClientObject, param3:§finally for false§) : void
      {
         var _loc4_:§finally const class§ = null;
         var _loc5_:Tank = null;
         var _loc6_:Vector3 = null;
         var _loc7_:§true var return§ = this.weapons[param1];
         if(_loc7_ != null)
         {
            _loc4_ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
            _loc5_ = _loc4_.getTankData(param2).tank;
            if(_loc5_.§<J§() != null)
            {
               _loc6_ = §#",§.§include for super§(param3);
               §#",§.localToGlobal(_loc5_.§<J§(),_loc6_);
               _loc7_.§static const false§(_loc5_,_loc6_);
            }
         }
      }
      
      public function §each const var§(param1:int) : void
      {
         server.§9"i§(param1);
      }
      
      public function §get const null§(param1:int, param2:Vector3, param3:Vector.<String>, param4:Vector.<Number>) : void
      {
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§class const var§(param1,§#",§.§in for default§(param2),param3,param4);
      }
      
      public function §var set else§(param1:int, param2:Vector3, param3:Body, param4:Vector.<String>, param5:Vector.<Number>) : void
      {
         var _loc6_:Vector3 = param2.clone();
         §#",§.globalToLocal(param3,_loc6_);
         var _loc7_:§finally for false§ = §#",§.§in for default§(_loc6_);
         var _loc8_:Tank = param3.tank;
         var _loc9_:int = _loc8_.incarnation;
         var _loc10_:§finally for false§ = §#",§.§in for default§(param3.state.position);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§get var var§(param1,_loc7_,_loc8_.§&"N§(),_loc9_,_loc10_,§#",§.§in for default§(param2),param4,param5);
      }
   }
}

