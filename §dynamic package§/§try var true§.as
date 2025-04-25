package §dynamic package§
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.ShapeContact;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.§#!8§;
   import alternativa.tanks.battle.objects.tank.Tank;
   
   public class §try var true§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const §?u§:Number = 12.5;
      
      private static const contacts:Vector.<ShapeContact> = new Vector.<ShapeContact>();
      
      private var tank:Tank;
      
      private var §1f§:CollisionBox;
      
      private var §<">§:Boolean;
      
      private var §in var include§:Boolean;
      
      private var §extends var null§:Boolean;
      
      public function §try var true§(param1:§6"d§)
      {
         super();
         this.tank = param1.body.tank;
         var _loc2_:Vector3 = this.tank.§5"i§().hs.clone();
         _loc2_.z += §?u§;
         this.§1f§ = new CollisionBox(_loc2_,-1,PhysicsMaterial.DEFAULT_MATERIAL);
         this.§1f§.body = this.tank.§<J§();
      }
      
      public function §get for continue§() : void
      {
         var _loc1_:ShapeContact = null;
         var _loc2_:Number = NaN;
         this.§<">§ = this.§in var include§;
         this.§,!E§();
         var _loc3_:§throw const function§ = battleService.§try var final§().§`"N§();
         _loc3_.§for include§(this.§1f§,contacts);
         var _loc4_:Number = 0;
         for each(_loc1_ in contacts)
         {
            if(_loc1_.shape1 == this.§1f§)
            {
               _loc2_ = _loc1_.normal.dot(Vector3.Z_AXIS);
            }
            else
            {
               _loc2_ = _loc1_.normal.dot(Vector3.DOWN);
            }
            _loc4_ = Math.max(_loc4_,_loc2_);
            _loc1_.dispose();
         }
         this.§extends var null§ = contacts.length > 0;
         contacts.length = 0;
         this.§in var include§ = _loc4_ < §#!8§.§32§;
      }
      
      private function §,!E§() : void
      {
         var _loc1_:CollisionBox = this.tank.§5"i§();
         var _loc2_:Matrix4 = this.§1f§.transform;
         _loc2_.copy(_loc1_.transform);
         _loc2_.m03 -= _loc2_.m02 * §?u§;
         _loc2_.m13 -= _loc2_.m12 * §?u§;
         _loc2_.m23 -= _loc2_.m22 * §?u§;
         this.§1f§.calculateAABB();
      }
      
      public function §override const final§() : Boolean
      {
         return this.§in var include§;
      }
      
      public function §each var for§() : Boolean
      {
         return this.§in var include§ && !this.§<">§;
      }
      
      public function §use finally§() : Boolean
      {
         return this.§<">§ && !this.§in var include§;
      }
      
      public function §?I§() : Boolean
      {
         return this.§in var include§ && this.§extends var null§;
      }
   }
}

