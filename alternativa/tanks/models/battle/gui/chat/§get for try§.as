package alternativa.tanks.models.battle.gui.chat
{
   import flash.events.Event;
   
   public class §get for try§ extends Event
   {
      public static const SEND_MESSAGE:String = "sendMessage";
      
      private var _message:String;
      
      private var §super for default§:Boolean;
      
      public function §get for try§(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         this._message = param2;
         this.§super for default§ = param3;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get §case case§() : Boolean
      {
         return this.§super for default§;
      }
      
      [Obfuscation(rename="false")]
      override public function clone() : Event
      {
         return new §get for try§(type,this._message,this.§super for default§);
      }
      
      [Obfuscation(rename="false")]
      override public function toString() : String
      {
         return "[BattleChatEvent type=" + type + ", message=" + this._message + ", teamOnly=" + this.§super for default§ + "]";
      }
   }
}

