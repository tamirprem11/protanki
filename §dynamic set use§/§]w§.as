package §dynamic set use§
{
   import §9"9§.§0"c§;
   import §],§.§while var const§;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.collision.colliders.BoxSphereCollider;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.physics.collision.primitives.CollisionSphere;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§catch const class§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import §dynamic package§.§]"P§;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   
   public class §]w§ extends §case const var§ implements §catch const class§, §set while§
   {
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      private static var pool:§]w§;
      
      private static const §%"P§:int = 1;
      
      private static const §-"7§:int = 2;
      
      private static const §2" §:int = 3;
      
      private static const INITIAL_BLINK_INTERVAL:int = 320;
      
      private static const MIN_BLINK_INTERVAL:int = 22;
      
      private static const BLINK_INTERVAL_DECREMENT:int = 12;
      
      private static const § 3§:Number = 0.2;
      
      private static const §&1§:Number = 10;
      
      private static const §continue const do§:Vector3 = new Vector3();
      
      private static const §use const package§:BoxSphereCollider = new BoxSphereCollider();
      
      public var next:§]w§;
      
      public var prev:§]w§;
      
      public var id:String;
      
      public var ownerId:String;
      
      public var §<e§:CollisionSphere = new CollisionSphere(1,§]"P§.WEAPON,PhysicsMaterial.DEFAULT_MATERIAL);
      
      public var position:Vector3 = new Vector3();
      
      public var §class const super§:Vector3 = new Vector3();
      
      private var callback:§true const return§;
      
      private var teamType:§while var const§;
      
      private var mesh:Mesh;
      
      private var state:§7j§ = §7j§.§else const else§;
      
      private var §with const default§:§override for null§;
      
      private var §="N§:int;
      
      private var §?D§:int;
      
      private var colorTransform:ColorTransform = new ColorTransform();
      
      private const blinker:§0"c§ = new §0"c§(INITIAL_BLINK_INTERVAL,MIN_BLINK_INTERVAL,BLINK_INTERVAL_DECREMENT,§ 3§,1,§&1§);
      
      private var §&"X§:Tank;
      
      private var §&"L§:Boolean;
      
      public function §]w§(param1:Mesh)
      {
         super();
         this.mesh = Mesh(param1.clone());
      }
      
      public static function create(param1:String, param2:String, param3:Number, param4:Mesh, param5:Material, param6:§while var const§, param7:§override for null§, param8:§true const return§) : §]w§
      {
         var _loc9_:§]w§ = null;
         if(pool == null)
         {
            _loc9_ = new §]w§(param4);
         }
         else
         {
            _loc9_ = pool;
            pool = pool.next;
            _loc9_.next = null;
         }
         _loc9_.init(param1,param2,param3,param5,param6,param7,param8);
         return _loc9_;
      }
      
      public function dispose() : void
      {
         this.id = null;
         this.ownerId = null;
         this.§with const default§ = null;
         this.§&"X§ = null;
         this.§&"L§ = false;
         this.prev = null;
         this.next = pool == null ? null : pool;
         pool = this;
      }
      
      public function §5D§() : void
      {
         this.state = §7j§.§]!R§;
         this.§="N§ = getTimer();
         this.§?D§ = §%"P§;
         this.mesh.colorTransform = this.colorTransform;
         this.mesh.alpha = 1;
      }
      
      public function setPosition(param1:Vector3, param2:Vector3) : void
      {
         this.position.copy(param1);
         this.§class const super§.copy(param2);
         this.mesh.x = param1.x;
         this.mesh.y = param1.y;
         this.mesh.z = param1.z;
         §continue const do§.cross2(Vector3.Z_AXIS,param2).normalize();
         var _loc3_:Number = Math.acos(param2.dot(Vector3.Z_AXIS));
         var _loc4_:Matrix3 = new Matrix3();
         _loc4_.fromAxisAngle(§continue const do§,_loc3_);
         _loc4_.getEulerAngles(§continue const do§);
         this.mesh.rotationX = §continue const do§.x;
         this.mesh.rotationY = §continue const do§.y;
         this.mesh.rotationZ = §continue const do§.z;
         var _loc5_:Matrix4 = this.§<e§.transform;
         _loc5_.setPosition(param1);
         this.§<e§.calculateAABB();
      }
      
      public function §for var true§() : void
      {
         §try var final§().§#!,§(this);
         var _loc1_:§,6§ = battleService.§catch include§();
         _loc1_.addObject(this.mesh);
         _loc1_.§@!X§(this,0);
      }
      
      public function §#"O§() : void
      {
         §try var final§().§function continue§(this);
         var _loc1_:§,6§ = battleService.§catch include§();
         _loc1_.§use const else§(this,0);
         _loc1_.removeObject(this.mesh);
      }
      
      public function checkTrigger(param1:Body) : void
      {
         this.§&"X§ = param1.tank;
         if(this.§do for if§(this.§&"X§))
         {
            if(this.§return var if§(this.§&"X§))
            {
               if(!this.§&"L§)
               {
                  this.§&"L§ = true;
                  this.callback.§default break§(this);
               }
            }
            else
            {
               this.§&"L§ = false;
            }
         }
      }
      
      private function §do for if§(param1:Tank) : Boolean
      {
         return this.state == §7j§.§]!R§ && this.ownerId != param1.tankData.userName && !param1.§4r§(this.teamType) && param1.state == §extends var dynamic§.§<"]§;
      }
      
      private function §return var if§(param1:Tank) : Boolean
      {
         var _loc2_:CollisionBox = param1.§5"i§();
         return (_loc2_.collisionGroup & this.§<e§.collisionGroup) != 0 && §use const package§.haveCollision(_loc2_,this.§<e§);
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.state == §7j§.§else const else§)
         {
            this.mesh.alpha = this.blinker.§extends const use§(param1,param2);
         }
         else if(this.state == §7j§.§]!R§)
         {
            if(this.§?D§ != §2" §)
            {
               this.§do var throw§(param1);
            }
            else
            {
               this.updateVisibility();
            }
         }
      }
      
      private function updateVisibility() : void
      {
         if(this.§+"S§())
         {
            this.mesh.visible = true;
         }
         else if(this.§function var with§())
         {
            this.§3"5§(this.§&"X§);
         }
         else
         {
            this.mesh.visible = false;
         }
      }
      
      private function §+"S§() : Boolean
      {
         return battleInfoService.isSpectatorMode() || this.state != §7j§.§]!R§ || this.§function var with§() && (this.ownerId == this.§&"X§.tankData.userName || this.§&"X§.§4r§(this.teamType));
      }
      
      private function §function var with§() : Boolean
      {
         return Boolean(this.§&"X§) && Boolean(this.§&"X§.tankData.userName) && this.§&"X§.tankData.health > 0;
      }
      
      private function §3"5§(param1:Tank) : void
      {
         this.mesh.visible = true;
         §continue const do§.diff(param1.§<J§().state.position,this.position);
         var _loc2_:Number = §continue const do§.length();
         if(_loc2_ > this.§with const default§.§#v§)
         {
            this.mesh.visible = false;
         }
         else if(_loc2_ < this.§with const default§.§break in§)
         {
            this.mesh.alpha = 1;
         }
         else
         {
            this.mesh.alpha = (this.§with const default§.§#v§ - _loc2_) / (this.§with const default§.§#v§ - this.§with const default§.§break in§);
         }
      }
      
      private function init(param1:String, param2:String, param3:Number, param4:Material, param5:§while var const§, param6:§override for null§, param7:§true const return§) : void
      {
         this.id = param1;
         this.ownerId = param2;
         this.§set const break§(param3);
         this.teamType = param5;
         this.§with const default§ = param6;
         this.callback = param7;
         this.mesh.colorTransform = null;
         this.mesh.alpha = 1;
         this.mesh.visible = true;
         this.mesh.setMaterialToAllFaces(param4);
         this.state = §7j§.§else const else§;
         this.§?D§ = §2" §;
         this.§="N§ = getTimer();
         this.blinker.init(this.§="N§);
      }
      
      private function §set const break§(param1:Number) : void
      {
         this.§<e§.r = param1;
         this.§<e§.calculateAABB();
      }
      
      private function §do var throw§(param1:int) : void
      {
         switch(this.§?D§)
         {
            case §%"P§:
               if(param1 < this.§="N§ + this.§with const default§.§while for import§)
               {
                  this.§4f§(this.§with const default§.§#"&§ * (param1 - this.§="N§) / this.§with const default§.§while for import§);
               }
               else
               {
                  this.§4f§(this.§with const default§.§#"&§);
                  this.§="N§ += this.§with const default§.§while for import§ + this.§with const default§.§7"3§;
                  this.§?D§ = §-"7§;
               }
               break;
            case §-"7§:
               if(param1 < this.§="N§)
               {
                  this.§4f§(this.§with const default§.§#"&§ * (this.§="N§ - param1) / this.§with const default§.§7"3§);
               }
               else
               {
                  this.§4f§(0);
                  this.§?D§ = §2" §;
                  this.mesh.colorTransform = null;
               }
         }
      }
      
      private function §4f§(param1:uint) : void
      {
         this.colorTransform.redOffset = param1;
         this.colorTransform.greenOffset = param1;
         this.colorTransform.blueOffset = param1;
         this.mesh.colorTransform = this.colorTransform;
      }
   }
}

