package alternativa.tanks.bonuses
{
   import §9"9§.§!!c§;
   import §9"9§.§8"F§;
   import §9"9§.§finally for dynamic§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§return final§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.battle.§switch set use§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   import org1.osflash.signals.ISignal;
   import org1.osflash.signals.Signal;
   
   public class BattleBonus extends §super for static§ implements §switch set use§, §return final§, §set while§, Bonus
   {
      private static const BIG_VALUE:Number = 10000000000;
      
      private static const FADEOUT_TIME:Number = 1777;
      
      private static const FADEOUT_CURVE:Number = 1 / 0.777;
      
      private static const N:Vector3 = new Vector3();
      
      private static const P:Vector3 = new Vector3();
      
      private static const P1:Vector3 = new Vector3();
      
      private static const X:Vector3 = new Vector3();
      
      private static const Y:Vector3 = new Vector3();
      
      private static const Y1:Vector3 = new Vector3();
      
      private static const origin:Vector3 = new Vector3();
      
      private static const _RayIntersection:RayHit = new RayHit();
      
      private static const _bonusTransform:Matrix4 = new Matrix4();
      
      private static const m:Matrix3 = new Matrix3();
      
      private static const m1:Matrix3 = new Matrix3();
      
      private static const axis:Vector3 = new Vector3();
      
      private static const eulerAngles:Vector3 = new Vector3();
      
      private static const offsetVector:Vector3 = new Vector3();
      
      private static const _bonusPosition:Vector3 = new Vector3();
      
      private var bonusMesh:BonusMesh;
      
      private var parachute:Parachute;
      
      private var cords:Cords;
      
      private var lightSource:OmniLight;
      
      private var battleService:BattleService;
      
      private var fallSpeed:Number = 0;
      
      private var bonusObjectId:String;
      
      private var data:BattleBonusData;
      
      private var _bonusId:String;
      
      private var controllersActive:Boolean;
      
      private var trigger:BonusTrigger;
      
      private var controllers:Vector.<BonusController> = new Vector.<BonusController>();
      
      private var currentController:BonusController;
      
      private var fallController:FallController;
      
      private var landingController:LandingController;
      
      public const onPickup:ISignal = new Signal();
      
      public const onRemove:ISignal = new Signal();
      
      public const onDestroy:ISignal = new Signal();
      
      private const onTankCollision:ISignal = new Signal();
      
      private var globalLightIntensity:Number;
      
      public function BattleBonus(param1:§default const static§)
      {
         super(param1);
         this.trigger = new BonusTrigger(this);
         this.fallController = new FallController(this);
         this.landingController = new LandingController(this);
         this.lightSource = new OmniLight(0,0,0);
      }
      
      private static function isFlatSurface(param1:Vector3) : Boolean
      {
         return param1.z > BonusConst.COS_ONE_DEGREE;
      }
      
      public function init(param1:String, param2:String, param3:BattleBonusData, param4:BattleService) : void
      {
         this.bonusObjectId = param1;
         this._bonusId = param2;
         this.data = param3;
         this.battleService = param4;
         this.controllers.length = 0;
      }
      
      private function initLight() : void
      {
         this.globalLightIntensity = 1;
         this.lightSource.color = this.data.lightColor;
         this.lightSource.attenuationBegin = this.data.attenuationBegin;
         this.lightSource.attenuationEnd = this.data.attenuationEnd;
         this.lightSource.intensity = this.data.lightIntensity * this.globalLightIntensity;
         this.lightSource.calculateBounds();
         this.bonusMesh.readPosition(origin);
         this.lightSource.x = origin.x;
         this.lightSource.y = origin.y;
         this.lightSource.z = origin.z;
         this.battleService.§catch include§().addObject(this.lightSource);
      }
      
      public function spawn(param1:Vector3, param2:int, param3:Number, param4:Function) : void
      {
         this.fallSpeed = param3;
         this.onTankCollision.add(param4);
         this.initBonusMesh();
         this.controllersActive = false;
         this.controllers.length = 0;
         this.getGroundPointAndNormal(param1,P,N);
         if(this.isUnderCeil(param1))
         {
            this.initOnGround(P,N);
         }
         else
         {
            this.initAirborne(param1,P,N,param2);
            this.trigger.enable();
         }
         this.initRemovalAnimation(this.data.lifeTimeMs - param2);
         if(this.runNextController())
         {
            this.activateRendererAndPhysicsController();
         }
      }
      
      private function initOnGround(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:Number = NaN;
         offsetVector.reset(0,0,BonusConst.BONUS_HALF_SIZE);
         if(isFlatSurface(param2))
         {
            eulerAngles.reset(0,0,this.getStartingAngleZ());
         }
         else
         {
            axis.cross2(Vector3.Z_AXIS,param2);
            axis.normalize();
            _loc3_ = Math.acos(param2.z);
            m.fromAxisAngle(axis,_loc3_);
            m1.setRotationMatrix(0,0,this.getStartingAngleZ());
            m1.append(m);
            m1.getEulerAngles(eulerAngles);
            offsetVector.transform3(m);
         }
         this.bonusMesh.setRotation(eulerAngles);
         this.bonusMesh.setPositionComponents(param1.x + offsetVector.x,param1.y + offsetVector.y,param1.z + offsetVector.z);
         this.updateTriggerFromMesh();
         this.bonusMesh.addToScene();
         this.startGroundSpawnAnimation();
      }
      
      private function startGroundSpawnAnimation() : void
      {
         var _loc1_:GroundSpawnRenderer = GroundSpawnRenderer(this.battleService.§#!o§().getObject(GroundSpawnRenderer));
         _loc1_.start(this);
      }
      
      private function updateTriggerFromMesh() : void
      {
         this.bonusMesh.readTransform(_bonusTransform);
         this.trigger.update(_bonusTransform);
      }
      
      private function getStartingAngleZ() : Number
      {
         return Math.PI * 10 * parseInt(this.bonusId.split("_")[1]) / 180;
      }
      
      private function initAirborne(param1:Vector3, param2:Vector3, param3:Vector3, param4:int) : void
      {
         var _loc5_:Number = NaN;
         if(isFlatSurface(param3))
         {
            _loc5_ = this.calculateFallTime(param1,param2);
            P1.copy(param2);
         }
         else
         {
            X.cross2(param3,Vector3.Z_AXIS);
            X.normalize();
            Y.cross2(param3,X);
            Y1.cross2(Vector3.Z_AXIS,X);
            origin.copy(param1);
            origin.addScaled(-BonusConst.BONUS_HALF_SIZE,Y1);
            P1.copy(param2);
            P1.addScaled(-BonusConst.BONUS_HALF_SIZE / param3.z,Y);
            if(this.battleService.§try var final§().§`"N§().raycastStatic(origin,Vector3.DOWN,§]"P§.§return set for§,BIG_VALUE,null,_RayIntersection))
            {
               if(param2.z < _RayIntersection.position.z && _RayIntersection.position.z < P1.z)
               {
                  P1.addScaled(BonusConst.BONUS_HALF_SIZE / param3.z * (P1.z - _RayIntersection.position.z) / (P1.z - param2.z),Y);
               }
            }
            _loc5_ = this.calculateFallTime(param1,P1);
            this.landingController.init(P1,param3);
            this.controllers.push(this.landingController);
         }
         var _loc6_:Number = P1.z + BonusConst.BONUS_HALF_SIZE + BonusConst.BONUS_OFFSET_Z;
         var _loc7_:Number = this.getStartingAngleZ();
         if(_loc5_ * 1000 <= param4)
         {
            this.bonusMesh.setPositionComponents(P1.x,P1.y,P1.z + BonusConst.BONUS_HALF_SIZE);
            this.bonusMesh.setRotationZ(_loc7_ + _loc5_ * BonusConst.ANGULAR_SPEED_Z);
            this.updateTriggerFromMesh();
            this.bonusMesh.addToScene();
         }
         else
         {
            this.initParachute();
            this.addAllToScene();
            this.startSpawnAnimation(this.battleService);
            this.fallController.init(param1,this.fallSpeed,_loc6_,-_loc5_,param4 / 1000,_loc7_);
            this.controllers.push(this.fallController);
         }
      }
      
      private function isUnderCeil(param1:Vector3) : Boolean
      {
         var _loc2_:§throw const function§ = this.battleService.§try var final§().§`"N§();
         return _loc2_.hasStaticHit(param1,Vector3.Z_AXIS,§]"P§.§return set for§,BIG_VALUE);
      }
      
      private function getGroundPointAndNormal(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:§throw const function§ = this.battleService.§try var final§().§`"N§();
         if(_loc4_.raycastStatic(param1,Vector3.DOWN,§]"P§.§return set for§,BIG_VALUE,null,_RayIntersection))
         {
            param3.copy(_RayIntersection.normal);
            param2.copy(_RayIntersection.position);
         }
         else
         {
            param3.copy(Vector3.Z_AXIS);
            param2.copy(param1);
            param2.z -= 1000;
         }
      }
      
      public function get bonusId() : String
      {
         return this._bonusId;
      }
      
      public function pickup() : void
      {
         this.onPickup.dispatch();
         this.playPickupSound();
         this.detachParachute();
         this.startPickupAnimation();
         this.destroy();
      }
      
      private function playPickupSound() : void
      {
         var _loc1_:§!!c§ = null;
         if(this.data.pickupSound != null)
         {
            _loc1_ = §!!c§.create(this.data.pickupSound,0.5);
            this.bonusMesh.readPosition(_bonusPosition);
            this.battleService.§!O§(§8"F§.create(_bonusPosition,_loc1_));
         }
      }
      
      private function startPickupAnimation() : void
      {
         var _loc1_:BonusPickupAnimation = BonusPickupAnimation(this.battleService.§#!o§().getObject(BonusPickupAnimation));
         _loc1_.start(this.bonusMesh);
         this.bonusMesh = null;
      }
      
      public function remove() : void
      {
         this.onRemove.dispatch();
         this.bonusMesh = null;
         this.destroy();
      }
      
      private function destroy() : void
      {
         this.onDestroy.dispatch();
         this.onPickup.removeAll();
         this.onRemove.removeAll();
         this.onDestroy.removeAll();
         this.destroyBonusMesh();
         this.destroyParachute();
         this.deactivateRendererAndPhysicsController();
         this.removeLight();
         this.trigger.disable();
         this.onTankCollision.removeAll();
         this.battleService = null;
         this.data = null;
         recycle();
      }
      
      private function destroyBonusMesh() : void
      {
         if(this.bonusMesh != null)
         {
            this.bonusMesh.removeFromScene();
            this.bonusMesh.recycle();
            this.bonusMesh = null;
         }
      }
      
      private function destroyParachute() : void
      {
         if(this.parachute != null)
         {
            this.parachute.removeFromScene();
            this.parachute.recycle();
            this.parachute = null;
            this.cords.removeFromScene();
            this.cords.recycle();
            this.cords = null;
         }
      }
      
      private function calculateFallTime(param1:Vector3, param2:Vector3) : Number
      {
         return (param1.z - param2.z - BonusConst.BONUS_HALF_SIZE) / this.fallSpeed;
      }
      
      private function initRemovalAnimation(param1:int) : void
      {
         var _loc2_:RemovalAnimation = RemovalAnimation(this.battleService.§#!o§().getObject(RemovalAnimation));
         _loc2_.init(this,param1);
      }
      
      private function startSpawnAnimation(param1:BattleService) : void
      {
         var _loc2_:SpawnAnimation = SpawnAnimation(this.battleService.§#!o§().getObject(SpawnAnimation));
         _loc2_.start(this);
      }
      
      private function activateRendererAndPhysicsController() : void
      {
         if(!this.controllersActive)
         {
            this.controllersActive = true;
            this.battleService.§try var final§().§static native§(this);
            this.battleService.§try var final§().§9"F§(this);
            this.battleService.§catch include§().§@!X§(this,0);
         }
      }
      
      private function initParachute() : void
      {
         if(BonusCache.isParachuteCacheEmpty())
         {
            this.parachute = new Parachute(this.data.parachuteOuterMesh,this.data.parachuteInnerMesh);
         }
         else
         {
            this.parachute = BonusCache.getParachute();
         }
         if(BonusCache.isCordsCacheEmpty())
         {
            this.cords = new Cords(Parachute.RADIUS,BonusConst.BONUS_HALF_SIZE,Parachute.NUM_STRAPS,this.data.cordsMaterial);
         }
         else
         {
            this.cords = BonusCache.getCords();
         }
         this.cords.init(this.bonusMesh,this.parachute);
      }
      
      private function initBonusMesh() : void
      {
         if(BonusCache.isBonusMeshCacheEmpty(this.bonusObjectId))
         {
            this.bonusMesh = new BonusMesh(this.bonusObjectId,this.data.boxMesh);
         }
         else
         {
            this.bonusMesh = BonusMesh(BonusCache.getBonusMesh(this.bonusObjectId));
         }
         this.bonusMesh.init();
      }
      
      private function addAllToScene() : void
      {
         this.parachute.addToScene();
         this.bonusMesh.addToScene();
         this.cords.addToScene();
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         this.currentController.runBeforePhysicsUpdate(param1);
      }
      
      private function deactivateRendererAndPhysicsController() : void
      {
         if(this.controllersActive)
         {
            this.controllersActive = false;
            this.battleService.§try var final§().§2"K§(this);
            this.battleService.§try var final§().§do for import§(this);
            this.battleService.§catch include§().§use const else§(this,0);
         }
      }
      
      private function detachParachute() : void
      {
         var _loc1_:ParachuteDetachAnimation = null;
         if(this.parachute != null)
         {
            _loc1_ = ParachuteDetachAnimation(this.battleService.§#!o§().getObject(ParachuteDetachAnimation));
            _loc1_.start(this.parachute,this.cords,this.fallSpeed / 2);
            this.parachute = null;
            this.cords = null;
         }
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.currentController.interpolatePhysicsState(param1);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.currentController.render();
         this.bonusMesh.readPosition(origin);
         this.lightSource.intensity = this.globalLightIntensity * this.data.lightIntensity;
         this.lightSource.x = origin.x;
         this.lightSource.y = origin.y;
         this.lightSource.z = origin.z;
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.bonusMesh.setAlpha(param1);
         if(this.parachute != null)
         {
            this.parachute.setAlpha(param1);
            this.cords.setAlpha(param1);
         }
      }
      
      public function onTriggerActivated() : void
      {
         this.trigger.disable();
         this.onTankCollision.dispatch(this);
      }
      
      public function onTouchGround() : void
      {
         this.detachParachute();
         if(!this.runNextController())
         {
            this.stopMovement();
         }
      }
      
      public function onLandingComplete() : void
      {
         this.stopMovement();
      }
      
      private function stopMovement() : void
      {
         this.deactivateRendererAndPhysicsController();
      }
      
      public function getBonusMesh() : BonusMesh
      {
         return this.bonusMesh;
      }
      
      private function runNextController() : Boolean
      {
         this.currentController = this.controllers.pop();
         if(this.currentController == null)
         {
            return false;
         }
         this.currentController.start();
         return true;
      }
      
      public function getParachute() : Parachute
      {
         return this.parachute;
      }
      
      public function getCords() : Cords
      {
         return this.cords;
      }
      
      public function getTrigger() : BonusTrigger
      {
         return this.trigger;
      }
      
      public function enableTrigger() : void
      {
         this.trigger.enable();
      }
      
      private function removeLight() : void
      {
         var _loc1_:§finally for dynamic§ = null;
         if(this.lightSource.parent != null)
         {
            this.battleService.§catch include§().removeObject(this.lightSource);
            _loc1_ = §finally for dynamic§(this.battleService.§#!o§().getObject(§finally for dynamic§));
            _loc1_.init(this.lightSource,FADEOUT_TIME,FADEOUT_CURVE);
            this.battleService.§catch include§().§override for native§(_loc1_);
         }
      }
   }
}

