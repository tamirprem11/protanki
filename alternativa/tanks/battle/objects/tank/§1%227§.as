package alternativa.tanks.battle.objects.tank
{
   import alternativa.math.Matrix3;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.BodyState;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   
   public class §1"7§ implements §include for var§
   {
      private static const position:Vector3 = new Vector3();
      
      private static const §function native§:Matrix3 = new Matrix3();
      
      private static const §`!U§:EncryptedNumber = new EncryptedNumberImpl(Math.PI / 10.4719);
      
      private static const §implements default§:Vector3 = new Vector3();
      
      private const §^";§:Vector3 = new Vector3();
      
      private const §each const const§:Quaternion = new Quaternion();
      
      private var tank:Tank;
      
      public function §1"7§(param1:Tank)
      {
         super();
         this.tank = param1;
      }
      
      private static function §package set if§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         param1 += param2 * param3;
         return param1 + (param4 - param1) * param5;
      }
      
      public function reset() : void
      {
         var _loc1_:BodyState = this.tank.§<J§().prevState;
         this.§^";§.copy(_loc1_.position);
         this.§each const const§.copy(_loc1_.orientation);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Body = this.tank.§<J§();
         var _loc3_:BodyState = _loc2_.prevState;
         var _loc4_:Vector3 = _loc3_.velocity;
         var _loc5_:Vector3 = this.tank.§@"0§;
         var _loc6_:Number = §`!U§.getNumber();
         this.§^";§.x = §package set if§(this.§^";§.x,_loc4_.x,param1,_loc5_.x,_loc6_);
         this.§^";§.y = §package set if§(this.§^";§.y,_loc4_.y,param1,_loc5_.y,_loc6_);
         this.§^";§.z = §package set if§(this.§^";§.z,_loc4_.z,param1,_loc5_.z,_loc6_);
         var _loc7_:Vector3 = _loc3_.angularVelocity;
         this.§each const const§.addScaledVector(_loc7_,param1);
         this.§each const const§.slerp(this.§each const const§,this.tank.§,m§,_loc6_);
         this.§each const const§.getEulerAngles(§implements default§);
         this.§each const const§.toMatrix3(§function native§);
         position.copy(this.tank.§%!V§);
         position.transform3(§function native§);
         position.add(this.§^";§);
         this.tank.§<M§().§false var try§(position,§implements default§);
      }
   }
}

