package alternativa.tanks.model
{
   import alternativa.tanks.service.settings.§>k§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   
   public class ChatSettingsTracker
   {
      [Inject]
      public static var settingsService:ISettingsService;
      
      private var chat:ShowChat;
      
      public function ChatSettingsTracker(param1:ShowChat)
      {
         super();
         this.chat = param1;
         param1.setShowChat(settingsService.showChat);
         settingsService.addEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
      
      private function onSettingsAccepted(param1:SettingsServiceEvent) : void
      {
         if(param1.§`,§() == §>k§.§'!4§)
         {
            this.chat.setShowChat(settingsService.showChat);
         }
      }
      
      public function close() : void
      {
         this.chat = null;
         settingsService.removeEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.onSettingsAccepted);
      }
   }
}

