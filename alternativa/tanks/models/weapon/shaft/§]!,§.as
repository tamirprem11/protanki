package alternativa.tanks.models.weapon.shaft
{
   import §%"I§.§@O§;
   import §%"I§.IdleState;
   import §%"I§.§case const continue§;
   import §%"I§.§const var throw§;
   import §%"I§.§extends const include§;
   import §%"I§.§if const throw§;
   import §%"I§.§native case§;
   import §%"I§.§with null§;
   import §%"I§.§with set else§;
   import §&u§.§"!y§;
   import §&u§.§"X§;
   import §&u§.§96§;
   import §&u§.§catch for continue§;
   import §,"§.§4S§;
   import §,"§.§<!z§;
   import §]"h§.§function var class§;
   import §],§.§while var const§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.battle.objects.tank.§while set break§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§6R§;
   import alternativa.tanks.battle.scene3d.§null set import§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.camera.§in const false§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import alternativa.tanks.utils.MathUtils;
   import alternativa.tanks.utils.SetControllerForTemporaryItems;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§var const throw§;
   import §const set false§.§var var implements§;
   import §dynamic package§.§]"P§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §switch var switch§.§<"H§;
   import §true for package§.§5"b§;
   
   public class §]!,§ extends §case const var§ implements §extends for finally§, §while set break§, §do for switch§, §case var set§
   {
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      [Inject]
      public static var display:IDisplay;
      
      private static const §true const finally§:Class = §`F§;
      
      private static const §try for finally§:BitmapData = new §true const finally§().bitmapData;
      
      private static const §2!o§:int = 200;
      
      private static const §@!§:Number = 9;
      
      private static const §;! §:Vector3 = new Vector3();
      
      private static const _direction:Vector3 = new Vector3();
      
      private static const _m:Matrix4 = new Matrix4();
      
      private static const §?!@§:Vector3 = new Vector3();
      
      private static const §use override§:Vector3 = new Vector3();
      
      private static const §continue use§:Vector3 = new Vector3();
      
      private static const §package for native§:EncryptedInt = new EncryptedIntImpl(1000);
      
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const §catch var super§:int = 75;
      
      private var battleService:BattleService;
      
      private var battleEventDispatcher:BattleEventDispatcher;
      
      private var callback:§6"g§;
      
      private var effects:§7G§;
      
      private var §,I§:§1!a§;
      
      private var §9!_§:§function var class§;
      
      private var §4!"§:§var for super§;
      
      private var §#!&§:§<!z§;
      
      private var §+!z§:§package const final§;
      
      private var §=!y§:Dictionary = new Dictionary();
      
      private var §#!'§:§9"L§;
      
      private var states:Dictionary;
      
      private var currentState:§@O§;
      
      private var §finally const extends§:Vector.<§with set else§>;
      
      private var §,"6§:EncryptedInt = new EncryptedIntImpl();
      
      private var §final var class§:EncryptedNumber = new EncryptedNumberImpl();
      
      private var §try const package§:EncryptedNumber = new EncryptedNumberImpl();
      
      private var §1z§:§final implements§ = §final implements§.RECHARGE;
      
      private var §<!N§:§else for static§;
      
      private var enabled:Boolean;
      
      private var §&>§:§var const throw§;
      
      private var §#I§:int;
      
      private var §else var include§:int;
      
      private var team:§while var const§;
      
      private var §&!t§:SetControllerForTemporaryItems;
      
      private var §switch const set§:Dictionary;
      
      private var §<! §:§4S§;
      
      private var §10§:TankSpecification;
      
      private var weakening:§5"b§;
      
      private var §native const false§:§implements final§;
      
      private var §true var else§:§<"H§ = new §<"H§();
      
      private var cross:Bitmap = new Bitmap(§try for finally§);
      
      private var §break return§:§false override§;
      
      public function §]!,§(param1:§false override§, param2:BattleService, param3:BattleEventDispatcher, param4:§6"g§, param5:§function var class§, param6:§var for super§, param7:§package const final§, param8:Dictionary, param9:§var const throw§, param10:§1!a§, param11:§5"b§)
      {
         super();
         this.§break return§ = param1;
         this.§#I§ = param1.§,Z§();
         this.battleService = param2;
         this.battleEventDispatcher = param3;
         this.callback = param4;
         this.effects = param1.§native const finally§();
         this.§,I§ = param10;
         this.§9!_§ = param5;
         this.§4!"§ = param6;
         this.§#!&§ = new §<!z§(param1.§extends const§(),-param1.§&"W§(),param5.§9&§,param5.§3!§);
         this.§+!z§ = param7;
         this.§=!y§ = param8;
         this.§&>§ = param9;
         this.§10§ = param1.§#!u§().§override set var§;
         this.weakening = param11;
         var _loc12_:§,6§ = param2.§catch include§();
         this.§<!N§ = new §else for static§(_loc12_.§function var break§());
         this.§switch const set§ = _loc12_.§5"<§();
         this.§&!t§ = new SetControllerForTemporaryItems(this.§switch const set§);
         this.§<! § = new §4S§(param1.§extends const§(),-param1.§&"W§());
         this.§native const false§ = param9.§1!K§();
      }
      
      private static function §27§(param1:Vector3, param2:Vector.<Vector3>, param3:Vector3) : void
      {
         var _loc4_:Number = NaN;
         §use override§.copy(param2[0]);
         §use override§.y = 0;
         param3.copy(§use override§);
         var _loc5_:Number = param1.distanceToSquared(§use override§);
         var _loc6_:int = 1;
         while(_loc6_ < param2.length)
         {
            §use override§.copy(param2[_loc6_]);
            §use override§.y = 0;
            _loc4_ = param1.distanceToSquared(§use override§);
            if(_loc4_ < _loc5_)
            {
               _loc5_ = _loc4_;
               param3.copy(§use override§);
            }
            _loc6_++;
         }
      }
      
      private static function §&! §(param1:DisplayObject) : void
      {
         param1.x = display.stage.stageWidth - param1.width >> 1;
         param1.y = display.stage.stageHeight - param1.height >> 1;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.§+!z§.setWeapon(this);
         this.§+!z§.init();
         this.§<!N§.setSkin(param1.§<M§());
         this.§#!&§.§class return§(param1.§0[§());
         this.team = this.§try set null§().teamType;
         this.initStateMachine();
         this.reset();
      }
      
      public function destroy() : void
      {
         this.§break return§ = null;
         this.battleService = null;
         this.battleEventDispatcher = null;
         this.callback = null;
         this.effects = null;
         this.§,I§ = null;
         this.§9!_§ = null;
         this.§4!"§ = null;
         this.§#!&§ = null;
         this.§=!y§ = null;
         this.§&>§ = null;
         this.§10§ = null;
         this.weakening = null;
         this.currentState.exit();
         this.§+!z§.destroy();
         this.§<!N§.stop();
      }
      
      public function activate() : void
      {
         §try var final§().§finally var false§(this);
      }
      
      public function deactivate() : void
      {
         §try var final§().§<!3§(this);
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            this.currentState.enter(this.battleService.§catch static§());
         }
      }
      
      public function disable(param1:Boolean) : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            this.§?!q§(§if var try§.STOP,param1);
         }
      }
      
      public function reset() : void
      {
         var _loc1_:int = this.battleService.§catch static§();
         if(this.currentState != this.states[§function set§.IDLE])
         {
            this.currentState.exit();
            this.currentState = this.states[§function set§.IDLE];
         }
         var _loc2_:§while var const§ = this.§try set null§().teamType;
         if(this.team != _loc2_)
         {
            this.team = _loc2_;
         }
         this.currentState.enter(_loc1_);
         this.§false get§(§final implements§.RECHARGE,this.§9!_§.§#!>§,_loc1_);
      }
      
      private function §try set null§() : Tank
      {
         return this.§#!'§.§<J§().tank;
      }
      
      public function getStatus() : Number
      {
         return this.§if for override§(getTimer()) / this.§9!_§.§#!>§;
      }
      
      public function §do var get§() : void
      {
         if(this.enabled)
         {
            this.currentState.§?!q§(§if var try§.TRIGGER_PULL,null);
         }
      }
      
      public function §throw continue§() : void
      {
         if(this.enabled)
         {
            this.currentState.§?!q§(§if var try§.TRIGGER_RELEASE,null);
         }
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(this.enabled)
         {
            this.currentState.update(param1,param2);
         }
      }
      
      public function §8"1§() : Boolean
      {
         return this.§+!z§.§8"1§();
      }
      
      public function §>q§(param1:§final implements§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         if(param1 != this.§1z§)
         {
            _loc2_ = this.battleService.§catch static§();
            _loc3_ = this.§if for override§(_loc2_);
            this.§false get§(param1,_loc3_,_loc2_);
         }
      }
      
      public function §?!q§(param1:§if var try§, param2:* = undefined) : void
      {
         var _loc3_:§with set else§ = null;
         for each(_loc3_ in this.§finally const extends§)
         {
            if(_loc3_.eventType == param1 && _loc3_.state == this.currentState)
            {
               this.currentState.exit();
               if(_loc3_.handler != null)
               {
                  _loc3_.handler.execute(param2);
               }
               this.currentState = _loc3_.newState;
               if(this.currentState is IdleState)
               {
                  this.§&>§.§import get§();
               }
               this.currentState.enter(this.battleService.§catch static§());
               return;
            }
         }
         throw new §throw var finally§(this.currentState,param1);
      }
      
      public function §if for override§(param1:int) : Number
      {
         var _loc2_:Number = this.§final var class§.getNumber() + (param1 - this.§,"6§.getInt()) * this.§try const package§.getNumber() / §package for native§.getInt();
         return MathUtils.clamp(_loc2_,0,this.§9!_§.§#!>§);
      }
      
      public function §@"V§() : void
      {
         this.battleService.§4!x§(§in const false§.INSTANCE);
      }
      
      public function §each const do§(param1:int, param2:int) : void
      {
         this.§true var else§.x = param1 + §@!§;
         this.§true var else§.y = param2;
      }
      
      public function §6"4§() : void
      {
         this.§<!N§.stop();
         this.§#!'§.stopMovement();
         this.§#!'§.§super for finally§(true);
         this.§#!'§.§import for§(false);
         this.§#!'§.§implements for var§(§#",§.§for const finally§);
         this.§#!&§.§native set for§(§#",§.§for const finally§);
         this.§#!&§.§'!e§ = 0;
         this.§#!&§.§0"i§ = 0;
         if(this.§throw with§())
         {
            this.§<! §.activate();
            this.battleService.§4!x§(this.§<! §);
         }
         else
         {
            this.battleService.§4!x§(this.§#!&§);
         }
         this.effects.§return for final§(this.§#!'§.§0[§());
         this.callback.§9D§();
         this.callback.§#"#§();
         var _loc1_:§,6§ = this.battleService.§catch include§();
         _loc1_.§switch while§();
         _loc1_.§>"$§.§if const false§(this.§#!'§.§<J§().state.position,0);
      }
      
      private function §throw with§() : Boolean
      {
         return §2!a§.§-!!§() == §var var implements§.§]!+§;
      }
      
      public function §]F§() : void
      {
         if(this.§native const false§.parent != null)
         {
            this.§native const false§.parent.removeChild(this.§native const false§);
            this.§true var else§.parent.removeChild(this.§true var else§);
            if(this.cross.parent != null)
            {
               this.cross.parent.removeChild(this.cross);
            }
         }
         this.§#!'§.§super for finally§(false);
         this.§#!'§.§import for§(true);
         this.battleService.§else true§();
         this.battleService.§class if§();
         this.§<! §.deactivate();
         this.battleService.§catch include§().§^"A§();
         this.§#!'§.§ !G§();
         var _loc1_:Number = this.battleService.§override var with§().§while var in§();
         var _loc2_:Number = this.battleService.§override var with§().§,",§();
         this.§<!N§.§function set get§(§null set import§.§const var native§(_loc1_,_loc2_));
         this.§<!N§.start();
      }
      
      public function §with var static§(param1:uint) : Boolean
      {
         return this.§+!z§.§var const true§(param1);
      }
      
      public function §-!<§() : Boolean
      {
         var _loc1_:Object3D = null;
         this.§#!'§.§1"f§(§const for continue§);
         var _loc2_:Vector3 = this.§#!'§.§<J§().state.position;
         _direction.diff(§const for continue§.§#!!§,_loc2_);
         var _loc3_:RayIntersectionData = this.battleService.§catch include§().raycast(_loc2_,_direction,this.battleService.§5W§());
         if(_loc3_ != null && _loc3_.time <= 1)
         {
            _loc1_ = _loc3_.object;
            return _loc1_.name == §6R§.§return set for§;
         }
         return false;
      }
      
      public function §super const override§() : void
      {
         this.effects.§super const override§();
      }
      
      public function §try package§() : Number
      {
         return this.§9!_§.§#!>§;
      }
      
      public function §%"#§(param1:Number) : void
      {
         var _loc2_:§,6§ = this.battleService.§catch include§();
         _loc2_.§>"$§.§if const false§(this.§#!'§.§<J§().state.position,param1);
      }
      
      public function §?c§(param1:Number) : void
      {
         var _loc2_:int = this.battleService.§catch static§();
         this.effects.§return const while§();
         this.§#!'§.§1"f§(§const for continue§);
         var _loc3_:§try var for§ = this.§implements for for§();
         this.§#!&§.§?"0§(_direction);
         var _loc4_:Number = param1 - this.§if for override§(_loc2_);
         this.effects.§'!1§(§const for continue§.§#!!§,_loc3_.§final set super§);
         this.§"h§(_loc3_.§final set super§,_loc3_.§case var dynamic§,_direction);
         this.§2"A§(_loc3_.target,_loc3_.§case var dynamic§,this.§package for false§(_loc4_),_direction);
         this.§else var include§ = this.battleService.§catch static§() + this.§#I§;
         this.callback.§?!"§(_loc2_,_loc3_.§final set super§,_loc3_.target,_loc3_.§case var dynamic§);
         this.§false get§(§final implements§.RECHARGE,Math.min(this.§if for override§(_loc2_),this.§9!_§.§#!>§ - this.§9!_§.minAimedShotEnergy),_loc2_);
      }
      
      private function §implements for for§() : §try var for§
      {
         var _loc1_:RayIntersectionData = null;
         var _loc2_:Object3D = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Tank = null;
         var _loc5_:§try var for§ = new §try var for§();
         this.§#!&§.§const for throw§(§;! §);
         this.§&>§.§extends const with§(_direction);
         this.§0!L§(this.§#!'§.§<M§());
         while(true)
         {
            _loc1_ = this.battleService.§catch include§().raycast(§;! §,_direction,this.§switch const set§);
            if(_loc1_ == null)
            {
               break;
            }
            _loc2_ = _loc1_.object;
            _loc3_ = §;! §.clone().addScaled(_loc1_.time + 0.1,_direction);
            if(_loc2_.name == §6R§.§return set for§)
            {
               _loc5_.§get static§(_loc3_);
               break;
            }
            if(_loc2_.name == §6R§.TANK_PART)
            {
               _loc4_ = this.§=!y§[_loc2_];
               if(this.§switch const with§(_loc4_,_loc2_,_loc3_))
               {
                  _loc5_.§ !F§(_loc4_.§<J§(),_loc3_);
                  break;
               }
               this.§0!L§(_loc4_.§<M§());
            }
            else
            {
               this.§&!t§.addTemporaryItem(_loc2_);
            }
            §;! §.copy(_loc3_);
         }
         this.§&!t§.deleteAllTemporaryItems();
         return _loc5_;
      }
      
      private function §switch const with§(param1:Tank, param2:Object3D, param3:Vector3) : Boolean
      {
         var _loc4_:§8!x§ = param1.§<M§();
         if(_loc4_.§0[§() == param2)
         {
            _m.setMatrix(param2.x,param2.y,param2.z,param2.rotationX,param2.rotationY,param2.rotationZ);
            _m.transformVectorInverse(param3,§?!@§);
            §27§(§?!@§,_loc4_.§super do§().§9!M§,§continue use§);
            _m.transformVector(§continue use§,§?!@§);
            §?!@§.subtract(param3);
            if(§try var final§().§`"N§().hasStaticHit(param3,§?!@§,§]"P§.§return set for§,1))
            {
               return false;
            }
         }
         return _loc4_.§2"d§() == 1;
      }
      
      public function §include for package§(param1:Number) : void
      {
         var _loc2_:§native var import§ = null;
         var _loc3_:Body = null;
         var _loc4_:Vector3 = null;
         var _loc5_:Vector3 = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = this.battleService.§catch static§();
         var _loc8_:Number = param1 < 0 ? Number(this.§if for override§(_loc7_)) : Number(param1);
         if(_loc8_ >= this.§9!_§.fastShotEnergy)
         {
            _loc8_ -= this.§9!_§.fastShotEnergy;
            if(!this.§-!<§())
            {
               this.§#!'§.§1"f§(§const for continue§);
               _loc6_ = this.§break return§.§set for set§().§do const class§();
               _loc2_ = this.§,I§.target(§const for continue§);
               if(_loc2_.§dynamic throw§())
               {
                  _loc4_ = _loc2_.§set var include§().position.clone();
               }
               if(_loc2_.hasStaticHit())
               {
                  _loc5_ = _loc2_.§&!w§().position.clone();
               }
               if(_loc2_.§const const else§())
               {
                  _loc3_ = _loc2_.§set var include§().shape.body;
                  _loc6_ *= this.weakening.§3;§(_loc2_.§set var include§().t);
               }
               this.§"h§(_loc5_,_loc4_,_loc2_.§9G§());
               this.§2"A§(_loc3_,_loc4_,_loc6_,_loc2_.§9G§());
               this.effects.§'!1§(§const for continue§.§#!!§,_loc5_);
            }
            this.effects.§do var function§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
            this.§else var include§ = this.battleService.§catch static§() + this.§#I§;
            this.callback.§in function§(_loc7_,_loc5_,_loc3_,_loc4_);
         }
         this.§false get§(§final implements§.RECHARGE,_loc8_,_loc7_);
      }
      
      public function §9"G§() : Boolean
      {
         return this.battleService.§catch static§() >= this.§else var include§;
      }
      
      public function §8D§() : void
      {
         this.callback.§return const try§();
      }
      
      private function §0!L§(param1:§8!x§) : void
      {
         this.§&!t§.addTemporaryItem(param1.§+S§());
         this.§&!t§.addTemporaryItem(param1.§0[§());
      }
      
      private function initStateMachine() : void
      {
         var _loc1_:Vector3 = this.§#!'§.§return const return§().clone();
         this.states = new Dictionary();
         this.states[§function set§.IDLE] = new IdleState(this);
         this.states[§function set§.READY_TO_SHOOT] = new §case const continue§(this,§2!o§);
         var _loc2_:§const var throw§ = new §const var throw§();
         this.states[§function set§.§`"V§] = new §if const throw§(_loc2_,this,this.§9!_§.targetingTransitionTime,this.§9!_§.§3!n§,_loc1_,this.battleService.§catch include§().§function var break§(),this.§#!'§.§<M§(),this.§#!'§,this.§&>§,this.§9!_§,this.§10§);
         this.states[§function set§.§?P§] = new §extends const include§(_loc2_,this,this.§#!&§,this.§9!_§,this.§&>§,this.effects,this.§10§);
         this.currentState = this.states[§function set§.IDLE];
         this.§finally const extends§ = Vector.<§with set else§>([this.§const for for§(§function set§.IDLE,§if var try§.READY_TO_SHOOT,§function set§.READY_TO_SHOOT,null),this.§const for for§(§function set§.IDLE,§if var try§.STOP,§function set§.IDLE,null),this.§const for for§(§function set§.READY_TO_SHOOT,§if var try§.TRIGGER_RELEASE,§function set§.IDLE,new §"X§(this)),this.§const for for§(§function set§.READY_TO_SHOOT,§if var try§.SWITCH,§function set§.§`"V§,null),this.§const for for§(§function set§.READY_TO_SHOOT,§if var try§.STOP,§function set§.IDLE,null),this.§const for for§(§function set§.§`"V§,§if var try§.SWITCH,§function set§.§?P§,null),this.§const for for§(§function set§.§`"V§,§if var try§.TRIGGER_RELEASE,§function set§.IDLE,new §catch for continue§(this)),this.§const for for§(§function set§.§`"V§,§if var try§.STOP,§function set§.IDLE,new §96§(this)),this.§const for for§(§function set§.§?P§,§if var try§.EXIT,§function set§.IDLE,null),this.§const for for§(§function set§.§?P§,§if var try§
         .STOP,§function set§.IDLE,new §"!y§(this))]);
      }
      
      private function §const for for§(param1:§function set§, param2:§if var try§, param3:§function set§, param4:§with null§) : §with set else§
      {
         return new §with set else§(param2,this.states[param1],this.states[param3],param4);
      }
      
      private function §false get§(param1:§final implements§, param2:Number, param3:int) : void
      {
         this.§1z§ = param1;
         switch(param1)
         {
            case §final implements§.RECHARGE:
               this.§final var class§.setNumber(0);
               this.§try const package§.setNumber(this.§9!_§.chargeRate);
               this.§,"6§.setInt(param3 - param2 / this.§try const package§.getNumber() * §package for native§.getInt());
               break;
            case §final implements§.DRAIN:
               this.§final var class§.setNumber(this.§9!_§.§#!>§);
               this.§try const package§.setNumber(-this.§9!_§.§-$§);
               this.§,"6§.setInt(param3 + (this.§9!_§.§#!>§ - param2) / this.§try const package§.getNumber() * §package for native§.getInt());
               this.callback.§0!Y§(param3);
         }
      }
      
      private function §"h§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         this.effects.§import null§(§const for continue§.§for const for§);
         this.effects.§'!f§(param1,param2,§const for continue§.§for const for§,§const for continue§.direction,param3);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
      }
      
      private function §2"A§(param1:Body, param2:Vector3, param3:Number, param4:Vector3) : void
      {
         if(param1 != null)
         {
            param1.tank.§class set set§(param2,param4,param3);
         }
      }
      
      private function §package for false§(param1:Number) : Number
      {
         var _loc2_:Number = this.§break return§.§set for set§().§do const class§();
         return _loc2_ + (this.§4!"§.§do const class§() - _loc2_) * param1 / this.§9!_§.§#!>§;
      }
      
      public function §;!F§(param1:Vector3, param2:§native case§) : Boolean
      {
         var _loc3_:RayIntersectionData = null;
         var _loc4_:Object3D = null;
         var _loc5_:Tank = null;
         this.§#!&§.§const for throw§(§;! §);
         _direction.copy(param1);
         this.§0!L§(this.§#!'§.§<M§());
         param2.reset();
         while(true)
         {
            _loc3_ = this.battleService.§catch include§().raycast(§;! §,param1,this.§switch const set§);
            if(_loc3_ == null)
            {
               break;
            }
            _loc4_ = _loc3_.object;
            if(_loc4_.name == §6R§.§return set for§)
            {
               §;! §.addScaled(_loc3_.time,param1);
               param2.§throw set finally§(§;! §);
               this.§&!t§.deleteAllTemporaryItems();
               return true;
            }
            if(_loc4_.name == §6R§.TANK_PART)
            {
               §;! §.addScaled(_loc3_.time,param1);
               _loc5_ = this.§=!y§[_loc4_];
               if(this.§switch const with§(_loc5_,_loc4_,§;! §))
               {
                  param2.§throw set finally§(§;! §,_loc5_);
                  this.§&!t§.deleteAllTemporaryItems();
                  return true;
               }
            }
            this.§&!t§.addTemporaryItem(_loc3_.object);
         }
         this.§&!t§.deleteAllTemporaryItems();
         return false;
      }
      
      public function §use var final§(param1:Point, param2:Point) : void
      {
         var _loc3_:DisplayObjectContainer = this.battleService.§override var with§().§final for with§();
         _loc3_.addChild(this.§native const false§);
         §&! §(this.§native const false§);
         var _loc4_:Tank = this.§try set null§();
         _loc4_.§implements for case§();
         var _loc5_:BitmapData = _loc4_.§[1§();
         this.§true var else§.bitmapData = _loc5_;
         _loc3_.addChild(this.§true var else§);
         if(§2!a§.§-!!§() == §var var implements§.§]!+§)
         {
            _loc3_.addChild(this.cross);
         }
         var _loc6_:§for for native§ = this.battleService.§catch include§().§function var break§();
         var _loc7_:Vector3D = new Vector3D();
         _loc4_.§='§(_loc7_);
         _loc7_ = _loc6_.projectGlobal(_loc7_);
         param1.x = _loc7_.x + this.battleService.§override var with§().§true const set§();
         param1.y = _loc7_.y + this.battleService.§override var with§().§function var implements§() - _loc5_.height;
         this.§true var else§.x = param1.x;
         this.§true var else§.y = param1.y;
         this.§switch set var§();
         param2.x = display.stage.stageWidth >> 1;
         param2.y = (display.stage.stageHeight >> 1) + §catch var super§;
      }
      
      private function §switch set var§() : void
      {
         this.cross.x = display.stage.stageWidth - this.cross.width >> 1;
         this.cross.y = display.stage.stageHeight - this.cross.height >> 1;
      }
      
      public function §const const break§(param1:Number) : void
      {
         this.§native const false§.§!! §.alpha = param1;
         this.§true var else§.alpha = param1;
      }
   }
}

