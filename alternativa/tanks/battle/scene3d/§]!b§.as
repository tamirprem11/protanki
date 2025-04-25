package alternativa.tanks.battle.scene3d
{
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import §dynamic package§.§]"P§;
   import flash.geom.Vector3D;
   
   public class §]!b§
   {
      private static const §6"G§:Number = 85 * Math.PI / 180;
      
      private static const §native for function§:RayHit = new RayHit();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const right:Vector3 = new Vector3();
      
      private static const up:Vector3 = new Vector3();
      
      private static const normal:Vector3 = new Vector3();
      
      private static const §break var function§:Vector.<Vector3> = Vector.<Vector3>([new Vector3(),new Vector3(),new Vector3(),new Vector3(),new Vector3()]);
      
      private static const §'!^§:Vector3D = new Vector3D();
      
      private static const §in var default§:Vector3D = new Vector3D();
      
      private var collisionDetector:CollisionDetector;
      
      public function §]!b§(param1:CollisionDetector)
      {
         super();
         this.collisionDetector = param1;
      }
      
      public function createDecal(param1:Vector3, param2:Vector3, param3:Number, param4:TextureMaterial, param5:KDContainer, param6:§switch null§) : Decal
      {
         var _loc7_:Vector3 = null;
         var _loc8_:Number = NaN;
         direction.diff(param1,param2);
         var _loc9_:Number = direction.length() + 200;
         direction.normalize();
         right.cross2(direction,Vector3.Z_AXIS).normalize();
         up.cross2(right,direction);
         Vector3(§break var function§[4]).copy(param2);
         Vector3(§break var function§[0]).copy(param2).addScaled(50,right);
         Vector3(§break var function§[1]).copy(param2).addScaled(50,up);
         Vector3(§break var function§[2]).copy(param2).addScaled(-50,right);
         Vector3(§break var function§[3]).copy(param2).addScaled(-50,up);
         normal.reset(0,0,0);
         for each(_loc7_ in §break var function§)
         {
            if(this.collisionDetector.raycastStatic(_loc7_,direction,§]"P§.§return set for§,_loc9_,null,§native for function§))
            {
               normal.add(§native for function§.normal);
            }
         }
         normal.normalize();
         §#",§.§throw var extends§(param1,§'!^§);
         §#",§.§throw var extends§(normal,§in var default§);
         _loc8_ = this.§[#§(param6);
         return param5.createDecal(§'!^§,§in var default§,param3,_loc8_,§6"G§,300,param4);
      }
      
      private function §[#§(param1:§switch null§) : Number
      {
         switch(param1)
         {
            case §switch null§.§="H§:
               return 0;
            default:
               return Math.random() * 2 * Math.PI;
         }
      }
   }
}

