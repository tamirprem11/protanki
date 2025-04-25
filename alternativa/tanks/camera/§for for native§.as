package alternativa.tanks.camera
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.scene3d.§null set import§;
   
   public class §for for native§ extends Camera3D
   {
      private static const m:Matrix3 = new Matrix3();
      
      public var position:Vector3 = new Vector3();
      
      public var §throw var continue§:Vector3 = new Vector3();
      
      public var §=!D§:Vector3 = new Vector3();
      
      public var §4"R§:Vector3 = new Vector3();
      
      public function §for for native§()
      {
         super();
         nearClipping = 40;
         farClipping = 200000;
         z = 10000;
         rotationX = -0.01;
         diagramVerticalMargin = 35;
      }
      
      public function §set throw§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = Math.cos(rotationX);
         var _loc3_:Number = Math.sin(rotationX);
         var _loc4_:Number = Math.cos(rotationY);
         var _loc5_:Number = Math.sin(rotationY);
         _loc1_ = Math.cos(rotationZ);
         var _loc6_:Number = Math.sin(rotationZ);
         var _loc7_:Number = _loc1_ * _loc5_;
         var _loc8_:Number = _loc6_ * _loc5_;
         this.§throw var continue§.x = _loc1_ * _loc4_;
         this.§=!D§.x = _loc7_ * _loc3_ - _loc6_ * _loc2_;
         this.§4"R§.x = _loc7_ * _loc2_ + _loc6_ * _loc3_;
         this.§throw var continue§.y = _loc6_ * _loc4_;
         this.§=!D§.y = _loc8_ * _loc3_ + _loc1_ * _loc2_;
         this.§4"R§.y = _loc8_ * _loc2_ - _loc1_ * _loc3_;
         this.§throw var continue§.z = -_loc5_;
         this.§=!D§.z = _loc4_ * _loc3_;
         this.§4"R§.z = _loc4_ * _loc2_;
         this.position.x = x;
         this.position.y = y;
         this.position.z = z;
      }
      
      public function §null var implements§(param1:Vector3, param2:Vector3) : void
      {
         m.setRotationMatrix(rotationX,rotationY,rotationZ);
         m.transformVector(param1,param2);
      }
      
      public function §9S§(param1:Vector3, param2:Vector3) : void
      {
         m.setRotationMatrix(rotationX,rotationY,rotationZ);
         m.transformVectorInverse(param1,param2);
      }
      
      public function setPosition(param1:Vector3) : void
      {
         x = param1.x;
         y = param1.y;
         z = param1.z;
      }
      
      public function §override set switch§() : void
      {
         fov = §null set import§.§const var native§(view.width,view.height);
      }
   }
}

