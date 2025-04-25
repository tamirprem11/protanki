package alternativa.tanks.models.weapon
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   
   public class §'!=§
   {
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §with for use§:Vector3 = new Vector3();
      
      public function §'!=§()
      {
         super();
      }
      
      public static function §false each§(param1:Object3D, param2:Vector3, param3:§'!L§) : void
      {
         §8!K§.setFromMatrix3D(param1.concatenatedMatrix);
         §8!K§.transformVector(param2,param3.§for const for§);
         §with for use§.x = param2.x;
         §with for use§.z = param2.z;
         §8!K§.transformVector(§with for use§,param3.§#!!§);
         param3.§default var super§.x = §8!K§.m00;
         param3.§default var super§.y = §8!K§.m10;
         param3.§default var super§.z = §8!K§.m20;
         param3.direction.x = §8!K§.m01;
         param3.direction.y = §8!K§.m11;
         param3.direction.z = §8!K§.m21;
      }
      
      public static function §[!2§(param1:Object3D, param2:Vector3, param3:§super throw§) : void
      {
         §8!K§.setMatrix(param1.x,param1.y,param1.z,param1.rotationX,param1.rotationY,param1.rotationZ);
         §8!K§.transformVector(param2,param3.§for const for§);
         param3.direction.x = §8!K§.m01;
         param3.direction.y = §8!K§.m11;
         param3.direction.z = §8!K§.m21;
      }
   }
}

