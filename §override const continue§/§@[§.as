package §override const continue§
{
   import alternativa.tanks.service.settings.§>k§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import §default set with§.§0"8§;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §@[§ implements AutoClosable
   {
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      private var §native for in§:§0"8§;
      
      public function §@[§(param1:§0"8§)
      {
         super();
         this.§native for in§ = param1;
         settingsService.addEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
      
      private function onSettingsAccepted(param1:SettingsServiceEvent) : void
      {
         if(param1.§`,§() != §>k§.§finally§)
         {
            return;
         }
         if(settingsService.showFPS)
         {
            §+!p§.§2K§().addChild(this.§native for in§);
         }
         else
         {
            removeDisplayObject(this.§native for in§);
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§native for in§ = null;
         settingsService.removeEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
   }
}

