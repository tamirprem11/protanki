package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.camera.§for for native§;
   import §dynamic package§.§]"P§;
   
   public class §native var throw§ extends §super for static§ implements §continue var with§
   {
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §#!!§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const §while case§:Vector3 = new Vector3();
      
      private static const §false const native§:Vector3 = new Vector3();
      
      private static const intersection:RayHit = new RayHit();
      
      private static const §4Q§:Number = 20;
      
      private static const §[!7§:Number = 0.2;
      
      private var §implements throw§:Number;
      
      private var collisionDetector:CollisionDetector;
      
      private var §-"§:Vector3 = new Vector3();
      
      private var turret:Object3D;
      
      private var coeff:Number;
      
      private var §`!0§:Number = 0;
      
      public function §native var throw§(param1:§default const static§)
      {
         super(param1);
      }
      
      private function §@"]§() : void
      {
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §while case§.x = §8!K§.m00;
         §while case§.y = §8!K§.m10;
         §while case§.z = §8!K§.m20;
         direction.x = §8!K§.m01;
         direction.y = §8!K§.m11;
         direction.z = §8!K§.m21;
         §8!K§.transformVector(this.§-"§,§false const native§);
         var _loc1_:Number = this.§-"§.y;
         §#!!§.x = §false const native§.x - _loc1_ * direction.x;
         §#!!§.y = §false const native§.y - _loc1_ * direction.y;
         §#!!§.z = §false const native§.z - _loc1_ * direction.z;
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:CollisionDetector, param4:Number, param5:Number = 0.5) : void
      {
         this.turret = param1;
         this.§-"§ = param2;
         this.collisionDetector = param3;
         this.§implements throw§ = param4;
         this.coeff = param5;
         this.§`!0§ = 0;
      }
      
      public function §for set finally§(param1:Object3D) : void
      {
         this.§@"]§();
         var _loc2_:Number = this.§implements throw§ * this.coeff;
         if(this.collisionDetector.raycastStatic(§#!!§,direction,§]"P§.§return set for§,this.§implements throw§,null,intersection))
         {
            _loc2_ = Vector3.distanceBetween(§#!!§,intersection.position) * this.coeff;
         }
         var _loc3_:Number = _loc2_ - this.§`!0§;
         if(Math.abs(_loc3_) <= §4Q§)
         {
            this.§`!0§ = _loc2_;
         }
         else
         {
            this.§`!0§ += _loc3_ * §[!7§;
         }
         param1.x = §#!!§.x + direction.x * this.§`!0§;
         param1.y = §#!!§.y + direction.y * this.§`!0§;
         param1.z = §#!!§.z + direction.z * this.§`!0§;
      }
      
      public function §true for if§(param1:Object3D, param2:§for for native§, param3:int) : void
      {
         this.§for set finally§(param1);
      }
      
      public function destroy() : void
      {
         this.turret = null;
         this.collisionDetector = null;
         recycle();
      }
   }
}

