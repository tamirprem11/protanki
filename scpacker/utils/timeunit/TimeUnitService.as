package scpacker.utils.timeunit
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.locale.LocaleService;
   
   public class TimeUnitService
   {
      public function TimeUnitService()
      {
         super();
      }
      
      private static function getRuTimeUnitNames(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         param3 %= 100;
         if(param3 >= 11 && param3 <= 19)
         {
            _loc4_.dayName = "дней";
         }
         else
         {
            param3 %= 10;
            if(param3 == 1)
            {
               _loc4_.dayName = "день";
            }
            else if(param3 >= 2 && param3 <= 4)
            {
               _loc4_.dayName = "дня";
            }
            else
            {
               _loc4_.dayName = "дней";
            }
         }
         if(param2 == 1 || param2 == 21)
         {
            _loc4_.hourName = "час";
         }
         else if(param2 >= 2 && param2 <= 4 || param2 >= 22 && param2 <= 24)
         {
            _loc4_.hourName = "часа";
         }
         else if(param2 >= 5 && param2 <= 20)
         {
            _loc4_.hourName = "часов";
         }
         if(param1 == 0 || param1 == 1 || param1 == 21 || param1 == 31 || param1 == 41 || param1 == 51)
         {
            _loc4_.minuteName = "минуту";
         }
         else if(param1 >= 2 && param1 <= 4 || param1 >= 22 && param1 <= 24 || param1 >= 32 && param1 <= 34 || param1 >= 42 && param1 <= 44 || param1 >= 52 && param1 <= 54)
         {
            _loc4_.minuteName = "минуты";
         }
         else if(param1 >= 5 && param1 <= 20 || param1 >= 25 && param1 <= 30 || param1 >= 35 && param1 <= 40 || param1 >= 45 && param1 <= 50 || param1 >= 55 && param1 <= 60)
         {
            _loc4_.minuteName = "минут";
         }
         return _loc4_;
      }
      
      private static function getEnTimeUnitNames(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.dayName = "day";
         }
         else
         {
            _loc4_.dayName = "days";
         }
         if(param2 == 1)
         {
            _loc4_.hourName = "hour";
         }
         else
         {
            _loc4_.hourName = "hours";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.minuteName = "minute";
         }
         else
         {
            _loc4_.minuteName = "minutes";
         }
         return _loc4_;
      }
      
      public static function getLocalizedTimeString(param1:int, param2:int, param3:int) : String
      {
         var _loc4_:String = "";
         var _loc5_:TimeUnitNames = getTimeUnitNames(param1,param2,param3);
         if(param3 == 0 && param2 == 0 && param1 == 0)
         {
            return "1 " + _loc5_.minuteName;
         }
         if(param3 != 0)
         {
            _loc4_ = param3 + " " + _loc5_.dayName;
         }
         if(param2 != 0)
         {
            _loc4_ = _loc4_ + " " + param2 + " " + _loc5_.hourName;
         }
         if(param1 != 0)
         {
            _loc4_ = _loc4_ + " " + param1 + " " + _loc5_.minuteName;
         }
         return _loc4_;
      }
      
      public static function getLocalizedDaysString(param1:int) : String
      {
         return param1 + " " + getLocalizedDaysName(param1);
      }
      
      public static function getLocalizedDaysName(param1:int) : String
      {
         return getTimeUnitNames(0,0,param1).dayName;
      }
      
      public static function getTimeUnitNames(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         switch(LocaleService(OSGi.getInstance().getService(ILocaleService)).language)
         {
            case "ru":
               return getRuTimeUnitNames(param1,param2,param3);
            case "en":
               return getEnTimeUnitNames(param1,param2,param3);
            default:
               return getRuTimeUnitNames(param1,param2,param3);
         }
      }
   }
}

