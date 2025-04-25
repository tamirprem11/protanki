package §null var else§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.objects.tank.§#!8§;
   
   public class §`"f§
   {
      public var collisionGroup:int;
      
      public var §+"W§:Boolean = false;
      
      public var §native for function§:RayHit = new RayHit();
      
      public var §var continue§:Number = 0;
      
      public const §super set null§:Vector3 = new Vector3();
      
      public var speed:Number = 0;
      
      private var body:Body;
      
      private var origin:Vector3 = new Vector3();
      
      private var direction:Vector3 = new Vector3();
      
      private var § !8§:§var const import§;
      
      private var §break for for§:Vector3 = new Vector3();
      
      private var §catch var import§:Vector3 = new Vector3();
      
      private var § 8§:Number = 0;
      
      private var §implements const each§:§'"D§;
      
      public function §`"f§(param1:Body, param2:Vector3, param3:Vector3, param4:§var const import§)
      {
         super();
         this.body = param1;
         this.origin.copy(param2);
         this.direction.copy(param3);
         this.§ !8§ = param4;
         this.§implements const each§ = new §'"D§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.raycast();
         if(this.§+"W§)
         {
            this.§8"#§(param1);
            this.§>!e§();
         }
      }
      
      private function raycast() : void
      {
         var _loc1_:Matrix3 = this.body.baseMatrix;
         this.§catch var import§.x = _loc1_.m00 * this.direction.x + _loc1_.m01 * this.direction.y + _loc1_.m02 * this.direction.z;
         this.§catch var import§.y = _loc1_.m10 * this.direction.x + _loc1_.m11 * this.direction.y + _loc1_.m12 * this.direction.z;
         this.§catch var import§.z = _loc1_.m20 * this.direction.x + _loc1_.m21 * this.direction.y + _loc1_.m22 * this.direction.z;
         var _loc2_:Vector3 = this.body.state.position;
         this.§break for for§.x = _loc1_.m00 * this.origin.x + _loc1_.m01 * this.origin.y + _loc1_.m02 * this.origin.z;
         this.§break for for§.y = _loc1_.m10 * this.origin.x + _loc1_.m11 * this.origin.y + _loc1_.m12 * this.origin.z;
         this.§break for for§.z = _loc1_.m20 * this.origin.x + _loc1_.m21 * this.origin.y + _loc1_.m22 * this.origin.z;
         this.§break for for§.x += _loc2_.x;
         this.§break for for§.y += _loc2_.y;
         this.§break for for§.z += _loc2_.z;
         if(this.§+"W§)
         {
            this.§ 8§ = this.§ !8§.§const set import§ - this.§native for function§.t;
         }
         this.§+"W§ = this.body.scene.collisionDetector.raycast(this.§break for for§,this.§catch var import§,this.collisionGroup,this.§ !8§.§const set import§,this.§implements const each§,this.§native for function§);
         if(this.§+"W§)
         {
            this.§+"W§ = this.§native for function§.normal.z > §#!8§.§32§;
         }
      }
      
      public function §8"#§(param1:Number) : void
      {
         var _loc2_:Number = this.§ !8§.§const set import§ - this.§native for function§.t;
         this.§var continue§ = this.§ !8§.§true continue§ * _loc2_;
         var _loc3_:Number = (_loc2_ - this.§ 8§) / param1;
         this.§var continue§ += _loc3_ * this.§ !8§.dampingCoeff;
         if(this.§var continue§ < 0)
         {
            this.§var continue§ = 0;
         }
      }
      
      private function §>!e§() : void
      {
         var _loc1_:Vector3 = null;
         var _loc2_:Vector3 = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Body = this.§native for function§.shape.body;
         if(_loc8_.tank != null)
         {
            _loc1_ = _loc8_.state.position;
            _loc2_ = _loc8_.state.velocity;
            _loc3_ = _loc8_.state.angularVelocity;
            _loc4_ = this.§native for function§.position;
            _loc5_ = _loc4_.x - _loc1_.x;
            _loc6_ = _loc4_.y - _loc1_.y;
            _loc7_ = _loc4_.z - _loc1_.z;
            this.§super set null§.x = _loc3_.y * _loc7_ - _loc3_.z * _loc6_;
            this.§super set null§.y = _loc3_.z * _loc5_ - _loc3_.x * _loc7_;
            this.§super set null§.z = _loc3_.x * _loc6_ - _loc3_.y * _loc5_;
            this.§super set null§.x += _loc2_.x;
            this.§super set null§.y += _loc2_.y;
            this.§super set null§.z += _loc2_.z;
         }
         else
         {
            this.§super set null§.x = 0;
            this.§super set null§.y = 0;
            this.§super set null§.z = 0;
         }
      }
      
      public function §true const else§() : Vector3
      {
         return this.§break for for§;
      }
      
      public function § !1§() : Vector3
      {
         return this.§catch var import§;
      }
      
      public function §9"1§() : Vector3
      {
         return this.origin;
      }
   }
}

