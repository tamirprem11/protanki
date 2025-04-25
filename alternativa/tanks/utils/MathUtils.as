package alternativa.tanks.utils
{
   public class MathUtils
   {
      public static const PI2:Number = 2 * Math.PI;
      
      public function MathUtils()
      {
         super();
      }
      
      public static function clamp(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param1 < param2)
         {
            return param2;
         }
         if(param1 > param3)
         {
            return param3;
         }
         return param1;
      }
      
      public static function clampAngle(param1:Number) : Number
      {
         param1 %= PI2;
         if(param1 < -Math.PI)
         {
            return PI2 + param1;
         }
         if(param1 > Math.PI)
         {
            return param1 - PI2;
         }
         return param1;
      }
      
      public static function clampAngleFast(param1:Number) : Number
      {
         if(param1 < -Math.PI)
         {
            return PI2 + param1;
         }
         if(param1 > Math.PI)
         {
            return param1 - PI2;
         }
         return param1;
      }
      
      public static function toDegrees(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      public static function toRadians(param1:Number) : Number
      {
         return param1 * Math.PI / 180;
      }
      
      public static function getBitValue(param1:int, param2:int) : int
      {
         return param1 >> param2 & 1;
      }
      
      public static function changeBitValue(param1:int, param2:int, param3:Boolean) : int
      {
         if(param3)
         {
            return param1 | 1 << param2;
         }
         return param1 & ~(1 << param2);
      }
      
      public static function moveValueTowards(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param1 < param2)
         {
            param1 += param3;
            return param1 > param2 ? Number(param2) : Number(param1);
         }
         if(param1 > param2)
         {
            param1 -= param3;
            return param1 < param2 ? Number(param2) : Number(param1);
         }
         return param1;
      }
      
      public static function snap(param1:Number, param2:Number, param3:Number) : Number
      {
         if(param1 > param2 - param3 && param1 < param2 + param3)
         {
            return param2;
         }
         return param1;
      }
      
      public static function sign(param1:Number) : Number
      {
         if(param1 < 0)
         {
            return -1;
         }
         if(param1 > 0)
         {
            return 1;
         }
         return 0;
      }
      
      public static function numberSign(param1:Number, param2:Number) : Number
      {
         if(param1 < 0)
         {
            return param1 < -param2 ? Number(-1) : Number(0);
         }
         if(param1 > 0)
         {
            return param1 > param2 ? Number(1) : Number(0);
         }
         return 0;
      }
      
      public static function numbersEqual(param1:Number, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Number = param1 - param2;
         if(_loc4_ < 0)
         {
            return _loc4_ > -param3;
         }
         return _loc4_ < param3;
      }
      
      public static function nearestPowerOf2(param1:int) : int
      {
         return 1 << Math.ceil(Math.log(param1) / Math.LN2);
      }
   }
}

