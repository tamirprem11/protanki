package §throw const null§
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§final const each§;
   import alternativa.tanks.battle.events.§null final§;
   import alternativa.tanks.battle.events.§override const do§;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.AutoClosable;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §catch for get§ implements AutoClosable, §override const do§, §do for switch§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var dialogWindowsDispatcherService:IDialogWindowsDispatcherService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      private static const §if set static§:int = 60;
      
      private var §implements var continue§:int;
      
      private var _alert:§function const in§;
      
      private var §5!a§:Boolean;
      
      public function §catch for get§()
      {
         super();
         this.init();
      }
      
      private static function §7"U§() : Boolean
      {
         return !lobbyLayoutService.isSwitchInProgress() && lobbyLayoutService.isWindowOpenOverBattle();
      }
      
      private static function §static set else§() : void
      {
         var _loc1_:LayoutState = lobbyLayoutService.getCurrentState();
         if(_loc1_ != LayoutState.BATTLE)
         {
            lobbyLayoutService.§3]§();
         }
      }
      
      private function init() : void
      {
         battleEventDispatcher.§7i§(§final const each§,this);
         battleEventDispatcher.§7i§(§null final§,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         if(param1 is §final const each§)
         {
            this.§>!M§(§final const each§(param1));
         }
         else if(param1 is §null final§)
         {
            this.§function const final§();
         }
      }
      
      private function §>!M§(param1:§final const each§) : void
      {
         if(this.§5!a§)
         {
            return;
         }
         this.§5!a§ = true;
         this.§implements var continue§ = getTimer() + param1.§function var else§;
         battleService.§try var final§().§finally var false§(this);
      }
      
      private function §function const final§() : void
      {
         if(!this.§5!a§)
         {
            return;
         }
         this.§5!a§ = false;
         battleService.§try var final§().§<!3§(this);
         this.destroyAlert();
      }
      
      private function destroyAlert() : void
      {
         if(this.§false for do§())
         {
            this._alert.removeEventListener(NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE,this.onReturnToBattle);
            this._alert.removeEventListener(NotificationEndsPausedAlertEvent.CLOSE_ALERT,this.§null continue§);
            this._alert.destroy();
            this._alert = null;
         }
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         var _loc3_:int = (this.§implements var continue§ - param1) / 1000;
         if(_loc3_ <= §if set static§)
         {
            if(this.§false for do§())
            {
               this._alert.seconds = Math.max(_loc3_,0);
            }
            else if(§7"U§())
            {
               this.§ @§(_loc3_);
            }
         }
      }
      
      private function §false for do§() : Boolean
      {
         return this._alert != null;
      }
      
      private function § @§(param1:int) : void
      {
         this._alert = new §function const in§();
         this._alert.addEventListener(NotificationEndsPausedAlertEvent.RETURN_TO_BATTLE,this.onReturnToBattle);
         this._alert.addEventListener(NotificationEndsPausedAlertEvent.CLOSE_ALERT,this.§null continue§);
         this._alert.seconds = param1;
         this._alert.show();
      }
      
      private function §null continue§(param1:NotificationEndsPausedAlertEvent = null) : void
      {
         this.§function const final§();
      }
      
      private function onReturnToBattle(param1:NotificationEndsPausedAlertEvent) : void
      {
         dialogWindowsDispatcherService.forciblyClose();
         §static set else§();
         this.§function const final§();
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.destroyAlert();
         battleEventDispatcher.§,"7§(§final const each§,this);
         battleEventDispatcher.§,"7§(§null final§,this);
      }
   }
}

