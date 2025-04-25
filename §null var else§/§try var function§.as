package §null var else§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.objects.tank.§#!8§;
   import alternativa.tanks.battle.objects.tank.§'"Y§;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import alternativa.tanks.utils.MathUtils;
   
   public class §try var function§
   {
      private static const §continue const var§:Number = 400;
      
      private static const §include set import§:Vector3 = new Vector3();
      
      private static const §<""§:Vector3 = new Vector3();
      
      private static const §do var for§:Vector3 = new Vector3();
      
      private static const §+!=§:Vector3 = new Vector3();
      
      private static const §in catch§:Vector3 = new Vector3();
      
      private static const _relativeVelocity:Vector3 = new Vector3();
      
      private static const §^!Q§:Vector3 = new Vector3();
      
      private static const §#!B§:Vector3 = new Vector3();
      
      private static const §]!z§:Vector3 = new Vector3();
      
      private var body:Body;
      
      private var § !8§:§var const import§;
      
      private var §continue for each§:§'"Y§;
      
      public var §5!<§:§case for false§;
      
      public var §`M§:§case for false§;
      
      public var §%2§:Boolean;
      
      public var §>"G§:int;
      
      public var §;l§:int;
      
      public var §class class§:Boolean;
      
      private const §break with§:EncryptedNumber = new EncryptedNumberImpl();
      
      private const §class for return§:EncryptedNumber = new EncryptedNumberImpl();
      
      private const §3U§:EncryptedNumber = new EncryptedNumberImpl();
      
      private const §&q§:EncryptedNumber = new EncryptedNumberImpl();
      
      private const §3"9§:EncryptedNumber = new EncryptedNumberImpl();
      
      public function §try var function§(param1:Body, param2:§var const import§, param3:§'"Y§, param4:Vector3)
      {
         super();
         this.body = param1;
         this.§ !8§ = param2;
         this.§continue for each§ = param3;
         this.§do include§(§#!8§.§throw const import§,param4);
      }
      
      private function §do include§(param1:int, param2:Vector3) : void
      {
         var _loc3_:Number = param2.y * 0.8;
         var _loc4_:Number = param2.x - 40;
         this.§5!<§ = new §case for false§(this.body,param1,new Vector3(-0.5 * _loc4_,0,-0.5 * param2.z + §#!8§.§const var else§),_loc3_,this.§ !8§,-1);
         this.§`M§ = new §case for false§(this.body,param1,new Vector3(0.5 * _loc4_,0,-0.5 * param2.z + §#!8§.§const var else§),_loc3_,this.§ !8§,1);
      }
      
      public function §get const include§(param1:Number) : void
      {
         this.§break with§.setNumber(param1);
      }
      
      public function §include const function§(param1:Number) : void
      {
         this.§class for return§.setNumber(param1);
      }
      
      public function §^"C§(param1:Number) : void
      {
         this.§3U§.setNumber(param1);
      }
      
      public function setTurnAcceleration(param1:Number) : void
      {
         this.§&q§.setNumber(param1);
      }
      
      public function §switch set with§(param1:Number) : void
      {
         this.§3"9§.setNumber(param1);
      }
      
      public function §if else§() : Number
      {
         return this.§break with§.getNumber();
      }
      
      public function §2!Y§() : int
      {
         return this.§%2§ ? int(0) : int(this.§>"G§);
      }
      
      public function §in const switch§() : int
      {
         return this.§%2§ ? int(0) : int(this.§;l§);
      }
      
      public function §with const get§(param1:int) : void
      {
         this.§5!<§.each(param1);
         this.§`M§.each(param1);
      }
      
      public function applyForces(param1:Number, param2:Number, param3:Number) : void
      {
         this.§extends const catch§();
         this.§7!!§(param3);
         this.§final for override§(param1,param2,param3);
         this.§with var var§();
      }
      
      private function §extends const catch§() : void
      {
         var _loc1_:Number = this.body.scene.gravity.length() * this.body.mass;
         this.§ !8§.§true continue§ = _loc1_ / (2 * §#!8§.§throw const import§ * (this.§ !8§.§const set import§ - this.§ !8§.§native const implements§));
      }
      
      private function §7!!§(param1:Number) : void
      {
         this.§5!<§.§7!!§(param1);
         this.§`M§.§7!!§(param1);
      }
      
      private function §final for override§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§5!<§.§function set var§ + this.§`M§.§function set var§ > 0)
         {
            this.§=!x§(param1,param2,param3);
         }
      }
      
      private function §=!x§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Vector3 = null;
         var _loc5_:Vector3 = null;
         var _loc6_:Matrix3 = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:int = this.§%2§ ? int(0) : int(this.§>"G§);
         var _loc25_:int = this.§%2§ ? int(0) : int(this.§;l§);
         _loc4_ = this.body.state.velocity;
         _loc5_ = this.body.state.angularVelocity;
         _loc6_ = this.body.baseMatrix;
         §include set import§.x = _loc6_.m00;
         §include set import§.y = _loc6_.m10;
         §include set import§.z = _loc6_.m20;
         §<""§.x = _loc6_.m01;
         §<""§.y = _loc6_.m11;
         §<""§.z = _loc6_.m21;
         §do var for§.x = _loc6_.m02;
         §do var for§.y = _loc6_.m12;
         §do var for§.z = _loc6_.m22;
         _loc7_ = 1;
         var _loc26_:Number = Math.PI / 4;
         var _loc27_:Number = §#!8§.§4!z§;
         if(§do var for§.z < Math.cos(_loc26_))
         {
            if(§do var for§.z < Math.cos(_loc27_))
            {
               _loc7_ = 0;
            }
            else
            {
               _loc7_ = (_loc27_ - Math.acos(§do var for§.z)) / (_loc27_ - _loc26_);
            }
         }
         this.§8"d§(§+!=§,§in catch§);
         _relativeVelocity.x = _loc4_.x - §+!=§.x;
         _relativeVelocity.y = _loc4_.y - §+!=§.y;
         _relativeVelocity.z = _loc4_.z - §+!=§.z;
         §^!Q§.x = _loc5_.x - §in catch§.x;
         §^!Q§.y = _loc5_.y - §in catch§.y;
         §^!Q§.z = _loc5_.z - §in catch§.z;
         var _loc28_:Number = _relativeVelocity.x * §<""§.x + _relativeVelocity.y * §<""§.y + _relativeVelocity.z * §<""§.z;
         var _loc29_:Number = §^!Q§.x * §do var for§.x + §^!Q§.y * §do var for§.y + §^!Q§.z * §do var for§.z;
         var _loc30_:Number = _relativeVelocity.x * §include set import§.x + _relativeVelocity.y * §include set import§.y + _relativeVelocity.z * §include set import§.z;
         var _loc31_:Number = this.§3U§.getNumber() * _loc7_ * param3;
         if(_loc30_ < 0)
         {
            if(_loc31_ > -_loc30_)
            {
               _loc30_ = 0;
            }
            else
            {
               _loc30_ += _loc31_;
            }
         }
         else if(_loc30_ > 0)
         {
            if(_loc31_ > _loc30_)
            {
               _loc30_ = 0;
            }
            else
            {
               _loc30_ -= _loc31_;
            }
         }
         _relativeVelocity.setLengthAlongDirection(§include set import§,_loc30_);
         _loc4_.x = §+!=§.x + _relativeVelocity.x;
         _loc4_.y = §+!=§.y + _relativeVelocity.y;
         _loc4_.z = §+!=§.z + _relativeVelocity.z;
         var _loc32_:int = this.§5!<§.§function set var§;
         var _loc33_:int = this.§`M§.§function set var§;
         var _loc34_:Number = this.§break with§.getNumber();
         var _loc35_:Number = this.§&q§.getNumber();
         if(_loc32_ > 0 || _loc33_ > 0)
         {
            _loc8_ = 0;
            if(_loc24_ == 0)
            {
               _loc8_ = -MathUtils.sign(_loc28_) * _loc34_ * param3;
               if(MathUtils.sign(_loc28_) != MathUtils.sign(_loc28_ + _loc8_))
               {
                  _loc8_ = -_loc28_;
               }
            }
            else
            {
               if(MathUtils.sign(_loc28_) * MathUtils.sign(_loc24_) < 0)
               {
                  _loc34_ = this.§class for return§.getNumber();
               }
               _loc8_ = _loc24_ * _loc34_ * param3;
            }
            _loc9_ = MathUtils.clamp(_loc28_ + _loc8_,-param1,param1);
            _loc10_ = _loc9_ - _loc28_;
            _loc11_ = 1;
            _loc12_ = MathUtils.clamp(1 - Math.abs(_loc28_ / param1),0,1);
            if(_loc12_ < _loc11_ && _loc24_ * MathUtils.sign(_loc28_) > 0)
            {
               _loc10_ *= _loc12_ / _loc11_;
            }
            _loc13_ = _loc10_ / param3;
            if(Math.abs(_loc13_) < §continue const var§ && Math.abs(_loc9_) > 0.5 * this.§continue for each§.§="P§())
            {
               _loc13_ = MathUtils.numberSign(_loc13_,0.1) * §continue const var§;
            }
            _loc14_ = _loc13_ * this.body.mass;
            _loc15_ = _loc32_ + _loc33_;
            _loc16_ = _loc14_ * (_loc15_ + 0.21 * (20 - _loc15_)) / 10;
            _loc17_ = _loc16_ / _loc15_;
            _loc18_ = Math.PI / 4;
            _loc19_ = Math.PI / 3;
            _loc20_ = 0;
            while(_loc20_ < §#!8§.§throw const import§)
            {
               this.§3'§(this.§5!<§.§@"D§[_loc20_],§<""§,_loc17_,_loc19_,_loc18_);
               this.§3'§(this.§`M§.§@"D§[_loc20_],§<""§,_loc17_,_loc19_,_loc18_);
               _loc20_++;
            }
            _loc21_ = 1;
            if(_loc32_ == 0 || _loc33_ == 0)
            {
               _loc21_ = 0.5;
            }
            _loc22_ = 0;
            if(_loc25_ == 0)
            {
               _loc22_ = -MathUtils.sign(_loc29_) * _loc35_ * _loc7_ * param3;
               if(MathUtils.sign(_loc29_) != MathUtils.sign(_loc29_ + _loc22_))
               {
                  _loc22_ = -_loc29_;
               }
            }
            else
            {
               if(this.§throw set var§(_loc25_,_loc29_,_loc24_,this.§class class§))
               {
                  _loc35_ = this.§3"9§.getNumber();
               }
               _loc22_ = _loc25_ * _loc35_ * _loc7_ * param3;
               if(_loc24_ == -1 && this.§class class§)
               {
                  _loc22_ = -_loc22_;
               }
            }
            _loc23_ = MathUtils.clamp(_loc29_ + _loc22_,-param2 * _loc21_,param2 * _loc21_);
            §^!Q§.setLengthAlongDirection(§do var for§,_loc23_);
            _loc5_.x = §in catch§.x + §^!Q§.x;
            _loc5_.y = §in catch§.y + §^!Q§.y;
            _loc5_.z = §in catch§.z + §^!Q§.z;
         }
      }
      
      private function §throw set var§(param1:int, param2:Number, param3:int, param4:Boolean) : Boolean
      {
         var _loc5_:int = param4 && param3 < 0 ? int(-1) : int(1);
         return param1 * param2 * _loc5_ < 0;
      }
      
      private function §8"d§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:§`"f§ = null;
         var _loc5_:int = 0;
         var _loc6_:Vector3 = null;
         _loc3_ = 1 / (this.§5!<§.§function set var§ + this.§`M§.§function set var§);
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         _loc5_ = 0;
         while(_loc5_ < §#!8§.§throw const import§)
         {
            _loc4_ = this.§5!<§.§@"D§[_loc5_];
            if(_loc4_.§+"W§)
            {
               _loc6_ = _loc4_.§native for function§.position;
               _loc7_ += _loc6_.x;
               _loc8_ += _loc6_.y;
               _loc9_ += _loc6_.z;
            }
            _loc4_ = this.§`M§.§@"D§[_loc5_];
            if(_loc4_.§+"W§)
            {
               _loc6_ = _loc4_.§native for function§.position;
               _loc7_ += _loc6_.x;
               _loc8_ += _loc6_.y;
               _loc9_ += _loc6_.z;
            }
            _loc5_++;
         }
         _loc7_ *= _loc3_;
         _loc8_ *= _loc3_;
         _loc9_ *= _loc3_;
         §]!z§.x = _loc7_;
         §]!z§.y = _loc8_;
         §]!z§.z = _loc9_;
         param1.x = 0;
         param1.y = 0;
         param1.z = 0;
         param2.x = 0;
         param2.y = 0;
         param2.z = 0;
         _loc5_ = 0;
         while(_loc5_ < §#!8§.§throw const import§)
         {
            this.§override set super§(this.§5!<§.§@"D§[_loc5_],§]!z§,param1,param2);
            this.§override set super§(this.§`M§.§@"D§[_loc5_],§]!z§,param1,param2);
            _loc5_++;
         }
         param1.x *= _loc3_;
         param1.y *= _loc3_;
         param1.z *= _loc3_;
         param2.x *= _loc3_;
         param2.y *= _loc3_;
         param2.z *= _loc3_;
      }
      
      private function §override set super§(param1:§`"f§, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         var _loc5_:Vector3 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Vector3 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         if(param1.§+"W§)
         {
            param3.x += param1.§super set null§.x;
            param3.y += param1.§super set null§.y;
            param3.z += param1.§super set null§.z;
            _loc5_ = param1.§native for function§.position;
            _loc6_ = _loc5_.x - param2.x;
            _loc7_ = _loc5_.y - param2.y;
            _loc8_ = _loc5_.z - param2.z;
            _loc9_ = _loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_;
            if(_loc9_ > 1)
            {
               _loc10_ = 1 / _loc9_;
               _loc11_ = param1.§super set null§;
               _loc12_ = (_loc7_ * _loc11_.z - _loc8_ * _loc11_.y) * _loc10_;
               _loc13_ = (_loc8_ * _loc11_.x - _loc6_ * _loc11_.z) * _loc10_;
               _loc14_ = (_loc6_ * _loc11_.y - _loc7_ * _loc11_.x) * _loc10_;
               param4.x += _loc12_;
               param4.y += _loc13_;
               param4.z += _loc14_;
            }
         }
      }
      
      private function §3'§(param1:§`"f§, param2:Vector3, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(param1.§+"W§)
         {
            _loc6_ = param2.x;
            _loc7_ = param2.y;
            _loc8_ = param2.z;
            _loc9_ = _loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_;
            if(_loc9_ > 0.00001)
            {
               _loc10_ = Math.acos(param1.§native for function§.normal.z);
               if(_loc10_ < 0)
               {
                  _loc10_ = -_loc10_;
               }
               if(_loc10_ < param4)
               {
                  _loc11_ = param3 / Math.sqrt(_loc9_);
                  if(_loc10_ > param5)
                  {
                     _loc11_ *= (param4 - _loc10_) / (param4 - param5);
                  }
                  §#!B§.x = _loc6_ * _loc11_;
                  §#!B§.y = _loc7_ * _loc11_;
                  §#!B§.z = _loc8_ * _loc11_;
                  this.body.addWorldForceAtLocalPoint(param1.§9"1§(),§#!B§);
               }
            }
         }
      }
      
      private function §with var var§() : void
      {
         var _loc1_:Matrix3 = null;
         var _loc2_:Vector3 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§`M§.§function set var§ >= this.§`M§.§const const native§ >> 1 || this.§5!<§.§function set var§ >= this.§5!<§.§const const native§ >> 1)
         {
            _loc1_ = this.body.baseMatrix;
            _loc2_ = this.body.scene.gravity;
            _loc3_ = _loc2_.x * _loc1_.m02 + _loc2_.y * _loc1_.m12 + _loc2_.z * _loc1_.m22;
            _loc4_ = _loc2_.length();
            _loc5_ = Math.SQRT1_2 * _loc4_;
            if(_loc3_ < -_loc5_ || _loc3_ > _loc5_)
            {
               _loc6_ = (_loc1_.m02 * _loc3_ - _loc2_.x) * this.body.mass;
               _loc7_ = (_loc1_.m12 * _loc3_ - _loc2_.y) * this.body.mass;
               _loc8_ = (_loc1_.m22 * _loc3_ - _loc2_.z) * this.body.mass;
               this.body.addForceXYZ(_loc6_,_loc7_,_loc8_);
            }
         }
      }
      
      public function reset() : void
      {
         this.§%2§ = false;
      }
   }
}

