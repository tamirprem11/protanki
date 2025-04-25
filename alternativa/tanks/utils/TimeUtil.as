package alternativa.tanks.utils
{
   public class TimeUtil
   {
      public function TimeUtil()
      {
         super();
      }
      
      public static function getLocalazedPeriodForKickAlert(param1:String, param2:int, param3:int, param4:int) : String
      {
         var _loc5_:TimeUnitNames = null;
         var _loc6_:String = "";
         switch(param1)
         {
            case "ru":
               _loc5_ = getRuTimeUnitNames(param2,param3,param4);
               break;
            case "en":
            case "cn":
               _loc5_ = getEnTimeUnitNames(param2,param3,param4);
               break;
            case "de":
               _loc5_ = getDeTimeUnitNames(param2,param3,param4);
         }
         if(param4 == 0 && param3 == 0 && param2 == 0)
         {
            return "1 " + _loc5_.minuteName;
         }
         if(param4 != 0)
         {
            _loc6_ = param4 + " " + _loc5_.dayName;
         }
         if(param3 != 0)
         {
            _loc6_ = _loc6_ + " " + param3 + " " + _loc5_.hourName;
         }
         if(param2 != 0)
         {
            _loc6_ = _loc6_ + " " + param2 + " " + _loc5_.minuteName;
         }
         return _loc6_;
      }
      
      private static function getRuTimeUnitNames(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1 || param3 == 21 || param3 == 31)
         {
            _loc4_.dayName = "день";
         }
         else if(param3 >= 2 && param3 <= 4 || param3 >= 22 && param3 <= 24)
         {
            _loc4_.dayName = "дня";
         }
         else if(param3 >= 5 && param3 <= 20 || param3 >= 25 && param3 <= 30)
         {
            _loc4_.dayName = "дней";
         }
         else
         {
            _loc4_.dayName = "дня";
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
      
      private static function getDeTimeUnitNames(param1:int, param2:int, param3:int) : TimeUnitNames
      {
         var _loc4_:TimeUnitNames = new TimeUnitNames();
         if(param3 == 1)
         {
            _loc4_.dayName = "Tag";
         }
         else
         {
            _loc4_.dayName = "Tagen";
         }
         if(param2 == 1)
         {
            _loc4_.hourName = "Stunde";
         }
         else
         {
            _loc4_.hourName = "Stunden";
         }
         if(param1 == 1 || param1 == 0)
         {
            _loc4_.minuteName = "Minute";
         }
         else
         {
            _loc4_.minuteName = "Minuten";
         }
         return _loc4_;
      }
   }
}

class TimeUnitNames
{
   public var dayName:String;
   
   public var hourName:String;
   
   public var minuteName:String;
   
   public function TimeUnitNames()
   {
      super();
   }
}
