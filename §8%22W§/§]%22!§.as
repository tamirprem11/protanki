package §8"W§
{
   import §2!X§.§&O§;
   import §7C§.§'!&§;
   import §7C§.§,!k§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§break super§;
   import alternativa.tanks.battle.events.§final const each§;
   import alternativa.tanks.battle.events.§null final§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§<!C§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §continue const for§.§8!J§;
   import §continue const for§.§continue const extends§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import platform.client.fp10.core.type.AutoClosable;
   import projects.tanks.clients.flash.commons.services.layout.LobbyLayoutServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §]"!§ implements AutoClosable, §override const do§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var dialogWindowsDispatcherService:IDialogWindowsDispatcherService;
      
      [Inject]
      public static var dialogsService:IDialogsService;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §<!x§:BattleGUIService;
      
      [Inject]
      public static var fullscreenStateService:FullscreenStateService;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      private var §;"#§:Tank;
      
      private var §0N§:§<!C§;
      
      private var §#A§:Boolean;
      
      private var §!!v§:Boolean;
      
      private var §4"M§:Boolean;
      
      private var §-=§:Boolean;
      
      public function §]"!§(param1:Tank, param2:§<!C§, param3:Boolean)
      {
         super();
         this.§;"#§ = param1;
         this.§0N§ = param2;
         this.§#A§ = param3;
         this.init();
      }
      
      private function init() : void
      {
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.addEventListener(Event.ACTIVATE,this.§'Z§);
         display.stage.addEventListener(Event.DEACTIVATE,this.§+!<§);
         battleEventDispatcher.§7i§(§'!&§,this);
         battleEventDispatcher.§7i§(§,!k§,this);
         battleEventDispatcher.§7i§(§continue const extends§,this);
         battleEventDispatcher.§7i§(§8!J§,this);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,this.§continue for default§);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitch);
         dialogWindowsDispatcherService.addEventListener(DialogWindowsDispatcherServiceEvent.OPEN,this.§2Q§);
         dialogWindowsDispatcherService.addEventListener(DialogWindowsDispatcherServiceEvent.CLOSE,this.§function var§);
         §<!x§.§6"I§().addEventListener(MouseEvent.CLICK,this.§switch for include§);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(this.§#A§)
         {
            this.§try var throw§(param1);
         }
         else
         {
            this.§3"^§(param1);
         }
      }
      
      private function §try var throw§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode != Keyboard.ALTERNATE && !param1.altKey && !§while var false§.§3!'§())
         {
            this.§;"c§();
         }
      }
      
      private function §;"c§() : void
      {
         this.§-=§ = false;
         this.§6B§();
      }
      
      private function §6B§() : void
      {
         if(!this.§#A§ || this.§-=§ || lobbyLayoutService.isWindowOpenOverBattle())
         {
            return;
         }
         this.§#A§ = false;
         battleService.§override var with§().setFocus();
         var _loc1_:§&O§ = §&O§(OSGi.getInstance().getService(§&O§));
         _loc1_.§6B§();
         battleEventDispatcher.dispatchEvent(new §null final§());
      }
      
      private function §3"^§(param1:KeyboardEvent) : void
      {
         var _loc2_:§%!6§ = null;
         if(!§while var false§.§3!'§() && !this.§!!v§ && !this.§4"M§)
         {
            _loc2_ = §>!Y§.§case do§(param1.keyCode);
            if(_loc2_ == §%!6§.BATTLE_PAUSE)
            {
               this.§-=§ = true;
               this.§finally const set§();
            }
         }
      }
      
      private function §finally const set§(param1:Boolean = true) : void
      {
         if(this.§#A§)
         {
            return;
         }
         this.§#A§ = true;
         var _loc2_:§&O§ = §&O§(OSGi.getInstance().getService(§&O§));
         _loc2_.§finally const set§();
         battleEventDispatcher.dispatchEvent(new §final const each§(this.§0N§.getTimeLeft()));
         if(param1)
         {
            battleEventDispatcher.dispatchEvent(new §break super§(this.§0N§.getTimeLeft()));
         }
      }
      
      private function §2Q§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         this.§finally const set§(false);
      }
      
      private function §function var§(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         this.§6B§();
      }
      
      private function §'Z§(param1:Event) : void
      {
         this.§6B§();
      }
      
      private function §+!<§(param1:Event) : void
      {
         if(!fullscreenStateService.isFullscreen())
         {
            this.§finally const set§();
         }
      }
      
      private function §continue for default§(param1:LobbyLayoutServiceEvent) : void
      {
         this.§finally const set§(false);
      }
      
      private function onEndLayoutSwitch(param1:LobbyLayoutServiceEvent) : void
      {
         if(!lobbyLayoutService.isWindowOpenOverBattle())
         {
            this.§6B§();
         }
      }
      
      private function §switch for include§(param1:MouseEvent) : void
      {
         if(this.§#A§ && this.§-=§)
         {
            this.§;"c§();
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is §'!&§)
         {
            this.§!!v§ = true;
         }
         else if(param1 is §,!k§)
         {
            this.§!!v§ = false;
         }
         else if(param1 is §continue const extends§)
         {
            this.§4"M§ = true;
            this.§;"c§();
         }
         else if(param1 is §8!J§)
         {
            this.§4"M§ = false;
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.removeEventListener(Event.ACTIVATE,this.§'Z§);
         display.stage.removeEventListener(Event.DEACTIVATE,this.§+!<§);
         battleEventDispatcher.§,"7§(§'!&§,this);
         battleEventDispatcher.§,"7§(§,!k§,this);
         battleEventDispatcher.§,"7§(§continue const extends§,this);
         battleEventDispatcher.§,"7§(§8!J§,this);
         dialogWindowsDispatcherService.removeEventListener(DialogWindowsDispatcherServiceEvent.OPEN,this.§2Q§);
         dialogWindowsDispatcherService.removeEventListener(DialogWindowsDispatcherServiceEvent.CLOSE,this.§function var§);
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,this.§continue for default§);
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitch);
         §<!x§.§6"I§().removeEventListener(MouseEvent.CLICK,this.§switch for include§);
         this.§;"#§ = null;
      }
   }
}

