package alternativa.tanks.battle.objects.tank
{
   import §+!2§.§;!A§;
   import §+!2§.§super for in§;
   import §9"9§.§8"_§;
   import §],§.§while var const§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.physics.BodyState;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.PhysicsScene;
   import alternativa.physics.PhysicsUtils;
   import alternativa.physics.collision.BodyCollisionFilter;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.§if if§;
   import alternativa.tanks.battle.objects.tank.tankskin.§5"S§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.battle.objects.tank.tankskin.§null for use§;
   import alternativa.tanks.battle.§return final§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.battle.§switch set use§;
   import alternativa.tanks.battle.§true const§;
   import alternativa.tanks.camera.§use set set§;
   import alternativa.tanks.display.usertitle.UserTitle;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.weapon.§'!=§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§super throw§;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.utils.DataUnitValidator;
   import alternativa.tanks.utils.DataValidationErrorEvent;
   import alternativa.tanks.utils.MathUtils;
   import §const set false§.§+"3§;
   import §const set false§.§class var null§;
   import §const set false§.§get for return§;
   import §const set false§.§var var implements§;
   import §default var get§.§3!O§;
   import §dynamic package§.§6"d§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§each for package§;
   import flash.display.BitmapData;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import §null var else§.§case for false§;
   import §null var else§.§try var function§;
   import §null var else§.§var const import§;
   
   public class Tank implements §switch set use§, §if if§, §return final§, §set while§, BodyCollisionFilter, §use set set§, §9"L§
   {
      public static var §2!a§:TargetingModeService;
      
      private static const §static for break§:int = 1;
      
      private static const BACK:int = 2;
      
      private static const LEFT:int = 4;
      
      private static const RIGHT:int = 8;
      
      private static const §set var finally§:int = 16;
      
      private static const §super override§:int = 32;
      
      private static const CENTER_TURRET:int = 64;
      
      private static const §8!#§:int = 128;
      
      private static const §extends each§:Matrix4 = new Matrix4();
      
      private static const §,E§:Matrix4 = new Matrix4();
      
      private static const §8"b§:Vector3 = new Vector3();
      
      private static const §<z§:Vector3 = new Vector3();
      
      private static const §case const catch§:Vector3 = new Vector3();
      
      private static const §if set throw§:Vector3 = new Vector3();
      
      private static const §default const case§:Vector3 = new Vector3();
      
      private static const §continue for class§:Vector3 = new Vector3();
      
      private static const §2!5§:RayHit = new RayHit();
      
      private static const §&"9§:Vector3 = new Vector3();
      
      private static const §default var set§:Vector3 = new Vector3();
      
      private static const PI:Number = Math.PI;
      
      private static const PI2:Number = 2 * Math.PI;
      
      private static var _m:Matrix3 = new Matrix3();
      
      private static var §8!m§:Quaternion = new Quaternion();
      
      private static var §function const do§:Vector3 = new Vector3();
      
      private static var §`9§:Vector3 = new Vector3();
      
      private static var §implements set set§:Vector.<Number> = Vector.<Number>([0,0,0]);
      
      private static var §switch var do§:Vector.<Number> = Vector.<Number>([0,0,0]);
      
      public var tankData:§7!n§;
      
      private var §4"Q§:§'"Y§;
      
      private var battleEventDispatcher:BattleEventDispatcher;
      
      public var §function var while§:Vector3 = new Vector3();
      
      public var §include for else§:Boolean;
      
      public var §^B§:CollisionBox;
      
      public var §+!F§:Vector.<Vector3>;
      
      private const §const var else§:Number = 5;
      
      private var § "=§:Vector3 = new Vector3();
      
      private var skin:§8!x§;
      
      public var title:UserTitle;
      
      public var §5!<§:§case for false§;
      
      public var §`M§:§case for false§;
      
      public var prevState:§extends var dynamic§;
      
      private var §#"@§:§while var const§;
      
      public var §super var final§:Number = 0;
      
      public var §<!M§:Number = 0;
      
      private var §while for while§:Boolean;
      
      private var §finally for catch§:Boolean;
      
      private var §null const get§:Dictionary = new Dictionary();
      
      private var container:§3!O§;
      
      private var battleService:§;0§;
      
      public var local:Boolean;
      
      private var §set for use§:Boolean;
      
      private var §const for case§:Number;
      
      private var §;V§:int;
      
      private var §return var do§:§@">§;
      
      private var §include var false§:Number;
      
      public var state:§extends var dynamic§;
      
      private var § !7§:§include for var§;
      
      private var §9J§:§include for var§;
      
      private var §continue var break§:§include set break§;
      
      public var §@"0§:Vector3;
      
      public var §,m§:Quaternion;
      
      private var §`@§:Number = 0;
      
      public var §%!V§:Vector3 = new Vector3();
      
      private const §break with§:Number = 0;
      
      private var §for const if§:§8"_§;
      
      private var §8"S§:Boolean;
      
      public var §do const case§:int = 0;
      
      public var §&!Y§:int = 0;
      
      private var §5!G§:§break package§;
      
      public var §super class§:§try var function§;
      
      private var §case set else§:§null for use§;
      
      private var §2!;§:§6"d§;
      
      private var § !8§:§var const import§;
      
      private var §continue extends§:BodyState;
      
      public var §try const import§:Vector.<CollisionBox>;
      
      private var §continue for each§:§'"Y§;
      
      private var §&"?§:§'"Y§;
      
      public var §'C§:int;
      
      private var §use const each§:Number;
      
      private var weapon:§extends for finally§;
      
      private var §&>§:§+"3§;
      
      private var §#e§:§class var null§;
      
      private var §;o§:Number = 0;
      
      private var inBattle:Boolean;
      
      private var maxHealth:int;
      
      public function Tank(param1:§8!x§, param2:§+"3§, param3:§8"_§, param4:§class var null§, param5:§extends for finally§, param6:UserTitle, param7:Number, param8:Boolean, param9:BattleEventDispatcher, param10:int, param11:Number = 50, param12:Number = 25, param13:Number = 1250)
      {
         super();
         this.§&>§ = param2;
         this.§#e§ = param4;
         this.§continue for each§ = new §package const finally§(100,1000,0,0);
         this.§&"?§ = new §package const finally§(0.3,10,0,0);
         this.skin = param1;
         this.battleEventDispatcher = param9;
         this.§for const if§ = param3;
         this.local = param8;
         this.maxHealth = param10;
         this.§try const import§ = new Vector.<CollisionBox>();
         this.§@"0§ = new Vector3();
         this.§,m§ = new Quaternion();
         this.§continue extends§ = new BodyState();
         this.§ !8§ = new §var const import§();
         this.§ !8§.dampingCoeff = param13;
         param3.§each for function§(this);
         this.title = param6;
         var _loc14_:Vector3 = this.§default package§(param1.§8+§().mesh);
         var _loc15_:Vector3 = new Vector3(_loc14_.x / 2,_loc14_.y / 2,_loc14_.z / 2);
         this.§use const each§ = _loc15_.y;
         this.§get function§(_loc14_);
         this.§#"=§(param7,_loc15_);
         this.§import const override§(_loc15_);
         this.§extends var implements§(_loc15_);
         this.§var false§(param1);
         this.§super class§ = new §try var function§(this.§2!;§.body,this.§ !8§,this.§continue for each§,_loc14_);
         this.§case set else§ = new §null for use§(this.§super class§,param1,this.§continue for each§);
         this.§return var do§ = new §@">§(this.§2!;§.body,param9);
         this.weapon = param5;
         param5.init(this);
         §2!a§ = TargetingModeService(OSGi.getInstance().getService(TargetingModeService));
         this.§2!;§.§get var finally§();
      }
      
      private static function §switch const super§(param1:BodyState, param2:§finally for false§, param3:§finally for false§, param4:§finally for false§, param5:§finally for false§) : void
      {
         §#",§.§use for get§(param1.position,param2);
         var _loc6_:Quaternion = param1.orientation;
         _loc6_.getEulerAngles(§`9§);
         param3.x = §`9§.x;
         param3.y = §`9§.y;
         param3.z = §`9§.z;
         §#",§.§use for get§(param1.velocity,param4);
         §#",§.§use for get§(param1.angularVelocity,param5);
      }
      
      public function §#f§(param1:Vector3) : Boolean
      {
         var _loc2_:int = int(this.§+!F§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §continue for class§.copy(this.§+!F§[_loc3_]);
            if(this.§override const function§(§continue for class§,param1))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      private function §override const function§(param1:Vector3, param2:Vector3) : Boolean
      {
         var _loc3_:Body = this.§2!;§.body;
         param1.transform3(_loc3_.baseMatrix);
         var _loc4_:BodyState = _loc3_.state;
         param1.add(_loc4_.position);
         §&"9§.copy(param2);
         §default var set§.diff(param1,§&"9§);
         var _loc5_:PhysicsScene = _loc3_.scene;
         if(_loc5_ == null)
         {
            return false;
         }
         var _loc6_:CollisionDetector = _loc5_.collisionDetector;
         return !_loc6_.raycastStatic(§&"9§,§default var set§,§]"P§.§return set for§,1,null,§2!5§);
      }
      
      public function §use set dynamic§() : Vector3
      {
         return this.§%!V§;
      }
      
      public function §class const finally§() : Boolean
      {
         return this.§2!;§.§switch finally§;
      }
      
      public function §import set while§() : Boolean
      {
         return this.§2!;§.§class var var§();
      }
      
      public function §default var continue§() : Vector.<Body>
      {
         return this.§2!;§.§ 7§;
      }
      
      public function §break var final§() : Number
      {
         return this.§&>§.§9G§();
      }
      
      public function §='§(param1:Vector3D) : void
      {
         this.title.readPosition(param1);
      }
      
      public function §1_§() : Number
      {
         return this.§use const each§;
      }
      
      public function §default var native§() : int
      {
         return this.maxHealth;
      }
      
      public function §4r§(param1:§while var const§) : Boolean
      {
         return this.teamType == param1 && param1 != §while var const§.NONE;
      }
      
      public function §&"N§() : ClientObject
      {
         return this.tankData.user;
      }
      
      public function §+"9§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:int = -11;
         var _loc4_:int = this.§^"$§();
         var _loc5_:Object3D = this.skin.§0[§();
         if(_loc4_ == §get for return§.TURRET)
         {
            §,E§.setMatrix(_loc5_.x,_loc5_.y,_loc5_.z,_loc5_.rotationX,_loc5_.rotationY,_loc5_.rotationZ);
         }
         else if(_loc4_ == §get for return§.§1"c§)
         {
            §,E§.setMatrix(_loc5_.x,_loc5_.y,_loc5_.z,_loc5_.rotationX,_loc5_.rotationY,this.§&>§.§-!>§());
         }
         else
         {
            §,E§.setMatrix(_loc5_.x,_loc5_.y,_loc5_.z,0,0,0);
         }
         var _loc6_:Mesh = this.skin.§+S§();
         §extends each§.setRotationMatrix(_loc6_.rotationX,_loc6_.rotationY,_loc6_.rotationZ);
         var _loc7_:Vector3 = §#",§.§for const finally§;
         §extends each§.getUp(_loc7_);
         §,E§.getPosition(param1);
         param1.addScaled(_loc3_,_loc7_);
         param2.reset(§,E§.m01,§,E§.m11,§,E§.m21);
         this.prevState = this.state;
      }
      
      private function §^"$§() : int
      {
         switch(§2!a§.§-!!§())
         {
            case §var var implements§.§7!'§:
               return §get for return§.TURRET;
            case §var var implements§.§]!+§:
               return this.§&>§.§return for return§() && this.prevState != §extends var dynamic§.DEAD ? int(§get for return§.§1"c§) : int(§get for return§.TURRET);
            default:
               return §get for return§.TURRET;
         }
      }
      
      public function §>?§() : Number
      {
         return this.§const for case§;
      }
      
      public function disable() : void
      {
         this.title.hideIndicators();
      }
      
      public function §class set set§(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         if(this.tankData.health > 0)
         {
            this.§2!;§.body.addWorldForceScaled(param1,param2,param3);
            this.§2!;§.§for for if§.addScaled(param3,param2);
            this.§90§(param1);
         }
      }
      
      public function §90§(param1:Vector3) : void
      {
         this.§function var while§.copy(param1);
         §#",§.globalToLocal(this.§<J§(),this.§function var while§);
         this.§include for else§ = true;
      }
      
      public function §7+§(param1:int = 7) : void
      {
         var _loc2_:§true const§ = this.battleService.§catch include§().§implements var else§();
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_.§dynamic try§(this,0,0.9);
            _loc3_++;
         }
      }
      
      public function §@"5§(param1:int, param2:int, param3:Boolean) : void
      {
         this.§super class§.§>"G§ = param1;
         this.§super class§.§;l§ = param2;
         this.§super class§.§class class§ = param3;
         if(!this.§super class§.§%2§)
         {
            if(param1 != 0)
            {
               this.§for const if§.§'6§();
            }
            else if(param2 != 0)
            {
               this.§for const if§.§]!P§();
            }
            else
            {
               this.§for const if§.§]!y§();
            }
         }
      }
      
      public function §5"i§() : CollisionBox
      {
         return this.§2!;§.§implements for function§;
      }
      
      private function §var false§(param1:§8!x§) : void
      {
         var _loc2_:§;!A§ = null;
         var _loc3_:CollisionBox = null;
         var _loc4_:Vector.<§;!A§> = param1.§while var break§();
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = this.§<"d§(_loc2_.§<!!§());
            this.§try const import§.push(_loc3_);
            this.§2!;§.body.addCollisionShape(_loc3_,new Matrix4());
         }
         this.§in for dynamic§(0);
      }
      
      private function §<"d§(param1:Vector3) : CollisionBox
      {
         return new CollisionBox(param1,0,PhysicsMaterial.DEFAULT_MATERIAL);
      }
      
      private function §extends var implements§(param1:Vector3) : void
      {
         var _loc2_:Number = param1.x;
         var _loc3_:Number = param1.y;
         this.§+!F§ = Vector.<Vector3>([new Vector3(-_loc2_,_loc3_,0),new Vector3(_loc2_,_loc3_,0),new Vector3(-_loc2_,0,0),new Vector3(_loc2_,0,0),new Vector3(-_loc2_,-_loc3_,0),new Vector3(_loc2_,-_loc3_,0)]);
      }
      
      private function §import const override§(param1:Vector3) : void
      {
         var _loc2_:Number = 2 * param1.z - (this.§ !8§.§native const implements§ - §#!8§.§const var else§);
         §^"&§.§4T§(param1,_loc2_,this.§2!;§);
         §^"&§.§%!#§(param1,_loc2_,this.§2!;§);
         this.§false include§(param1,_loc2_);
      }
      
      public function §1"f§(param1:§'!L§, param2:int = 0) : void
      {
         §'!=§.§false each§(this.skin.§0"9§(),this.skin.§super do§().§9!M§[param2],param1);
      }
      
      public function §;!n§(param1:§super throw§, param2:int = 0) : void
      {
         §'!=§.§[!2§(this.skin.§0"9§(),this.skin.§super do§().§9!M§[param2],param1);
      }
      
      public function §include for do§(param1:§+"3§) : void
      {
         this.§&>§ = param1;
      }
      
      public function §-!y§() : §+"3§
      {
         return this.§&>§;
      }
      
      private function §#"=§(param1:Number, param2:Vector3) : void
      {
         var _loc3_:Body = new Body(param1,Matrix3.IDENTITY,0);
         PhysicsUtils.setBoxInvInertia(param1,param2,_loc3_.invInertia);
         _loc3_.tank = this;
         this.§2!;§ = new §6"d§(_loc3_);
      }
      
      private function §get function§(param1:Vector3) : void
      {
         var _loc2_:Mesh = this.skin.§+S§();
         _loc2_.calculateBounds();
         this.§%!V§.x = -0.5 * (_loc2_.boundMinX + _loc2_.boundMaxX);
         this.§%!V§.y = -0.5 * (_loc2_.boundMinY + _loc2_.boundMaxY);
         this.§%!V§.z = -0.5 * param1.z - this.§ !8§.§native const implements§ + 10;
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:Number = param2 * 0.001;
         this.§ !7§.update(_loc3_);
         this.skin.§native for throw§(this.§`@§);
         this.skin.§=",§(this.§;o§);
         this.§case set else§.§in var for§(_loc3_);
         var _loc4_:Object3D = this.skin.§0[§();
         §`9§.x = _loc4_.x;
         §`9§.y = _loc4_.y;
         §`9§.z = _loc4_.z;
         this.title.setWeaponStatus(100 * this.weapon.getStatus());
         this.title.update(§`9§);
         var _loc5_:§5"S§ = this.skin.§8+§();
         if(_loc5_.hasIncorrectData())
         {
            this.battleEventDispatcher.§if throw§(new DataValidationErrorEvent(_loc5_.getType()));
         }
         var _loc6_:§super for in§ = this.skin.§super do§();
         if(_loc6_.hasIncorrectData())
         {
            this.battleEventDispatcher.§if throw§(new DataValidationErrorEvent(_loc6_.getType()));
         }
         if(this.§#e§ != null && this.state != §extends var dynamic§.DEAD)
         {
            this.§const for case§ = this.§8i§();
         }
      }
      
      public function §4!§() : DataUnitValidator
      {
         if(this.§5!G§ == null)
         {
            this.§5!G§ = new §break package§(this.§2!;§.body.collisionShapes);
         }
         return this.§5!G§;
      }
      
      public function §package set catch§() : Number
      {
         return this.§include var false§;
      }
      
      public function §in const var§() : void
      {
         var _loc1_:§get var throw§ = null;
         var _loc2_:§,6§ = null;
         if(this.battleService != null)
         {
            this.inBattle = false;
            this.weapon.deactivate();
            this.battleService.§catch include§().§implements var else§().§break var case§(this);
            _loc1_ = this.battleService.§try var final§();
            _loc2_ = this.battleService.§catch include§();
            _loc1_.§finally var package§(this.§2!;§);
            _loc1_.§2"K§(this);
            _loc1_.§case set throw§(this);
            _loc1_.§do for import§(this);
            §each for package§.§[!&§(this.§2!;§.id);
            this.skin.removeFromScene();
            this.title.removeFromContainer();
            _loc2_.§break var case§(this);
            _loc1_.§`b§().§%q§(this.§for const if§);
            this.battleService = null;
         }
      }
      
      private function §8i§() : Number
      {
         this.§,m§.toMatrix3(_m);
         _m.transformVector(Vector3.Z_AXIS,§case const catch§);
         §case const catch§.normalize();
         §`9§.copy(this.§%!V§);
         §`9§.transform3(_m);
         §`9§.add(this.§@"0§);
         §extends each§.setFromMatrix3(_m,§`9§);
         §8"b§.reset(§extends each§.m03,§extends each§.m13,§extends each§.m23);
         §<z§.reset(§extends each§.m01,§extends each§.m11,§extends each§.m21);
         §<z§.normalize();
         §default const case§.copy(Vector3.X_AXIS);
         §if set throw§.copy(Vector3.Y_AXIS);
         §default const case§.projectOnPlane(§case const catch§);
         §if set throw§.projectOnPlane(§case const catch§);
         §default const case§.normalize();
         §if set throw§.normalize();
         var _loc1_:Number = MathUtils.clamp(§if set throw§.dot(§<z§),-1,1);
         var _loc2_:Number = §default const case§.dot(§<z§);
         return Math.acos(_loc1_) * (_loc2_ > 0 ? -1 : 1);
      }
      
      public function §,![§(param1:int = 0) : Vector3
      {
         return this.skin.§super do§().§9!M§[param1];
      }
      
      public function §return const return§() : Vector3
      {
         return this.skin.§super do§().§return get§;
      }
      
      public function §switch set do§(param1:int = 0) : Number
      {
         return Vector3(this.skin.§super do§().§9!M§[param1]).y;
      }
      
      public function §0[§() : Object3D
      {
         return this.skin.§0[§();
      }
      
      public function §+S§() : Mesh
      {
         return this.skin.§+S§();
      }
      
      public function §<M§() : §8!x§
      {
         return this.skin;
      }
      
      public function § !G§() : void
      {
         this.title.show();
      }
      
      public function §implements for case§() : void
      {
         this.title.hide();
      }
      
      public function stopMovement() : void
      {
         this.§for const if§.§]!y§();
      }
      
      public function §super for finally§(param1:Boolean) : void
      {
         this.§super class§.§%2§ = param1;
      }
      
      public function §import for§(param1:Boolean) : void
      {
         this.§for const if§.§catch const in§ = param1;
      }
      
      public function spawn(param1:§while var const§, param2:int) : void
      {
         this.§#"@§ = param1;
         this.§;V§ = param2;
         this.§;o§ = 0;
         this.§continue for each§.reset(this.§continue for each§.§="P§());
         this.§&"?§.reset(this.§&"?§.§="P§());
         this.§2!;§.body.clearAccumulators();
         this.skin.§5a§();
         this.skin.§`k§();
         this.weapon.reset();
         this.§for const if§.§]!y§();
         this.§for const if§.§catch const in§ = true;
         this.§super class§.reset();
         this.§&>§.reset();
         this.§&>§.§1!p§();
         if(this.§#e§ != null)
         {
            this.§#e§.reset();
         }
         this.title.setTeamType(param1);
      }
      
      public function kill() : void
      {
         this.state = §extends var dynamic§.DEAD;
         this.§for const if§.enabled = false;
         this.battleService.§try var final§().§`b§().§%q§(this.§for const if§);
         this.title.hideIndicators();
         this.title.hide();
         if(this.§#e§ != null)
         {
            this.§#e§.reset();
         }
      }
      
      public function §extends switch§() : §class var null§
      {
         return this.§#e§;
      }
      
      public function §native static§(param1:§class var null§) : void
      {
         this.§#e§ = param1;
      }
      
      public function destroy() : void
      {
         this.state = §extends var dynamic§.DEAD;
         this.skin.dispose();
         this.skin = null;
         this.weapon.destroy();
         this.§2!;§.destroy();
         if(this.§5!G§ != null)
         {
            this.§5!G§.destroy();
         }
      }
      
      private function §false include§(param1:Vector3, param2:Number) : void
      {
         var _loc3_:Vector3 = new Vector3(param1.x,param1.y,param2 / 2);
         var _loc4_:Matrix4 = this.§2!;§.§implements for function§.transform;
         this.§include var false§ = _loc3_.length() + Math.abs(_loc4_.m23);
      }
      
      public function §!=§() : §6"d§
      {
         return this.§2!;§;
      }
      
      private function §default package§(param1:Mesh) : Vector3
      {
         return new Vector3(param1.boundMaxX - param1.boundMinX,param1.boundMaxY - param1.boundMinY,param1.boundMaxZ - param1.boundMinZ);
      }
      
      public function setMaxTurnSpeed(param1:Number, param2:Boolean) : void
      {
         if(param2)
         {
            this.§&"?§.reset(param1);
         }
         else
         {
            this.§&"?§.§class const break§(param1);
         }
      }
      
      public function setTemperature(param1:Number) : void
      {
         this.§;o§ = param1;
      }
      
      public function §const for return§() : Number
      {
         return this.§;o§;
      }
      
      public function §,!@§(param1:Number, param2:Boolean) : void
      {
         if(param2)
         {
            this.§continue for each§.reset(param1);
         }
         else
         {
            this.§continue for each§.§class const break§(param1);
         }
      }
      
      public function §9!=§() : int
      {
         return CollisionShape(this.§2!;§.§implements for function§).collisionGroup;
      }
      
      public function §break const include§(param1:int) : void
      {
         var _loc2_:CollisionBox = null;
         this.§2!;§.§implements for function§.collisionGroup = param1;
         for each(_loc2_ in this.§try const import§)
         {
            _loc2_.collisionGroup = param1 & §]"P§.WEAPON;
         }
      }
      
      public function §[1§() : BitmapData
      {
         return this.title.getTexture();
      }
      
      public function rotateTurret(param1:Number) : void
      {
         this.§&>§.rotate(param1);
         this.§in for dynamic§(this.§&>§.§9G§());
         this.§for const if§.§override for case§(this.§&>§.isRotating());
      }
      
      private function §in for dynamic§(param1:Number) : void
      {
         var _loc2_:CollisionBox = null;
         var _loc3_:Matrix4 = null;
         var _loc4_:§;!A§ = null;
         var _loc5_:§5"S§ = this.skin.§8+§();
         var _loc6_:CollisionBox = this.§2!;§.§implements for function§;
         var _loc7_:Matrix4 = _loc6_.localTransform;
         var _loc8_:Vector.<§;!A§> = this.skin.§while var break§();
         var _loc9_:int = 0;
         while(_loc9_ < this.§try const import§.length)
         {
            _loc2_ = this.§try const import§[_loc9_];
            _loc3_ = _loc2_.localTransform;
            _loc3_.setMatrix(_loc5_.§+!v§() - _loc7_.m03 + this.§%!V§.x,_loc5_.§&![§() - _loc7_.m13 + this.§%!V§.y,_loc5_.§#[§() - _loc7_.m23 + this.§%!V§.z,0,0,param1);
            _loc4_ = _loc8_[_loc9_];
            _loc3_.prepend(_loc4_.§="§());
            _loc9_++;
         }
      }
      
      public function §throw set import§() : void
      {
         this.interpolatePhysicsState(1);
         this.§ !7§.update(0);
         this.skin.§native for throw§(this.§`@§);
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§2!;§.body.interpolate(param1,this.§@"0§,this.§,m§);
         this.§,m§.normalize();
         this.§`@§ = this.§&>§.§const set for§(param1);
      }
      
      public function §implements for var§(param1:Vector3, param2:int = 0) : void
      {
         param1.copy(this.skin.§super do§().§9!M§[param2]);
         param1.y = 0;
      }
      
      public function §?!§() : int
      {
         return this.skin.§super do§().§9!M§.length;
      }
      
      public function §case set false§() : void
      {
         this.§set for use§ = true;
      }
      
      public function § "a§() : §case for false§
      {
         return this.§super class§.§5!<§;
      }
      
      public function §^C§() : §case for false§
      {
         return this.§super class§.§`M§;
      }
      
      public function §set set for§() : Boolean
      {
         return this.§ "a§().§switch finally§() || this.§^C§().§switch finally§();
      }
      
      public function §break set false§() : Number
      {
         return this.§<J§().state.velocity.length();
      }
      
      public function §each finally§(param1:§finally for false§, param2:§finally for false§, param3:§finally for false§, param4:§finally for false§) : void
      {
         var _loc5_:Body = this.§2!;§.body;
         var _loc6_:BodyState = _loc5_.state;
         §#",§.§each for throw§(param1,_loc6_.position);
         _loc6_.orientation.setFromEulerAnglesXYZ(param2.x,param2.y,param2.z);
         §#",§.§each for throw§(param3,_loc6_.velocity);
         §#",§.§each for throw§(param4,_loc6_.angularVelocity);
         _loc5_.saveState();
         _loc5_.calcDerivedData();
         this.§return var do§.refresh();
      }
      
      public function §get const include§(param1:Number) : void
      {
         this.§super class§.§get const include§(param1);
      }
      
      public function §include const function§(param1:Number) : void
      {
         this.§super class§.§include const function§(param1);
      }
      
      public function §^"C§(param1:Number) : void
      {
         this.§super class§.§^"C§(param1);
      }
      
      public function setTurnAcceleration(param1:Number) : void
      {
         this.§super class§.setTurnAcceleration(param1);
      }
      
      public function §switch set with§(param1:Number) : void
      {
         this.§super class§.§switch set with§(param1);
      }
      
      public function §`"[§(param1:§finally for false§, param2:§finally for false§, param3:§finally for false§, param4:§finally for false§) : void
      {
         §switch const super§(this.§2!;§.body.state,param1,param2,param3,param4);
      }
      
      public function §,"9§(param1:§finally for false§, param2:§finally for false§, param3:§finally for false§, param4:§finally for false§) : void
      {
         §switch const super§(this.§2!;§.body.prevState,param1,param2,param3,param4);
      }
      
      public function §get var try§() : void
      {
         this.state = §extends var dynamic§.§4O§;
         this.tankData.spawnState = §extends var dynamic§.§4O§;
         this.§break const include§(§]"P§.TANK);
         this.§with const get§(§]"P§.§&H§);
         this.skin.setAlpha(0.5);
         this.§2!;§.body.postCollisionFilter = this;
      }
      
      public function §%!z§() : void
      {
         this.state = §extends var dynamic§.§<"]§;
         this.tankData.spawnState = §extends var dynamic§.§<"]§;
         this.§break const include§(§]"P§.TANK | §]"P§.§>! § | §]"P§.WEAPON);
         this.§with const get§(§]"P§.§>! §);
         this.skin.setAlpha(1);
         this.§2!;§.body.postCollisionFilter = null;
      }
      
      public function considerBodies(param1:Body, param2:Body) : Boolean
      {
         if(param1.postCollisionFilter != null && param2.postCollisionFilter == null)
         {
            ++param1.tank.§'C§;
         }
         else if(param1.postCollisionFilter == null && param2.postCollisionFilter != null)
         {
            ++param2.tank.§'C§;
         }
         return false;
      }
      
      public function §catch continue§(param1:§;0§) : void
      {
         var _loc2_:§get var throw§ = param1.§try var final§();
         var _loc3_:§,6§ = param1.§catch include§();
         if(this.battleService == null)
         {
            this.inBattle = true;
            this.battleService = param1;
            this.§2!;§.id = §each for package§.§6!n§();
            _loc2_ = param1.§try var final§();
            _loc2_.§class for class§(this.§2!;§);
            _loc2_.§static native§(this);
            _loc2_.§1"N§(this);
            _loc2_.§9"F§(this);
            this.skin.addToScene();
            this.title.addToContainer();
            _loc3_ = param1.§catch include§();
            _loc3_.§break const super§(this);
            _loc2_.§`b§().§return const null§(this.§for const if§);
            this.§ !7§.reset();
            _loc3_.§implements var else§().§break const super§(this);
         }
      }
      
      public function §3<§(param1:Number) : void
      {
         this.§"Y§();
         this.§return var do§.refresh();
         this.§&>§.§@!v§(this.§<J§());
      }
      
      private function §"Y§() : void
      {
         var _loc1_:Body = this.§2!;§.body;
         var _loc2_:BodyState = _loc1_.state;
         if(!_loc2_.isValid())
         {
            _loc2_.copy(this.§continue extends§);
            _loc1_.saveState();
         }
      }
      
      public function §with const get§(param1:int) : void
      {
         this.§super class§.§with const get§(param1);
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         this.§'C§ = 0;
         var _loc2_:Number = this.§continue for each§.update(param1);
         var _loc3_:Number = this.§&"?§.update(param1);
         this.§2!;§.body.setMaxSpeedXY(_loc2_);
         this.§super class§.applyForces(_loc2_,_loc3_,param1);
         this.§2!;§.body.slipperyMode = !this.§set set for§() && this.§2!;§.§override const final§();
         this.rotateTurret(param1);
         this.§do set dynamic§();
      }
      
      private function §do set dynamic§() : void
      {
         this.§continue extends§.copy(this.§2!;§.body.state);
         this.§return var do§.validate();
      }
      
      public function §with case§(param1:§include for var§) : void
      {
         this.§ !7§ = param1;
      }
      
      public function get teamType() : §while var const§
      {
         return this.§#"@§;
      }
      
      public function get incarnation() : int
      {
         return this.§;V§;
      }
      
      public function §<J§() : Body
      {
         return this.§2!;§.body;
      }
      
      public function isInBattle() : Boolean
      {
         return this.inBattle;
      }
      
      public function §each var for§() : Boolean
      {
         return this.§2!;§.§each var for§();
      }
      
      public function §use finally§() : Boolean
      {
         return this.§2!;§.§use finally§();
      }
      
      public function §?I§() : Boolean
      {
         return this.§2!;§.§?I§();
      }
   }
}

