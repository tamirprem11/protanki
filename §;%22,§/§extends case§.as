package §;",§
{
   import alternativa.tanks.battle.objects.tank.Tank;
   
   public class §extends case§
   {
      private static const §-!k§:Number = 0.65;
      
      public function §extends case§()
      {
         super();
      }
      
      protected static function §null var false§(param1:Tank, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param1.tankData.health > 0)
         {
            _loc7_ = §-!k§ * param3 / param5 + (1 - §-!k§) * param4 / param6;
            _loc8_ = param2 == 0 ? Number(2) : Number(0);
            return 1 - _loc7_ + _loc8_;
         }
         return 0;
      }
   }
}

