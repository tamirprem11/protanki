package alternativa.tanks.models.tank
{
   import alternativa.math.Vector3;
   import §import import§.§finally for false§;
   import §super const dynamic§.§if import§;
   
   public class § "0§
   {
      private static const nearDistance:Number = 30;
      
      private static const §?0§:Number = nearDistance * nearDistance;
      
      private static const §`!1§:Number = 50;
      
      private static const §2%§:Number = §`!1§ * §`!1§;
      
      private static const §'j§:Number = 4;
      
      private static const §1,§:Number = §'j§ / 180 * Math.PI;
      
      private static const §?@§:Number = 10;
      
      private static const §@X§:Number = §?@§ / 180 * Math.PI;
      
      public function § "0§()
      {
         super();
      }
      
      public static function §68§(param1:§if import§, param2:§if import§) : void
      {
         §while for with§(param1.angularVelocity,param2.angularVelocity);
         §while for with§(param1.linearVelocity,param2.linearVelocity);
         §while for with§(param1.orientation,param2.orientation);
         §while for with§(param1.position,param2.position);
         param2.control = param1.control;
      }
      
      public static function §while for with§(param1:§finally for false§, param2:§finally for false§) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function §6]§(param1:Vector3, param2:§finally for false§) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = param1.z - param2.z;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
      }
      
      public static function §7""§(param1:§if import§, param2:§if import§) : Boolean
      {
         return §in for finally§(param1,param2) && §with const with§(param1,param2) && §get for break§(param1,param2) && §;p§(param1,param2);
      }
      
      private static function §in for finally§(param1:§if import§, param2:§if import§) : Boolean
      {
         return §%H§(param1.position,param2.position) < §?0§;
      }
      
      private static function §get for break§(param1:§if import§, param2:§if import§) : Boolean
      {
         return §%H§(param1.linearVelocity,param2.linearVelocity) < §2%§;
      }
      
      private static function §with const with§(param1:§if import§, param2:§if import§) : Boolean
      {
         var _loc3_:§finally for false§ = param2.orientation;
         var _loc4_:§finally for false§ = param1.orientation;
         return Math.abs(_loc4_.x - _loc3_.x) < §1,§ && Math.abs(_loc4_.y - _loc3_.y) < §1,§ && Math.abs(_loc4_.z - _loc3_.z) < §1,§;
      }
      
      private static function §;p§(param1:§if import§, param2:§if import§) : Boolean
      {
         var _loc3_:§finally for false§ = param2.angularVelocity;
         var _loc4_:§finally for false§ = param1.angularVelocity;
         return Math.abs(_loc4_.x - _loc3_.x) < §@X§ && Math.abs(_loc4_.y - _loc3_.y) < §@X§ && Math.abs(_loc4_.z - _loc3_.z) < §@X§;
      }
      
      private static function §%H§(param1:§finally for false§, param2:§finally for false§) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = param1.z - param2.z;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
      }
      
      private static function §'!H§(param1:§finally for false§, param2:§finally for false§) : Number
      {
         var _loc3_:Number = length(param1);
         var _loc4_:Number = length(param2);
         return (param1.x * param2.x + param1.y * param2.y + param1.z * param2.z) / _loc3_ / _loc4_;
      }
      
      private static function length(param1:§finally for false§) : Number
      {
         return Math.sqrt(param1.x * param1.x + param1.y * param1.y + param1.z * param1.z);
      }
      
      public static function §<c§(param1:§if import§, param2:§if import§) : String
      {
         return §;!?§(param1,param2) + " " + §'!§(param1,param2) + " " + §class const return§(param1,param2) + " " + §7q§(param1,param2) + " " + §2"_§(param1,param2);
      }
      
      private static function §2"_§(param1:§if import§, param2:§if import§) : String
      {
         return (§in for finally§(param1,param2) ? "T" : "F") + (§with const with§(param1,param2) ? "T" : "F") + (§get for break§(param1,param2) ? "T" : "F") + (§;p§(param1,param2) ? "T" : "F");
      }
      
      private static function §;!?§(param1:§if import§, param2:§if import§) : String
      {
         return "dist: [" + §%H§(param1.position,param2.position) + "/" + §?0§ + "]";
      }
      
      private static function §'!§(param1:§if import§, param2:§if import§) : String
      {
         var _loc3_:§finally for false§ = param2.orientation;
         var _loc4_:§finally for false§ = param1.orientation;
         return "ori: [X:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §1,§ + "];[Y:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §1,§ + "];[Z:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §1,§ + "]";
      }
      
      private static function §class const return§(param1:§if import§, param2:§if import§) : String
      {
         return "lV: [" + §%H§(param1.linearVelocity,param2.linearVelocity) + "/" + §2%§ + "]";
      }
      
      private static function §7q§(param1:§if import§, param2:§if import§) : String
      {
         var _loc3_:§finally for false§ = param2.angularVelocity;
         var _loc4_:§finally for false§ = param1.angularVelocity;
         return "oV: [X:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §@X§ + "];[Y:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §@X§ + "];[Z:" + Math.abs(_loc4_.x - _loc3_.x) + "/" + §@X§ + "]";
      }
   }
}

