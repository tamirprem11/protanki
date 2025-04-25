package alternativa.tanks.battle.objects.tank.tankskin
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.objects.tank.§'"Y§;
   import alternativa.tanks.utils.MathUtils;
   import §null var else§.§`"f§;
   import §null var else§.§case for false§;
   import §null var else§.§try var function§;
   
   public class §null for use§
   {
      private static const §'7§:Number = 100;
      
      private static const §class for do§:Vector3 = new Vector3();
      
      private var §super class§:§try var function§;
      
      private var skin:§8!x§;
      
      private var §continue for each§:§'"Y§;
      
      public function §null for use§(param1:§try var function§, param2:§8!x§, param3:§'"Y§)
      {
         super();
         this.§super class§ = param1;
         this.skin = param2;
         this.§continue for each§ = param3;
      }
      
      public function §in var for§(param1:Number) : void
      {
         this.§^;§(param1);
         this.skin.§package var false§(param1 * this.§super class§.§5!<§.§4,§,param1 * this.§super class§.§`M§.§4,§);
      }
      
      private function §^;§(param1:Number) : void
      {
         this.§false final§(this.§super class§.§5!<§,param1);
         this.§false final§(this.§super class§.§`M§,param1);
      }
      
      private function §false final§(param1:§case for false§, param2:Number) : void
      {
         if(this.§break for native§(param1))
         {
            this.§in else§(param1,param2);
         }
         else
         {
            this.§do var class§(param1,param2);
         }
      }
      
      private function §break for native§(param1:§case for false§) : Boolean
      {
         return param1.body.baseMatrix.m22 > 0 && param1.§function set var§ > 0;
      }
      
      private function §in else§(param1:§case for false§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = this.§;"T§(param1);
         if(this.§[!w§(param1,_loc4_))
         {
            param1.§4,§ = _loc4_;
         }
         else
         {
            _loc3_ = this.§import with§(param1) * §'7§;
            param1.§^!0§(_loc3_,this.§super class§.§if else§() * param2);
         }
      }
      
      private function §;"T§(param1:§case for false§) : Number
      {
         var _loc2_:Vector3 = param1.§;7§;
         var _loc3_:§`"f§ = param1.§@"D§[param1.§const const native§ >> 1];
         this.§-!p§(param1.body,_loc3_.§true const else§(),§class for do§);
         var _loc4_:Number = §class for do§.x - _loc2_.x;
         var _loc5_:Number = §class for do§.y - _loc2_.y;
         var _loc6_:Number = §class for do§.z - _loc2_.z;
         var _loc7_:Matrix3 = param1.body.baseMatrix;
         return _loc4_ * _loc7_.m01 + _loc5_ * _loc7_.m11 + _loc6_ * _loc7_.m21;
      }
      
      private function §-!p§(param1:Body, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Vector3 = null;
         var _loc6_:Vector3 = param1.state.position;
         _loc4_ = param2.x - _loc6_.x;
         var _loc7_:Number = param2.y - _loc6_.y;
         var _loc8_:Number = param2.z - _loc6_.z;
         _loc5_ = param1.state.angularVelocity;
         param3.x = _loc5_.y * _loc8_ - _loc5_.z * _loc7_;
         param3.y = _loc5_.z * _loc4_ - _loc5_.x * _loc8_;
         param3.z = _loc5_.x * _loc7_ - _loc5_.y * _loc4_;
         var _loc9_:Vector3 = param1.state.velocity;
         param3.x += _loc9_.x;
         param3.y += _loc9_.y;
         param3.z += _loc9_.z;
      }
      
      private function §[!w§(param1:§case for false§, param2:Number) : Boolean
      {
         var _loc3_:Number = this.§import with§(param1);
         return Math.abs(param2) > 0.8 * §'7§ || _loc3_ == 0 || MathUtils.numberSign(param2,1) * MathUtils.sign(_loc3_) == -1;
      }
      
      private function §import with§(param1:§case for false§) : Number
      {
         var _loc2_:int = this.§super class§.§2!Y§();
         var _loc3_:int = this.§super class§.§in const switch§();
         var _loc4_:Number = 0;
         if(_loc2_ == 0)
         {
            _loc4_ = param1.§super for include§ * _loc3_ * 0.5;
         }
         else if(_loc3_ == 0)
         {
            _loc4_ = _loc2_;
         }
         else
         {
            _loc4_ = _loc2_ * (3 + param1.§super for include§ * _loc3_) / 4;
         }
         return _loc4_;
      }
      
      private function §do var class§(param1:§case for false§, param2:Number) : void
      {
         var _loc3_:Number = this.§import with§(param1);
         param1.§^!0§(_loc3_ * this.§continue for each§.§="P§(),this.§super class§.§if else§() * param2);
      }
   }
}

