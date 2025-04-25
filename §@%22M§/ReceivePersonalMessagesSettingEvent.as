package §@"M§
{
   import alternativa.tanks.gui.settings.§,!j§;
   
   public class ReceivePersonalMessagesSettingEvent extends §,!j§
   {
      public static var §if include§:String = "ReceivePersonalMessagesSettingEvent";
      
      private var value:Boolean;
      
      public function ReceivePersonalMessagesSettingEvent(param1:String, param2:Boolean)
      {
         super(param1);
         this.value = param2;
      }
      
      public function getValue() : Boolean
      {
         return this.value;
      }
   }
}

