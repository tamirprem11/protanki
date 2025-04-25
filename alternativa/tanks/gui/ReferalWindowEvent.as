package alternativa.tanks.gui
{
   import flash.events.Event;
   
   public class ReferalWindowEvent extends Event
   {
      public static const SEND_MAIL:String = "ReferalWindowEventSendMail";
      
      public var adresses:String;
      
      public var letterText:String;
      
      public function ReferalWindowEvent(param1:String, param2:String = "", param3:String = "")
      {
         super(param1);
         this.adresses = param2;
         this.letterText = param3;
      }
   }
}

