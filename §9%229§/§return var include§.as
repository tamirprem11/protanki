package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §return var include§ extends §super for static§ implements §continue var with§
   {
      private static const §&"f§:Vector3 = new Vector3();
      
      private var position:Vector3 = new Vector3();
      
      private var §6E§:Number;
      
      public function §return var include§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:Vector3, param2:Number) : void
      {
         this.position.copy(param1);
         this.§6E§ = param2;
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         §&"f§.x = param2.x - this.position.x;
         §&"f§.y = param2.y - this.position.y;
         §&"f§.z = param2.z - this.position.z;
         §&"f§.normalize();
         param1.x = this.position.x + this.§6E§ * §&"f§.x;
         param1.y = this.position.y + this.§6E§ * §&"f§.y;
         param1.z = this.position.z + this.§6E§ * §&"f§.z;
      }
      
      public function destroy() : void
      {
         recycle();
      }
   }
}

