package alternativa.tanks.service.settings
{
   import flash.events.Event;
   
   public class SettingsServiceEvent extends Event
   {
      public static const SETTINGS_CHANGED:String = "SettingsServiceEvent.SETTINGS_CHANGED";
      
      private var §throw if§:§>k§;
      
      public function SettingsServiceEvent(param1:String, param2:§>k§)
      {
         super(param1,true,false);
         this.§throw if§ = param2;
      }
      
      public function §`,§() : §>k§
      {
         return this.§throw if§;
      }
   }
}

