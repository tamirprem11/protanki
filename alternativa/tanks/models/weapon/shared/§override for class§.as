package alternativa.tanks.models.weapon.shared
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.tanks.battle.BattleService;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   
   public class §override for class§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const §""P§:Number = 6.5;
      
      private static const §function const for§:Vector3 = new Vector3();
      
      private static const §super var§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const axis:Vector3 = new Vector3();
      
      private static const COS_ONE_DEGREE:Number = Math.cos(Math.PI / 180);
      
      private static const collisionBox:CollisionBox = new CollisionBox(new Vector3(1,1,1),§]"P§.§return set for§,PhysicsMaterial.DEFAULT_MATERIAL);
      
      public function §override for class§()
      {
         super();
      }
      
      public static function §[c§(param1:Vector3, param2:Vector3) : Boolean
      {
         §-h§(param1,param2);
         var _loc3_:§throw const function§ = battleService.§try var final§().§`"N§();
         return _loc3_.§>!n§(collisionBox);
      }
      
      private static function §-h§(param1:Vector3, param2:Vector3) : void
      {
         §super var§.diff(param1,param2);
         §super var§.y = §super var§.length() / 2;
         §super var§.x = §""P§;
         §super var§.z = §""P§;
         collisionBox.hs.copy(§super var§);
         §function const for§.sum(param1,param2);
         §function const for§.scale(0.5);
         var _loc3_:Matrix4 = collisionBox.transform;
         _loc3_.toIdentity();
         _loc3_.setPosition(§function const for§);
         direction.diff(param2,param1);
         direction.normalize();
         var _loc4_:Number = direction.dot(Vector3.Y_AXIS);
         if(Math.abs(direction.y) < COS_ONE_DEGREE)
         {
            axis.cross2(Vector3.Y_AXIS,direction);
            axis.normalize();
            _loc3_.fromAxisAngle(axis,Math.acos(_loc4_));
         }
         collisionBox.calculateAABB();
      }
   }
}

