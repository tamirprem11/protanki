package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §;"e§ extends §super for static§ implements §continue var with§
   {
      private var position:Vector3 = new Vector3();
      
      public function §;"e§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function setPosition(param1:Vector3) : void
      {
         this.position.copy(param1);
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         this.§for set finally§(param1);
      }
      
      public function destroy() : void
      {
         recycle();
      }
   }
}

