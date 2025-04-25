package §8"W§
{
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import §const set false§.§for set switch§;
   import flash.events.Event;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §#<§ implements AutoClosable
   {
      [Inject]
      public static var settings:ISettingsService;
      
      private var controller:§for set switch§;
      
      public function §#<§(param1:§for set switch§)
      {
         super();
         this.controller = param1;
         settings.addEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
      
      private function onSettingsAccepted(param1:Event) : void
      {
         this.controller.§get var use§(settings.inverseBackDriving);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.controller = null;
         settings.removeEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
   }
}

