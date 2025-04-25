package §^!S§
{
   import §#q§.§0"A§;
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
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§ "J§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import §extends get§.§ _§;
   import §extends get§.§,!U§;
   import §extends get§.§each const if§;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import §return in§.§native var use§;
   import §return in§.§switch for default§;
   import scpacker.tanks.WeaponsManager;
   
   public class §0K§ extends § _§ implements §each const if§, §^!h§, §override const do§, §default const package§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var weapons:Dictionary = new Dictionary();
      
      private var §if extends§:Dictionary = new Dictionary();
      
      private var §'K§:§return const if§;
      
      public function §0K§()
      {
         super();
         this.§&6§();
      }
      
      private static function §#!f§(param1:ClientObject) : §switch for default§
      {
         var _loc2_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc3_:§native var use§ = §native var use§(OSGi.getInstance().getService(§native var use§));
         return _loc3_.§="]§(param1);
      }
      
      private static function §native const finally§(param1:ClientObject) : §<"'§
      {
         var _loc2_:§]!&§ = WeaponsManager.getRailgunSFX(param1);
         return _loc2_.§native const finally§(param1);
      }
      
      private static function §extends var override§(param1:Vector.<§finally for false§>) : Vector.<Vector3>
      {
         var _loc2_:Vector.<Vector3> = null;
         var _loc3_:int = 0;
         var _loc4_:§finally for false§ = null;
         if(param1 != null)
         {
            _loc2_ = new Vector.<Vector3>(param1.length);
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc4_ = param1[_loc3_];
               if(!§#",§.§implements var return§(_loc4_))
               {
                  return null;
               }
               _loc2_[_loc3_] = §#",§.§include for super§(_loc4_);
               _loc3_++;
            }
            return _loc2_;
         }
         return null;
      }
      
      private static function §'!B§(param1:Vector.<ClientObject>, param2:Dictionary) : Vector.<Body>
      {
         var _loc3_:Vector.<Body> = null;
         var _loc4_:int = 0;
         var _loc5_:Tank = null;
         if(param1 != null)
         {
            _loc3_ = new Vector.<Body>(param1.length);
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               _loc5_ = param2[param1[_loc4_]];
               if(_loc5_ == null)
               {
                  _loc3_[_loc4_] = null;
               }
               else
               {
                  _loc3_[_loc4_] = _loc5_.§<J§();
               }
               _loc4_++;
            }
            return _loc3_;
         }
         return null;
      }
      
      private function §&6§() : void
      {
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§""'§();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§,!U§ = getInitParam();
         param1.putParams(§2"O§,new §2"O§(_loc2_.chargingTimeMsec,_loc2_.weakeningCoeff));
      }
      
      [Obfuscation(rename="false")]
      public function §implements var true§(param1:ClientObject) : void
      {
         var _loc2_:§7H§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§implements var true§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function §'R§(param1:ClientObject, param2:§finally for false§, param3:Vector.<ClientObject>, param4:Vector.<§finally for false§>) : void
      {
         var _loc5_:Vector.<Vector3> = null;
         var _loc6_:Vector.<Body> = null;
         var _loc7_:int = 0;
         var _loc8_:Body = null;
         var _loc9_:§7H§ = this.weapons[param1];
         if(_loc9_ != null)
         {
            _loc5_ = §extends var override§(param4);
            if(_loc5_ != null)
            {
               _loc6_ = §'!B§(param3,this.§if extends§);
               if(param3 != null)
               {
                  if(param3.length == _loc5_.length)
                  {
                     _loc7_ = 0;
                     while(_loc7_ < param3.length)
                     {
                        _loc8_ = _loc6_[_loc7_];
                        if(_loc8_ != null && _loc8_.tank != null)
                        {
                           §#",§.localToGlobal(_loc8_,_loc5_[_loc7_]);
                        }
                        _loc7_++;
                     }
                  }
                  else
                  {
                     param3 = null;
                     _loc5_ = null;
                  }
               }
            }
            _loc9_.§'R§(§#",§.§do var var§(param2),_loc6_,_loc5_);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §try set var§(param1:ClientObject) : void
      {
         var _loc2_:§7H§ = this.weapons[param1];
         if(_loc2_ != null)
         {
            _loc2_.§try set var§();
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function § !i§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§0"A§ = WeaponsManager.shotDatas[_loc2_.turret.id];
         var _loc4_:§switch for default§ = §#!f§(_loc2_.turret);
         var _loc5_:§2"O§ = §2"O§(_loc2_.turret.getParams(§2"O§));
         var _loc6_:§<"'§ = §native const finally§(param1);
         var _loc7_:§1!a§ = new § "J§(param1,_loc2_.turret.id,_loc5_.§if package§());
         var _loc8_:§var for super§ = new §var for super§(_loc4_.§do const class§(),_loc4_.§for for in§());
         var _loc9_:§extends for finally§ = new §["@§(_loc7_,new §package const final§(),_loc3_.reloadMsec.value,_loc8_,_loc5_.§if package§(),_loc5_.§`!i§(),_loc6_,this);
         this.weapons[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §override default§(param1:ClientObject) : §extends for finally§
      {
         var _loc2_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1);
         var _loc3_:§switch for default§ = §#!f§(_loc2_.turret);
         var _loc4_:§2"O§ = §2"O§(_loc2_.turret.getParams(§2"O§));
         var _loc5_:§<"'§ = §native const finally§(param1);
         var _loc6_:§var for super§ = new §var for super§(_loc3_.§do const class§(),_loc3_.§for for in§());
         var _loc7_:§extends for finally§ = new §7H§(_loc6_,_loc4_,_loc5_);
         this.weapons[param1] = _loc7_;
         return _loc7_;
      }
      
      public function §^"9§(param1:int) : void
      {
         server.§?!B§(param1);
      }
      
      public function §each const var§(param1:int, param2:Vector3, param3:Vector.<Body>, param4:Vector.<Vector3>) : void
      {
         var _loc5_:Vector.<ClientObject> = null;
         var _loc6_:Vector.<§finally for false§> = null;
         var _loc7_:Vector.<int> = null;
         var _loc8_:Vector.<§finally for false§> = null;
         var _loc9_:Vector.<§finally for false§> = null;
         var _loc10_:int = 0;
         var _loc11_:Body = null;
         var _loc12_:Vector3 = null;
         var _loc13_:Vector3 = null;
         var _loc14_:Tank = null;
         var _loc15_:int = int(param3.length);
         if(_loc15_ > 0)
         {
            _loc5_ = new Vector.<ClientObject>(_loc15_);
            _loc6_ = new Vector.<§finally for false§>(_loc15_);
            _loc7_ = new Vector.<int>(_loc15_);
            _loc8_ = new Vector.<§finally for false§>(_loc15_);
            _loc9_ = new Vector.<§finally for false§>(_loc15_);
            _loc10_ = 0;
            while(_loc10_ < _loc15_)
            {
               _loc11_ = param3[_loc10_];
               _loc12_ = param4[_loc10_];
               _loc13_ = new Vector3();
               _loc13_.copy(_loc12_);
               §#",§.globalToLocal(_loc11_,_loc12_);
               _loc14_ = _loc11_.tank;
               _loc7_[_loc10_] = _loc14_.tankData.incarnation;
               _loc5_[_loc10_] = _loc14_.§&"N§();
               _loc6_[_loc10_] = §#",§.§in for default§(_loc12_);
               _loc8_[_loc10_] = §#",§.§in for default§(_loc11_.state.position);
               _loc9_[_loc10_] = §#",§.§in for default§(_loc13_);
               _loc10_++;
            }
         }
         var _loc16_:§finally for false§ = §#",§.§override for try§(param2);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§if const set§(param1,_loc16_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      public function §#+§(param1:int) : void
      {
         server.§if implements§(param1);
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         this.§if extends§[param1.tank.§&"N§()] = param1.tank;
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         delete this.§if extends§[param1.tank.§&"N§()];
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         delete this.§if extends§[param1.tank.§&"N§()];
      }
   }
}

