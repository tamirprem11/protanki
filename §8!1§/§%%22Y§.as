package §8!1§
{
   import §7!v§.§&+§;
   import §9"9§.§%"^§;
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.weapon.shared.§'"g§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §default var get§.§3!O§;
   import §dynamic package§.§]"P§;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   
   public class §%"Y§ extends §super for static§ implements §=!t§
   {
      private static const §package for native§:EncryptedInt = new EncryptedIntImpl(1000);
      
      private static const §if const catch§:int = 20;
      
      private static const §!!x§:Number = 3;
      
      private static const matrix:Matrix3 = new Matrix3();
      
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §#!!§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const §while case§:Vector3 = new Vector3();
      
      private static const §;n§:Vector3 = new Vector3();
      
      private static const §false const native§:Vector3 = new Vector3();
      
      private static const intersection:RayHit = new RayHit();
      
      private var _range:Number;
      
      private var §#!H§:Number;
      
      private var particleSpeed:Number;
      
      private var §-"§:Vector3 = new Vector3();
      
      private var turret:Object3D;
      
      private var sfxData:§9m§;
      
      private var collisionDetector:CollisionDetector;
      
      private var §get var else§:Vector.<§'"g§> = new Vector.<§'"g§>(§if const catch§);
      
      private var §,"A§:Number;
      
      private var §'"B§:Number;
      
      private var time:int;
      
      private var §'r§:int;
      
      private var §-!]§:int;
      
      private var container:§3!O§;
      
      private var dead:Boolean;
      
      private var §return extends§:§`![§;
      
      private var §include const use§:Body;
      
      private var §get override§:Number;
      
      private var §@!O§:Number;
      
      private var §include set package§:Number;
      
      private var §1"Y§:Number;
      
      public function §%"Y§(param1:§default const static§)
      {
         super(param1);
         this.§return extends§ = new §`![§();
      }
      
      public function init(param1:Body, param2:Number, param3:Number, param4:Number, param5:Vector3, param6:Object3D, param7:§9m§, param8:CollisionDetector, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number) : void
      {
         this.§include const use§ = param1;
         this._range = param2;
         this.§#!H§ = Math.tan(0.5 * param3);
         this.particleSpeed = param4;
         this.§-"§.copy(param5);
         this.turret = param6;
         this.sfxData = param7;
         this.collisionDetector = param8;
         this.§get override§ = param11;
         this.§@!O§ = param12;
         this.§include set package§ = param13;
         this.§1"Y§ = param14;
         this.§return extends§.resize(param9,param10);
         this.§,"A§ = 2 * (param12 - param11) / param2;
         this.§'"B§ = 1000 * param2 / (§if const catch§ * param4);
         this.§-!]§ = 0;
         this.time = this.§'r§ = getTimer();
         this.§<!K§(param7);
         this.dead = false;
      }
      
      private function §<!K§(param1:§9m§) : void
      {
         var _loc2_:§&+§ = null;
         var _loc3_:ColorTransform = null;
         this.§return extends§.init(param1.§try var else§);
         if(param1.§-"]§ != null)
         {
            _loc2_ = param1.§-"]§[0];
            _loc3_ = this.§return extends§.colorTransform == null ? new ColorTransform() : this.§return extends§.colorTransform;
            _loc3_.alphaMultiplier = _loc2_.alphaMultiplier;
            _loc3_.alphaOffset = _loc2_.alphaOffset;
            _loc3_.redMultiplier = _loc2_.redMultiplier;
            _loc3_.redOffset = _loc2_.redOffset;
            _loc3_.greenMultiplier = _loc2_.greenMultiplier;
            _loc3_.greenOffset = _loc2_.greenOffset;
            _loc3_.blueMultiplier = _loc2_.blueMultiplier;
            _loc3_.blueOffset = _loc2_.blueOffset;
            this.§return extends§.colorTransform = _loc3_;
         }
         else
         {
            this.§return extends§.colorTransform = null;
         }
      }
      
      public function destroy() : void
      {
         while(this.§-!]§ > 0)
         {
            this.§6"i§(0);
         }
         this.container.removeChild(this.§return extends§);
         this.§return extends§.clear();
         this.container = null;
         this.§include const use§ = null;
         this.turret = null;
         this.sfxData = null;
         this.collisionDetector = null;
         recycle();
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:§'"g§ = null;
         var _loc5_:Vector3 = null;
         var _loc6_:Number = NaN;
         this.§@"]§();
         _loc3_ = param1 / §package for native§.getInt();
         if(this.collisionDetector.raycastStatic(§#!!§,direction,§]"P§.§return set for§,this.§-"§.y + this.§return extends§.length,null,intersection))
         {
            this.§return extends§.visible = false;
         }
         else
         {
            this.§return extends§.visible = true;
            this.§return extends§.update(_loc3_,this.sfxData.§try var else§.fps);
            §%"^§.§true var throw§(this.§return extends§,§false const native§,direction,param2.position);
         }
         if(!this.dead && this.§-!]§ < §if const catch§ && this.time >= this.§'r§)
         {
            this.§'r§ += this.§'"B§;
            this.§4"]§();
         }
         var _loc7_:int = 0;
         while(_loc7_ < this.§-!]§)
         {
            _loc4_ = this.§get var else§[_loc7_];
            §;n§.x = _loc4_.x;
            §;n§.y = _loc4_.y;
            §;n§.z = _loc4_.z;
            if(_loc4_.§import switch§ > this._range || this.collisionDetector.raycastStatic(§;n§,_loc4_.velocity,§]"P§.WEAPON,_loc3_,null,intersection))
            {
               this.§6"i§(_loc7_--);
            }
            else
            {
               _loc5_ = _loc4_.velocity;
               _loc4_.x += _loc5_.x * _loc3_;
               _loc4_.y += _loc5_.y * _loc3_;
               _loc4_.z += _loc5_.z * _loc3_;
               _loc4_.§import switch§ += this.particleSpeed * _loc3_;
               _loc4_.rotation += §!!x§ * _loc3_ * _loc4_.§`!§;
               _loc4_.§set const const§(_loc4_.§^!o§);
               _loc4_.§^!o§ += this.sfxData.§&c§.fps * _loc3_;
               _loc6_ = this.§get override§ + this.§,"A§ * _loc4_.§import switch§;
               if(_loc6_ > this.§@!O§)
               {
                  _loc6_ = this.§@!O§;
               }
               _loc4_.width = _loc6_;
               _loc4_.height = _loc6_;
               _loc4_.§null for while§(this._range,this.sfxData.§&!#§);
            }
            _loc7_++;
         }
         this.time += param1;
         return !this.dead || this.§-!]§ > 0;
      }
      
      public function kill() : void
      {
         if(!this.dead)
         {
            this.dead = true;
            this.container.removeChild(this.§return extends§);
         }
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§return extends§);
      }
      
      private function §@"]§() : void
      {
         var _loc1_:Number = NaN;
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §while case§.x = §8!K§.m00;
         §while case§.y = §8!K§.m10;
         §while case§.z = §8!K§.m20;
         direction.x = §8!K§.m01;
         direction.y = §8!K§.m11;
         direction.z = §8!K§.m21;
         §8!K§.transformVector(this.§-"§,§false const native§);
         _loc1_ = this.§-"§.y;
         §#!!§.x = §false const native§.x - _loc1_ * direction.x;
         §#!!§.y = §false const native§.y - _loc1_ * direction.y;
         §#!!§.z = §false const native§.z - _loc1_ * direction.z;
      }
      
      private function §4"]§() : void
      {
         var _loc1_:Number = this.§include set package§ + Math.random() * this.§1"Y§;
         if(!this.§return extends§.visible && intersection.t < this.§-"§.y + _loc1_)
         {
            return;
         }
         var _loc2_:§'"g§ = §'"g§.§break catch§();
         _loc2_.§-c§(this.sfxData.§&c§);
         _loc2_.rotation = Math.random() * Math.PI * 2;
         _loc2_.§^!o§ = Math.random() * _loc2_.getNumFrames();
         this.§-"%§(direction);
         _loc2_.velocity.x = this.particleSpeed * direction.x;
         _loc2_.velocity.y = this.particleSpeed * direction.y;
         _loc2_.velocity.z = this.particleSpeed * direction.z;
         _loc2_.velocity.add(this.§include const use§.state.velocity);
         _loc2_.§import switch§ = _loc1_;
         _loc2_.x = §false const native§.x + _loc1_ * direction.x;
         _loc2_.y = §false const native§.y + _loc1_ * direction.y;
         _loc2_.z = §false const native§.z + _loc1_ * direction.z;
         _loc2_.§`!§ = Math.random() < 0.5 ? int(1) : int(-1);
         var _loc3_:* = this.§-!]§++;
         this.§get var else§[_loc3_] = _loc2_;
         this.container.addChild(_loc2_);
      }
      
      private function §6"i§(param1:int) : void
      {
         var _loc2_:§'"g§ = this.§get var else§[param1];
         this.§get var else§[param1] = this.§get var else§[--this.§-!]§];
         this.§get var else§[this.§-!]§] = null;
         this.container.removeChild(_loc2_);
         _loc2_.dispose();
      }
      
      private function §-"%§(param1:Vector3) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = 2 * Math.PI * Math.random();
         matrix.fromAxisAngle(param1,_loc3_);
         §while case§.transform3(matrix);
         _loc2_ = this._range * this.§#!H§ * Math.random();
         param1.x = param1.x * this._range + §while case§.x * _loc2_;
         param1.y = param1.y * this._range + §while case§.y * _loc2_;
         param1.z = param1.z * this._range + §while case§.z * _loc2_;
         param1.normalize();
      }
      
      public function get §import var false§() : Vector.<§'"g§>
      {
         return this.§get var else§;
      }
      
      public function get §get var package§() : int
      {
         return this.§-!]§;
      }
      
      public function get range() : Number
      {
         return this._range;
      }
   }
}

