package §8"W§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battleinput.§null set with§;
   import projects.tanks.clients.flash.commons.services.layout.LobbyLayoutServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.BlurServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import scpacker.utils.§super var super§;
   
   public class §each var function§
   {
      [Inject]
      public static var dialogWindowsDispatcherService:IDialogWindowsDispatcherService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var dialogService:IDialogsService;
      
      [Inject]
      public static var blurService:IBlurService;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var battleService:BattleService;
      
      private var §include const extends§:§super var super§ = new §super var super§();
      
      public function §each var function§()
      {
         super();
         battleService.§try var final§().§finally var false§(this.§include const extends§);
         init();
      }
      
      private static function init() : void
      {
         dialogWindowsDispatcherService.addEventListener(DialogWindowsDispatcherServiceEvent.OPEN,§2Q§);
         dialogWindowsDispatcherService.addEventListener(DialogWindowsDispatcherServiceEvent.CLOSE,§function var§);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,§continue for default§);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,onEndLayoutSwitch);
         blurService.addEventListener(BlurServiceEvent.CLICK_OVERLAY_BATTLE_CONTENT,§&!q§);
         if(!lobbyLayoutService.isSwitchInProgress())
         {
            §function var§();
         }
      }
      
      private static function §2Q§(param1:DialogWindowsDispatcherServiceEvent = null) : void
      {
         §while var false§.lock(§null set with§.§4?§);
      }
      
      private static function §function var§(param1:DialogWindowsDispatcherServiceEvent = null) : void
      {
         if(!lobbyLayoutService.isWindowOpenOverBattle())
         {
            §while var false§.unlock(§null set with§.§4?§);
            battleService.§override var with§().setFocus();
         }
      }
      
      private static function §continue for default§(param1:LobbyLayoutServiceEvent) : void
      {
         blurService.blurBattleContent();
         §2Q§();
      }
      
      private static function onEndLayoutSwitch(param1:LobbyLayoutServiceEvent) : void
      {
         if(!lobbyLayoutService.isWindowOpenOverBattle())
         {
            blurService.unblurBattleContent();
            §function var§();
         }
      }
      
      private static function §&!q§(param1:BlurServiceEvent) : void
      {
         lobbyLayoutService.closePopupOverBattle();
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         battleService.§try var final§().§<!3§(this.§include const extends§);
         dialogWindowsDispatcherService.removeEventListener(DialogWindowsDispatcherServiceEvent.OPEN,§2Q§);
         dialogWindowsDispatcherService.removeEventListener(DialogWindowsDispatcherServiceEvent.CLOSE,§function var§);
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,§continue for default§);
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,onEndLayoutSwitch);
         blurService.removeEventListener(BlurServiceEvent.CLICK_OVERLAY_BATTLE_CONTENT,§&!q§);
         blurService.unblurBattleContent();
      }
   }
}

