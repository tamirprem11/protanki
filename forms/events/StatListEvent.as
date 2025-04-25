package forms.events
{
   import flash.events.Event;
   
   public class StatListEvent extends Event
   {
      public static const UPDATE_STAT:String = "StatListUpdate";
      
      public static const UPDATE_SORT:String = "StatListUpdateSort";
      
      public var beginPosition:int = 0;
      
      public var numRow:int = 0;
      
      public var sortField:int;
      
      public function StatListEvent(param1:String, param2:int, param3:int, param4:int = 1)
      {
         super(param1,true,false);
         this.beginPosition = param2;
         this.numRow = param3;
         this.sortField = param4;
      }
   }
}

