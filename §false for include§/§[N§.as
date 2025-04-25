package §false for include§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.physics.collision.primitives.CollisionRect;
   import alternativa.physics.collision.primitives.CollisionTriangle;
   
   public class §[N§
   {
      private static const §%a§:PhysicsMaterial = new PhysicsMaterial(0,1);
      
      private static const §include const package§:int = 255;
      
      private static const §super var§:Vector3 = new Vector3();
      
      private static const position:Vector3 = new Vector3();
      
      private static const rotation:Vector3 = new Vector3();
      
      private static const §super native§:Matrix3 = new Matrix3();
      
      public function §[N§()
      {
         super();
      }
      
      public static function parse(param1:XML) : Vector.<CollisionShape>
      {
         var _loc2_:Vector.<CollisionShape> = new Vector.<CollisionShape>();
         §;a§(§""3§(param1),_loc2_);
         §;a§(§finally for each§(param1),_loc2_);
         §;a§(§import const function§(param1),_loc2_);
         return _loc2_;
      }
      
      private static function §;a§(param1:Vector.<CollisionShape>, param2:Vector.<CollisionShape>) : void
      {
         var _loc3_:CollisionShape = null;
         for each(_loc3_ in param1)
         {
            param2.push(_loc3_);
         }
      }
      
      private static function §""3§(param1:XML) : Vector.<CollisionShape>
      {
         var _loc2_:XML = null;
         var _loc3_:CollisionShape = null;
         var _loc4_:Vector.<CollisionShape> = new Vector.<CollisionShape>();
         var _loc5_:XMLList = param1.elements("collision-geometry")[0].elements("collision-plane");
         for each(_loc2_ in _loc5_)
         {
            §super var§.x = 0.5 * Number(_loc2_.width);
            §super var§.y = 0.5 * Number(_loc2_.length);
            §super var§.z = 0;
            _loc3_ = new CollisionRect(§super var§,§include const package§,§%a§);
            §5!6§(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      private static function §finally for each§(param1:XML) : Vector.<CollisionShape>
      {
         var _loc2_:XML = null;
         var _loc3_:CollisionShape = null;
         var _loc4_:Vector.<CollisionShape> = new Vector.<CollisionShape>();
         var _loc5_:XMLList = param1.elements("collision-geometry")[0].elements("collision-box");
         for each(_loc2_ in _loc5_)
         {
            §get var break§(_loc2_.size,§super var§);
            §super var§.scale(0.5);
            _loc3_ = new CollisionBox(§super var§,§include const package§,§%a§);
            §5!6§(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      private static function §import const function§(param1:XML) : Vector.<CollisionShape>
      {
         var _loc2_:XML = null;
         var _loc3_:CollisionShape = null;
         var _loc4_:Vector.<CollisionShape> = new Vector.<CollisionShape>();
         var _loc5_:Vector3 = new Vector3();
         var _loc6_:Vector3 = new Vector3();
         var _loc7_:Vector3 = new Vector3();
         var _loc8_:XMLList = param1.elements("collision-geometry")[0].elements("collision-triangle");
         for each(_loc2_ in _loc8_)
         {
            §get var break§(_loc2_.v0,_loc5_);
            §get var break§(_loc2_.v1,_loc6_);
            §get var break§(_loc2_.v2,_loc7_);
            _loc3_ = new CollisionTriangle(_loc5_,_loc6_,_loc7_,§include const package§,§%a§);
            §5!6§(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      private static function §5!6§(param1:CollisionShape, param2:XML) : void
      {
         §get var break§(param2.position,position);
         §get var break§(param2.rotation,rotation);
         §super native§.setRotationMatrix(rotation.x,rotation.y,rotation.z);
         param1.transform.setFromMatrix3(§super native§,position);
      }
      
      private static function §get var break§(param1:XMLList, param2:Vector3) : void
      {
         var _loc3_:XML = null;
         if(param1.length() > 0)
         {
            _loc3_ = param1[0];
            param2.x = parseFloat(_loc3_.x);
            param2.y = parseFloat(_loc3_.y);
            param2.z = parseFloat(_loc3_.z);
         }
         else
         {
            param2.reset(0,0,0);
         }
      }
   }
}

