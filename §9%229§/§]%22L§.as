package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   
   public class §]"L§ extends §super for static§ implements §continue var with§
   {
      private var §finally with§:Vector3 = new Vector3();
      
      private var velocity:Vector3 = new Vector3();
      
      private var acceleration:Number;
      
      public function §]"L§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         param1.x = this.§finally with§.x;
         param1.y = this.§finally with§.y;
         param1.z = this.§finally with§.z;
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§finally with§.copy(param1);
         this.velocity.copy(param2);
         this.acceleration = param3;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         var _loc4_:Number = NaN;
         _loc4_ = 0.001 * param3;
         param1.x += this.velocity.x * _loc4_;
         param1.y += this.velocity.y * _loc4_;
         param1.z += this.velocity.z * _loc4_;
         var _loc5_:Number = this.velocity.length();
         _loc5_ = _loc5_ + this.acceleration * _loc4_;
         if(_loc5_ <= 0)
         {
            this.velocity.reset();
         }
         else
         {
            this.velocity.normalize();
            this.velocity.scale(_loc5_);
         }
      }
      
      public function destroy() : void
      {
         recycle();
      }
   }
}

