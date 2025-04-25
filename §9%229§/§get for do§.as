package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §get for do§ extends §super for static§ implements §continue var with§
   {
      private var §finally with§:Vector3 = new Vector3();
      
      private var velocity:Vector3 = new Vector3();
      
      private var §set catch§:Number;
      
      public function §get for do§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         param1.x = this.§finally with§.x;
         param1.y = this.§finally with§.y;
         param1.z = this.§finally with§.z;
         param1.scaleX = 1;
         param1.scaleY = 1;
         param1.scaleZ = 1;
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§finally with§.copy(param1);
         this.velocity.copy(param2);
         this.§set catch§ = param3;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         var _loc4_:Number = 0.001 * param3;
         param1.x += this.velocity.x * _loc4_;
         param1.y += this.velocity.y * _loc4_;
         param1.z += this.velocity.z * _loc4_;
         param1.scaleX += this.§set catch§;
         param1.scaleY += this.§set catch§;
         param1.scaleZ += this.§set catch§;
      }
      
      public function destroy() : void
      {
      }
   }
}

