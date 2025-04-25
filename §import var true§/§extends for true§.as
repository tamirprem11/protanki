package §import var true§
{
   import §1"O§.§7!G§;
   import §6">§.§with set do§;
   import §9!D§.§ "#§;
   import §9!D§.§!!k§;
   import §9!D§.§3"Q§;
   import §9!D§.§?L§;
   import §;",§.§6a§;
   import §;",§.§>!8§;
   import §>P§.§class var return§;
   import §>P§.§set extends§;
   import §>P§.§static for else§;
   import §@!c§.§;"A§;
   import §@!c§.§continue var implements§;
   import §],§.§while var const§;
   import §`j§.§`"d§;
   import §`j§.§return use§;
   import §`j§.§return var in§;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§do const static§;
   import alternativa.tanks.battle.events.§finally for override§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.§throw set package§;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.models.battle.battlefield.§69§;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.types.Long;
   import §default catch§.§-l§;
   import §default catch§.§1!C§;
   import flash.utils.Dictionary;
   import §native const if§.§-'§;
   import §native const if§.§<!;§;
   import §native const if§.§null for finally§;
   import §native const var§.§function const set§;
   import §native const var§.§return native§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import §set var catch§.§[",§;
   import §while finally§.§&!-§;
   import §while finally§.§for var do§;
   
   public class §extends for true§ extends § "#§ implements §?L§, ObjectLoadListener, ObjectLoadPostListener, ObjectUnloadListener, §9!d§, §override const do§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §use const override§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      private var §+F§:Vector.<§throw set package§>;
      
      private var §4"8§:§#"K§;
      
      private var inventoryModel:§class var return§;
      
      private var §[!u§:Dictionary = new Dictionary();
      
      private var §0!N§:Vector.<§static for function§>;
      
      private var §'K§:§return const if§;
      
      private var §class var override§:§continue var implements§;
      
      private var §8" §:§with set do§;
      
      private var §&"X§:Tank;
      
      private var §0<§:Dictionary;
      
      private var §`!A§:IGameObject;
      
      private var §class for with§:§?"$§;
      
      private var §>"4§:§-'§;
      
      private var §,!J§:§null for finally§;
      
      private var §for const if§:§-l§;
      
      public function §extends for true§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§do const static§,this.§,!,§);
         this.§'K§.§import var get§(§finally for override§,this.§else var super§);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§import var get§(§7!G§,this.§;!H§);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
      }
      
      private static function § "O§(param1:IGameObject, param2:Long) : IGameObject
      {
         return param1.space.getObject(param2);
      }
      
      private static function §package class§(param1:§3"Q§) : §while var const§
      {
         if(param1 == §3"Q§.RED)
         {
            return §while var const§.RED;
         }
         if(param1 == §3"Q§.BLUE)
         {
            return §while var const§.BLUE;
         }
         throw new Error();
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         this.§0<§[param1.tank.tankData.userName] = param1.tank;
         var _loc2_:int = this.§override override§().§[A§(param1.tank.tankData.userName);
         if(_loc2_ >= 0)
         {
            this.§throw var in§(_loc2_,param1.tank,this.§>"4§);
         }
      }
      
      private function §!!4§(param1:Class) : Object
      {
         Model.object = this.§`!A§;
         var _loc2_:Object = getData(param1);
         Model.popObject();
         return _loc2_;
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         var _loc2_:Tank = param1.tank;
         this.§true for else§().§%q§(_loc2_);
         delete this.§0<§[_loc2_];
      }
      
      private function §7"+§(param1:§implements set const§) : void
      {
         if(param1.isLocal)
         {
            this.§&"X§ = param1.tank;
            this.§class var override§.show();
            this.§8" §.visible = true;
         }
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         if(param1.tank == this.§&"X§)
         {
            this.§&"X§ = null;
         }
      }
      
      private function §;!H§(param1:§7!G§) : void
      {
         this.§true for else§().§%q§(param1.§native const final§);
      }
      
      private function §true for else§() : §null for finally§
      {
         return this.§,!J§;
      }
      
      private function §else var super§(param1:Object) : void
      {
         var _loc2_:§throw set package§ = null;
         var _loc3_:§while var const§ = §finally for override§(param1).tank.tankData.teamType;
         for each(_loc2_ in this.§+F§)
         {
            _loc2_.§with for extends§(_loc3_);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         var _loc1_:IModelService = IModelService(OSGi.getInstance().getService(IModelService));
         this.§`!A§ = Model.object;
         this.§4"8§ = §#"K§(OSGi.getInstance().getService(§#"K§));
         this.inventoryModel = §class var return§(_loc1_.getModelsByInterface(§class var return§)[0]);
         this.§0!N§ = new Vector.<§static for function§>();
         this.§0<§ = new Dictionary();
         this.§'K§.§""'§();
         this.§class for with§ = new §?"$§();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost() : void
      {
         this.§04§();
         this.§<!B§();
         this.§>"4§ = new §-'§(§use const override§,getInitParam().resources);
         this.§,!J§ = new §null for finally§();
         this.§for const if§ = new §-l§(battleService.§use const return§,getInitParam().§for const if§);
      }
      
      private function §04§() : void
      {
         this.§+F§ = new Vector.<§throw set package§>();
         var _loc1_:§`"d§ = new §`"d§();
         battleService.§native const package§(_loc1_);
         this.§+F§.push(_loc1_);
         var _loc2_:§return var in§ = new §return var in§();
         battleService.§false for§(_loc2_);
         this.§+F§.push(_loc2_);
         var _loc3_:§return use§ = new §return use§();
         battleService.§try for static§(_loc3_);
         this.§+F§.push(_loc3_);
         var _loc4_:§6a§ = new §6a§();
         battleService.§return var function§(_loc4_);
         this.§+F§.push(_loc4_);
      }
      
      private function §<!B§() : void
      {
         var _loc1_:§!!k§ = null;
         var _loc2_:§for var do§ = null;
         var _loc3_:§static for function§ = null;
         var _loc4_:§?"$§ = null;
         var _loc5_:String = null;
         this.§class var override§ = new §continue var implements§(battleService.§catch include§().§function var break§());
         battleService.§catch include§().§@!X§(this.§class var override§,0);
         var _loc6_:Vector.<§for var do§> = new Vector.<§for var do§>();
         for each(_loc1_ in getInitParam().points)
         {
            _loc2_ = this.§`!Y§(_loc1_);
            this.§[!u§[_loc1_.id] = _loc2_;
            battleService.§try var final§().§finally var false§(_loc2_);
            _loc6_.push(_loc2_);
            _loc3_ = new §static for function§(_loc2_.getPosition(),§#",§.§8! §(getInitParam().§do null§),§#",§.§8! §(getInitParam().§in for function§),_loc1_.id,this,battleService.§try var final§().§`"N§(),getInitParam().§if for package§);
            this.§0!N§.push(_loc3_);
            battleService.§try var final§().§#!,§(_loc3_);
            this.§class var override§.§return const break§(new §;"A§(_loc2_));
            _loc4_ = this.§override override§();
            for each(_loc5_ in _loc1_.§9"-§)
            {
               _loc4_.add(_loc5_,_loc1_.id);
            }
         }
         this.§8" § = new §with set do§(_loc6_);
         this.§8" §.visible = false;
         §+!p§.§2K§().addChild(this.§8" §);
         battleService.§catch include§().§@!X§(this.§8" §,0);
         this.§4"8§.§static var true§(this.§8" §);
         if(battleInfoService.isSpectatorMode())
         {
            this.§class var override§.show();
            this.§8" §.visible = true;
         }
      }
      
      private function §`!Y§(param1:§!!k§) : §for var do§
      {
         var _loc2_:§&!-§ = new §&!-§(param1.name,battleService.§catch include§(),getInitParam().resources);
         var _loc3_:Vector3 = §#",§.§include for super§(param1.position);
         var _loc4_:§[",§ = getInitParam().§for const if§;
         var _loc5_:§1!C§ = new §1!C§(battleService,_loc4_.pointScoreIncreasingSound.sound,_loc4_.pointScoreDecreasingSound.sound);
         var _loc6_:§for var do§ = new §for var do§(param1.id,param1.name,_loc3_,battleService,this,_loc5_,_loc2_);
         _loc6_.§include var final§ = param1.§9"-§.length;
         _loc6_.§7"F§(param1.state);
         _loc6_.§8!P§(param1.score,param1.§function const true§);
         return _loc6_;
      }
      
      private function §override override§() : §?"$§
      {
         return this.§class for with§;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         this.§+F§ = null;
         battleService.§native const package§(null);
         battleService.§false for§(null);
         battleService.§try for static§(null);
         battleService.§return var function§(null);
         this.§'K§.§const var false§();
         this.§8" §.removeFromParent();
         this.§8" § = null;
         this.§0<§ = null;
      }
      
      [Obfuscation(rename="false")]
      public function tankEnteredPointZone(param1:int, param2:String) : void
      {
         var _loc3_:§for var do§ = this.§[!u§[param1];
         ++_loc3_.§include var final§;
         var _loc4_:Tank = this.§0<§[param2];
         if(_loc4_ != null)
         {
            this.§throw var in§(param1,_loc4_,this.§>"4§);
         }
         else
         {
            this.§override override§().add(param2,param1);
         }
      }
      
      private function §throw var in§(param1:int, param2:Tank, param3:§-'§) : void
      {
         var _loc4_:§<!;§ = §<!;§(battleService.§#!o§().getObject(§<!;§));
         var _loc5_:§for var do§ = this.§[!u§[param1];
         var _loc6_:Vector3 = new Vector3();
         _loc5_.readPosition(_loc6_);
         _loc4_.init(param2.§<M§().§break var include§(),_loc6_,param3.§""H§(param2.tankData.teamType),battleService.§5W§());
         this.§true for else§().§return const null§(param2,_loc4_);
      }
      
      [Obfuscation(rename="false")]
      public function tankLeftPointZone(param1:int, param2:String) : void
      {
         var _loc3_:§for var do§ = this.§[!u§[param1];
         --_loc3_.§include var final§;
         var _loc4_:Tank = this.§0<§[param2];
         if(_loc4_ != null)
         {
            this.§true for else§().§%q§(_loc4_);
         }
         else
         {
            this.§override override§().remove(param2);
         }
      }
      
      public function §true const const§() : §69§
      {
         return §69§.§,M§;
      }
      
      public function §?"e§() : §>!8§
      {
         var _loc1_:§6a§ = new §6a§();
         this.§+F§.push(_loc1_);
         return _loc1_;
      }
      
      [Obfuscation(rename="false")]
      public function setPointProgress(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:§for var do§ = this.§[!u§[param1];
         _loc4_.§8!P§(param2,param3);
      }
      
      [Obfuscation(rename="false")]
      public function setPointState(param1:int, param2:§3"Q§) : void
      {
         var _loc3_:§for var do§ = this.§[!u§[param1];
         var _loc4_:§3"Q§ = _loc3_.§&!v§();
         _loc3_.§7"F§(param2);
         if(param2 == §3"Q§.NEUTRAL)
         {
            this.§for set if§(_loc3_,_loc4_);
         }
         else
         {
            this.§!!=§(_loc3_);
         }
      }
      
      private function §for set if§(param1:§for var do§, param2:§3"Q§) : void
      {
         var _loc3_:§while var const§ = §package class§(param2);
         var _loc4_:§return native§ = this.§1^§(_loc3_);
         var _loc5_:String = _loc4_.getMessage(param1.getName());
         this.§4"8§.§for for continue§(_loc4_.color,_loc5_);
         this.§4"8§.§switch for while§(_loc5_);
         this.§default set static§().§in for static§(_loc3_);
      }
      
      private function §1^§(param1:§while var const§) : §return native§
      {
         if(this.§&"X§ == null)
         {
            return §function const set§.§null var in§(param1);
         }
         if(param1 == this.§&"X§.tankData.teamType)
         {
            return §function const set§.§include set final§;
         }
         return §function const set§.§,"K§;
      }
      
      private function §!!=§(param1:§for var do§) : void
      {
         var _loc2_:§while var const§ = §package class§(param1.§&!v§());
         var _loc3_:§return native§ = this.§continue var var§(_loc2_);
         var _loc4_:String = _loc3_.getMessage(param1.getName());
         this.§4"8§.§for for continue§(_loc3_.color,_loc4_);
         this.§4"8§.§switch for while§(_loc4_);
         this.§default set static§().§]!^§(_loc2_);
      }
      
      private function §continue var var§(param1:§while var const§) : §return native§
      {
         if(this.§&"X§ == null)
         {
            return §function const set§.§continue var var§(param1);
         }
         if(param1 == this.§&"X§.tankData.teamType)
         {
            return §function const set§.§<!f§;
         }
         return §function const set§.§use var null§;
      }
      
      private function §with var class§() : void
      {
         var _loc1_:§for var do§ = null;
         for each(_loc1_ in this.§[!u§)
         {
            _loc1_.reset();
         }
      }
      
      [Obfuscation(rename="false")]
      public function pointCaptureStarted(param1:§while var const§) : void
      {
         this.§default set static§().§set var set§(param1);
      }
      
      [Obfuscation(rename="false")]
      public function pointCaptureStopped(param1:§while var const§) : void
      {
         this.§default set static§().§native for each§(param1);
      }
      
      private function §default set static§() : §-l§
      {
         return this.§for const if§;
      }
      
      public function §do return§(param1:int) : void
      {
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         Network(OSGi.getInstance().getService(INetworker)).send("battle;tank_capturing_point;" + param1);
      }
      
      public function §const false§(param1:int) : void
      {
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         Network(OSGi.getInstance().getService(INetworker)).send("battle;tank_leave_capturing_point;" + param1);
      }
      
      public function §var var try§(param1:int) : void
      {
         this.inventoryModel.§>-§(§set extends§.MINE,§static for else§.§try for final§,true);
      }
      
      public function §48§(param1:int) : void
      {
         this.inventoryModel.§>-§(§set extends§.MINE,§static for else§.§try for final§,false);
      }
      
      private function §,!,§(param1:Object) : void
      {
         this.reset();
      }
      
      private function reset() : void
      {
         this.§with var class§();
         this.§;!W§();
      }
      
      private function §;!W§() : void
      {
         var _loc1_:§static for function§ = null;
         for each(_loc1_ in this.§0!N§)
         {
            _loc1_.reset();
         }
      }
      
      public function §%"<§(param1:int) : void
      {
         var _loc2_:int = param1;
      }
      
      [Obfuscation(rename="false")]
      public function §5!@§() : void
      {
         this.reset();
      }
   }
}

