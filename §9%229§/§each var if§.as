package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §each var if§ extends §super for static§ implements §continue var with§
   {
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §@_§:Vector3 = new Vector3();
      
      private var turret:Object3D;
      
      private var §each for class§:Vector3 = new Vector3();
      
      public function §each var if§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:Number = 0) : void
      {
         this.turret = param1;
         this.§each for class§.copy(param2);
         this.§each for class§.y += param3;
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §8!K§.transformVector(this.§each for class§,§@_§);
         param1.x = §@_§.x;
         param1.y = §@_§.y;
         param1.z = §@_§.z;
      }
      
      public function destroy() : void
      {
         this.turret = null;
      }
   }
}

