package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §"b§ extends §super for static§ implements §continue var with§
   {
      private var normal:Vector3 = new Vector3();
      
      private var position:Vector3 = new Vector3();
      
      private var distance:Number;
      
      private var §?i§:Vector3 = new Vector3();
      
      public function §"b§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.position.copy(param1);
         this.normal.copy(param2);
         this.distance = param3;
         this.normal.normalize();
         this.compute();
      }
      
      private function compute() : void
      {
         this.§?i§.copy(this.normal);
         this.§?i§.scale(this.distance);
         this.§?i§.add(this.position);
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         param1.x = this.§?i§.x;
         param1.y = this.§?i§.y;
         param1.z = this.§?i§.z;
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

