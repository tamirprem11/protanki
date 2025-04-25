package §9"9§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   
   public class §%"^§
   {
      private static var axis1:Vector3 = new Vector3();
      
      private static var §get const§:Vector3 = new Vector3();
      
      private static var eulerAngles:Vector3 = new Vector3();
      
      private static var §dynamic if§:Vector3 = new Vector3();
      
      private static var §class for include§:Vector3 = new Vector3();
      
      private static var § y§:Matrix3 = new Matrix3();
      
      private static var §-B§:Matrix3 = new Matrix3();
      
      public function §%"^§()
      {
         super();
      }
      
      public static function §true var throw§(param1:Object3D, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         var _loc5_:Number = NaN;
         if(param3.y < -0.99999 || param3.y > 0.99999)
         {
            axis1.x = 0;
            axis1.y = 0;
            axis1.z = 1;
            _loc5_ = param3.y < 0 ? Math.PI : 0;
         }
         else
         {
            axis1.x = param3.z;
            axis1.y = 0;
            axis1.z = -param3.x;
            axis1.normalize();
            _loc5_ = Math.acos(param3.y);
         }
         § y§.fromAxisAngle(axis1,_loc5_);
         §dynamic if§.x = param4.x - param2.x;
         §dynamic if§.y = param4.y - param2.y;
         §dynamic if§.z = param4.z - param2.z;
         var _loc6_:Number = §dynamic if§.x * param3.x + §dynamic if§.y * param3.y + §dynamic if§.z * param3.z;
         §dynamic if§.x -= _loc6_ * param3.x;
         §dynamic if§.y -= _loc6_ * param3.y;
         §dynamic if§.z -= _loc6_ * param3.z;
         §dynamic if§.normalize();
         § y§.transformVector(Vector3.Z_AXIS,§class for include§);
         _loc6_ = §class for include§.x * §dynamic if§.x + §class for include§.y * §dynamic if§.y + §class for include§.z * §dynamic if§.z;
         §get const§.x = §class for include§.y * §dynamic if§.z - §class for include§.z * §dynamic if§.y;
         §get const§.y = §class for include§.z * §dynamic if§.x - §class for include§.x * §dynamic if§.z;
         §get const§.z = §class for include§.x * §dynamic if§.y - §class for include§.y * §dynamic if§.x;
         §get const§.normalize();
         _loc5_ = Math.acos(_loc6_);
         §-B§.fromAxisAngle(§get const§,_loc5_);
         § y§.append(§-B§);
         § y§.getEulerAngles(eulerAngles);
         param1.rotationX = eulerAngles.x;
         param1.rotationY = eulerAngles.y;
         param1.rotationZ = eulerAngles.z;
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
      }
   }
}

