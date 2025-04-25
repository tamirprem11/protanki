package alternativa.tanks.battle.scene3d
{
   public class §null set import§
   {
      private static const §^!M§:Number = 12;
      
      private static const §while var default§:Number = 16;
      
      private static const §while var null§:Number = 9;
      
      private static const §include for each§:Number = Math.PI / 2;
      
      public function §null set import§()
      {
         super();
      }
      
      public static function §const var native§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = param2 / §while var null§;
         var _loc7_:Number = param1 / _loc6_;
         if(_loc7_ <= §^!M§)
         {
            return §include for each§;
         }
         _loc3_ = _loc7_ - (§while var default§ - §^!M§);
         if(_loc3_ < §^!M§)
         {
            _loc3_ = §^!M§;
         }
         _loc4_ = _loc3_ * _loc6_;
         _loc5_ = Math.sqrt(_loc4_ * _loc4_ + param2 * param2) * 0.5 / Math.tan(§include for each§ * 0.5);
         return Math.atan(Math.sqrt(param1 * param1 + param2 * param2) * 0.5 / _loc5_) * 2;
      }
   }
}

