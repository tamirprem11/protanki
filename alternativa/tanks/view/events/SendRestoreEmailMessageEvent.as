package alternativa.tanks.view.events
{
   import flash.events.Event;
   
   public class SendRestoreEmailMessageEvent extends Event
   {
      public static const SEND:String = "RESTORE_EMAIL";
      
      private var _captchaAnswer:String;
      
      private var _emailAddress:String;
      
      public function SendRestoreEmailMessageEvent(param1:String, param2:String)
      {
         super(SEND);
         this._captchaAnswer = param1;
         this._emailAddress = param2;
      }
      
      public function get emailAddress() : String
      {
         return this._emailAddress;
      }
      
      public function get captchaAnswer() : String
      {
         return this._captchaAnswer;
      }
      
      override public function clone() : Event
      {
         return new SendRestoreEmailMessageEvent(this._captchaAnswer,this._emailAddress);
      }
   }
}

