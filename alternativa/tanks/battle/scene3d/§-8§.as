package alternativa.tanks.battle.scene3d
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.ShadowMap;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§&!j§;
   import flash.geom.Vector3D;
   
   public class §-8§
   {
      private static const §in const class§:int = 2048;
      
      private static const §break var switch§:Number = 0.5;
      
      private static const §include for override§:Number = 10000;
      
      private static const §=!$§:Number = 5000;
      
      private static const §3%§:Number = 10000;
      
      private var lightColor:§&!j§;
      
      private var shadowColor:§&!j§;
      
      private var angleX:Number = 0;
      
      private var angleZ:Number = 0;
      
      private var direction:Vector3D = new Vector3D(1,1,1);
      
      private var camera:Camera3D;
      
      public function §-8§(param1:Camera3D)
      {
         super();
         this.camera = param1;
      }
      
      public function §=!W§() : void
      {
         this.camera.shadowMap = new ShadowMap(§in const class§,§=!$§,§3%§,§break var switch§,§include for override§);
      }
      
      public function §set const true§() : void
      {
         if(this.camera.shadowMap != null)
         {
            this.camera.shadowMap.dispose();
            this.camera.shadowMap = null;
         }
      }
      
      public function §3!t§() : void
      {
         this.camera.directionalLight = new DirectionalLight(this.lightColor.§with const final§());
         this.camera.directionalLight.lookAt(this.direction.x,this.direction.y,this.direction.z);
         this.camera.ambientColor = this.shadowColor.§with const final§();
      }
      
      public function §94§() : void
      {
         this.camera.directionalLight = null;
      }
      
      public function setup(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.lightColor = new §&!j§(param1);
         this.shadowColor = new §&!j§(param2);
         this.lightColor.subtract(this.shadowColor);
         this.angleX = param3;
         this.angleZ = param4;
         this.§,5§();
      }
      
      private function §,5§() : void
      {
         var _loc1_:Matrix3 = new Matrix3();
         _loc1_.setRotationMatrix(this.angleX,0,this.angleZ);
         var _loc2_:Vector3 = new Vector3(0,1,0);
         _loc2_.transform3(_loc1_);
         this.direction.x = _loc2_.x;
         this.direction.y = _loc2_.y;
         this.direction.z = _loc2_.z;
      }
      
      public function toggle() : void
      {
         if(this.camera.shadowMap == null)
         {
            this.§=!W§();
         }
         else
         {
            this.§set const true§();
         }
      }
   }
}

