package alternativa.tanks.model.panel
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import alternativa.tanks.gui.NewReferalWindow;
   import alternativa.tanks.gui.ReferalWindowEvent;
   import alternativa.tanks.gui.SettingsWindow;
   import alternativa.tanks.gui.SettingsWindowEvent;
   import alternativa.tanks.help.ButtonBarHelper;
   import alternativa.tanks.help.FriendsHelper;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.help.MainMenuHelper;
   import alternativa.tanks.help.MoneyHelper;
   import alternativa.tanks.help.RankBarHelper;
   import alternativa.tanks.help.RankHelper;
   import alternativa.tanks.help.RatingIndicatorHelper;
   import alternativa.tanks.help.ScoreHelper;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.model.referals.IReferalsListener;
   import alternativa.tanks.model.shop.ShopModel;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.fps.§get for import§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.panel.IPanelView;
   import controls.RedButton;
   import controls.base.DefaultButtonBase;
   import controls.buttons.h30px.GreenMediumButton;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import flash.utils.Timer;
   import forms.MainPanel;
   import forms.ServerRedirectAlert;
   import forms.ServerStopAlert;
   import forms.events.AlertEvent;
   import forms.events.MainButtonBarEvents;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.client.panel.model.IPanelModelBase;
   import projects.tanks.client.panel.model.PanelModelBase;
   import projects.tanks.clients.flash.commons.services.layout.LobbyLayoutServiceEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.KeyUpListenerPriority;
   import scpacker.gui.ConfirmEmailCode;
   import scpacker.gui.RecoveryWindow;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import services.alertservice.Alert;
   import services.alertservice.§if const finally§;
   
   public class PanelModel extends PanelModelBase implements IPanelModelBase, IPanel, IReferalsListener
   {
      [Inject]
      public static var panelView:IPanelView;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var helpService:IHelpService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var achievementService:IAchievementService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private static const HELPER_GROUP_KEY:String = "PanelModel";
      
      public static const KEYCODE_F11:uint = 122;
      
      public static const DISPLAY_STATE_FULL_SCREEN_INTERACTIVE:String = "fullScreenInteractive";
      
      public static const DISPLAY_STATE_NORMAL:String = "normal";
      
      private static const GA_CATEGORY:String = "lobby";
      
      private var storage:SharedObject;
      
      private var clientObject:ClientObject;
      
      private var panel:MainPanel;
      
      private var §native for class§:String;
      
      private var settingsWindow:SettingsWindow;
      
      private var referalWindow:NewReferalWindow;
      
      private var shopModel:ShopModel = new ShopModel();
      
      private var emailConfirmed:Boolean;
      
      private const HELPER_RANK:int = 1;
      
      private const HELPER_RANK_BAR:int = 2;
      
      private const HELPER_RATING_INDICATOR:int = 3;
      
      private const HELPER_MAIN_MENU:int = 5;
      
      private const HELPER_BUTTON_BAR:int = 6;
      
      private const HELPER_MONEY:int = 7;
      
      private const HELPER_SCORE:int = 10;
      
      private const HELPER_FRIENDS:int = 11;
      
      private var stopAlert:ServerStopAlert;
      
      private var email:String;
      
      private var showRedirectAlertTimer:Timer;
      
      private var redirectAlert:ServerRedirectAlert;
      
      private var serverToRedirectTo:String;
      
      private var networker:Network;
      
      public function PanelModel()
      {
         super();
      }
      
      private static function closeButtonPressed() : void
      {
         var _loc1_:LayoutState = null;
         if(lobbyLayoutService.inBattle())
         {
            _loc1_ = lobbyLayoutService.getCurrentState();
            if(_loc1_ == LayoutState.BATTLE_SELECT)
            {
               lobbyLayoutService.showBattleSelect();
            }
            else if(_loc1_ == LayoutState.GARAGE)
            {
               lobbyLayoutService.showGarage();
            }
            else if(_loc1_ != LayoutState.PAYMENT)
            {
               lobbyLayoutService.exitFromBattle();
            }
         }
         else
         {
            lobbyLayoutService.exitFromGame();
         }
      }
      
      private static function onKeyUp(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode) && !lobbyLayoutService.isSwitchInProgress())
         {
            param1.stopImmediatePropagation();
            closeButtonPressed();
         }
      }
      
      public static function switchPayment() : void
      {
         lobbyLayoutService.showPayment();
      }
      
      public function objectLoaded() : void
      {
         this.networker = Network(OSGi.getInstance().getService(INetworker));
         panelView = OSGi.getInstance().getService(IPanelView) as IPanelView;
         panelView.§get for with§(true,false,false,false,true);
         this.panel = panelView.getPanel();
         this.showPanel();
         this.addListeners();
         this.updateNavigationLock(null);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,this.updateNavigationLock);
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.updateNavigationLock);
         §get for import§(OSGi.getInstance().getService(FPSService)).start();
      }
      
      public function objectLoadedPost() : void
      {
         achievementService.setGarageBuyButtonTargetPoint(new Point(0,0));
         this.§-"'§();
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
      }
      
      private function §-"'§() : void
      {
         var _loc1_:Boolean = Boolean(this.panel.buttonBar.§for const false§());
         var _loc2_:int = 465 + 13 * 2 + 110 + 60;
         var _loc3_:RankBarHelper = new RankBarHelper(0.5,_loc2_,60);
         var _loc4_:RatingIndicatorHelper = new RatingIndicatorHelper(1,_loc2_,75 - (_loc1_ ? 180 : 90));
         var _loc5_:MainMenuHelper = new MainMenuHelper(1,_loc2_,60 + 110 + 13 * 2 + 140 + 6);
         var _loc6_:MoneyHelper = new MoneyHelper(1,_loc2_,_loc1_ ? 100 : 165);
         var _loc7_:ScoreHelper = new ScoreHelper();
         var _loc8_:RankHelper = new RankHelper();
         var _loc9_:FriendsHelper = new FriendsHelper(1,_loc2_,60 + 110 + 13 * 2 + 140 - 90);
         var _loc11_:Boolean;
         var _loc12_:Boolean = _loc11_ = true;
         var _loc13_:ButtonBarHelper = new ButtonBarHelper(1,45,-4,_loc12_);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_RANK,_loc8_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_RANK_BAR,_loc3_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_SCORE,_loc7_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_RATING_INDICATOR,_loc4_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_MAIN_MENU,_loc5_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_BUTTON_BAR,_loc13_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_MONEY,_loc6_,true);
         helpService.registerHelper(HELPER_GROUP_KEY,this.HELPER_FRIENDS,_loc9_,true);
      }
      
      private function addListeners() : void
      {
         this.panel.buttonBar.addEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
         battleInfoService.addEventListener(BattleInfoServiceEvent.BATTLE_UNLOAD,this.onBattleUnload);
         battleInfoService.addEventListener(BattleInfoServiceEvent.BATTLE_LOAD,this.onBattleLoad);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp,false,KeyUpListenerPriority.PANEL);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Array = null;
         if(param1.keyCode == KEYCODE_F11)
         {
            _loc2_ = Capabilities.version.substr(Capabilities.version.indexOf(" ") + 1).split(",");
            if(int(_loc2_[0]) == 11 && int(_loc2_[1]) >= 3 || int(_loc2_[0]) > 11)
            {
               if(display.stage.displayState == DISPLAY_STATE_NORMAL)
               {
                  display.stage.displayState = DISPLAY_STATE_FULL_SCREEN_INTERACTIVE;
               }
               else
               {
                  display.stage.displayState = DISPLAY_STATE_NORMAL;
               }
            }
         }
      }
      
      private function updateNavigationLock(param1:LobbyLayoutServiceEvent) : void
      {
         if(lobbyLayoutService.isSwitchInProgress())
         {
            this.lockMainPanel();
         }
         else
         {
            this.unlockMainPanel();
         }
         var _loc2_:LayoutState = lobbyLayoutService.getCurrentState();
         this.setButtonState(_loc2_);
      }
      
      private function onBattleLoad(param1:BattleInfoServiceEvent) : void
      {
         lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitchInBattle);
         this.panel.buttonBar.closeButton.show();
      }
      
      private function onBattleUnload(param1:BattleInfoServiceEvent) : void
      {
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitchInBattle);
         this.panel.buttonBar.closeButton.changeOnCloseButton();
      }
      
      private function onEndLayoutSwitchInBattle(param1:LobbyLayoutServiceEvent) : void
      {
         if(param1.state == LayoutState.BATTLE)
         {
            this.panel.buttonBar.closeButton.changeOnCloseButton();
         }
         else
         {
            this.panel.buttonBar.closeButton.changeOnBackButton();
         }
      }
      
      private function lockMainPanel() : void
      {
         this.panel.mouseEnabled = false;
         this.panel.mouseChildren = false;
      }
      
      private function unlockMainPanel() : void
      {
         this.panel.mouseEnabled = true;
         this.panel.mouseChildren = true;
      }
      
      private function setButtonState(param1:LayoutState, param2:Boolean = true) : void
      {
         switch(param1)
         {
            case LayoutState.BATTLE:
               this.panel.buttonBar.setEnablePaymentButton(true);
               this.panel.buttonBar.battlesButton.enable = true;
               this.panel.buttonBar.garageButton.enable = true;
               break;
            case LayoutState.BATTLE_SELECT:
               this.panel.buttonBar.setEnablePaymentButton(true);
               this.panel.buttonBar.battlesButton.enable = false;
               this.panel.buttonBar.garageButton.enable = true;
               break;
            case LayoutState.GARAGE:
               this.panel.buttonBar.setEnablePaymentButton(true);
               this.panel.buttonBar.garageButton.enable = false;
               this.panel.buttonBar.battlesButton.enable = true;
         }
      }
      
      private function removeDisplayObject(param1:DisplayObject) : void
      {
         if(param1 != null && param1.parent != null)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function objectUnloaded() : void
      {
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH,this.updateNavigationLock);
         lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.updateNavigationLock);
         achievementService.hideAllBubbles(false);
         this.hidePanel();
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,onKeyUp);
         this.removeDisplayObject(this.referalWindow);
         var _loc1_:IHelpService = OSGi.getInstance().getService(IHelpService) as IHelpService;
         _loc1_.hideHelp();
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_RANK);
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_RANK_BAR);
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_RATING_INDICATOR);
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_MAIN_MENU);
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_BUTTON_BAR);
         _loc1_.unregisterHelper(HELPER_GROUP_KEY,this.HELPER_SCORE);
         OSGi.getInstance().unregisterService(IMoneyService);
      }
      
      public function serverHalt(param1:ClientObject, param2:int, param3:int, param4:int, param5:String) : void
      {
         if(param5 != null && param5 != "null")
         {
            this.serverToRedirectTo = param5;
            this.redirectAlert = new ServerRedirectAlert(param4);
            display.dialogsLayer.addChild(this.redirectAlert);
            this.showRedirectAlertTimer = new Timer(param4 * 1000,1);
            this.showRedirectAlertTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.hideRedirectAlert);
            this.showRedirectAlertTimer.start();
            this.alignRedirectAlert();
            display.stage.addEventListener(Event.RESIZE,this.alignRedirectAlert);
         }
         else
         {
            this.stopAlert = new ServerStopAlert(param2);
            display.dialogsLayer.addChild(this.stopAlert);
            this.alignStopAlert();
            display.stage.addEventListener(Event.RESIZE,this.alignStopAlert);
         }
      }
      
      private function hideRedirectAlert(param1:TimerEvent) : void
      {
         display.stage.removeEventListener(Event.RESIZE,this.alignRedirectAlert);
         display.dialogsLayer.removeChild(this.redirectAlert);
         var _loc2_:String = (OSGi.getInstance().getService(ILocaleService) as ILocaleService).language;
         if(_loc2_ == null)
         {
            _loc2_ = "en";
         }
         navigateToURL(new URLRequest("http://tankionline.com/battle-" + _loc2_ + this.serverToRedirectTo.toString() + ".html"),"_self");
      }
      
      private function alignRedirectAlert(param1:Event = null) : void
      {
         this.redirectAlert.x = Math.round((display.stage.stageWidth - this.redirectAlert.width) * 0.5);
         this.redirectAlert.y = Math.round((display.stage.stageHeight - this.redirectAlert.height) * 0.5);
      }
      
      private function alignStopAlert(param1:Event = null) : void
      {
         this.stopAlert.x = Math.round((display.stage.stageWidth - this.stopAlert.width) * 0.5);
         this.stopAlert.y = Math.round((display.stage.stageHeight - this.stopAlert.height) * 0.5);
      }
      
      public function showMessage(param1:ClientObject, param2:String) : void
      {
         this._showMessage(param2);
      }
      
      public function _showMessage(param1:String) : void
      {
         var _loc2_:Alert = new Alert();
         _loc2_.showAlert(param1,Vector.<String>([§if const finally§.OK]));
      }
      
      private function onChangePassword(param1:SettingsWindowEvent) : void
      {
         if(this.settingsWindow.isPasswordChangeDisabled)
         {
            Network(OSGi.getInstance().getService(INetworker)).send("lobby;generate_key_email");
            display.cursorLayer.addChild(new ConfirmEmailCode(localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_ENTER_CODE),this.onEnterRecoveryCode));
         }
      }
      
      private function onEnterRecoveryCode(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;confirm_email_code_recovery;" + param1);
      }
      
      public function updatePasswordError(param1:ClientObject) : void
      {
         display.dialogsLayer.addChild(new Alert(Alert.ERROR_PASSWORD_CHANGE));
      }
      
      public function openRefererPanel(param1:ClientObject, param2:int, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:String = "http://" + localeService.getText(TextConst.GAME_BASE_URL) + "#friend=" + param3;
         this.referalWindow = new NewReferalWindow(param3,param4,_loc6_,param5);
         display.dialogsLayer.addChild(this.referalWindow);
         this.referalWindow.addEventListener(ReferalWindowEvent.SEND_MAIL,this.sendInvitation);
         this.referalWindow.closeButton.addEventListener(MouseEvent.CLICK,this.closeRefererPanel);
         display.stage.addEventListener(Event.RESIZE,this.alignReferalWindow);
         this.alignReferalWindow();
      }
      
      public function setInviteSendResult(param1:Boolean, param2:String) : void
      {
         if(param1)
         {
            this._showMessage(localeService.getText(TextConst.INVITATION_HAS_BEEN_SENT_ALERT_TEXT));
            this.referalWindow.clearRecipientInputField();
         }
         else
         {
            this._showMessage(param2);
         }
      }
      
      public function updateReferalsData(param1:Array) : void
      {
         if(this.referalWindow != null)
         {
            this.referalWindow.addReferals(param1);
         }
      }
      
      private function showPanel() : void
      {
         display.systemUILayer.addChild(this.panel);
      }
      
      private function hidePanel() : void
      {
         this.panel.hide();
         if(display.systemUILayer.contains(this.panel))
         {
            display.systemUILayer.removeChild(this.panel);
         }
         this.panel.buttonBar.removeEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
      }
      
      private function onButtonBarButtonClick(param1:MainButtonBarEvents) : void
      {
         achievementService.hideAllBubbles(false);
         this.§native for class§ = param1.typeButton;
         if(Boolean(lobbyLayoutService.inBattle()) && this.§-O§(param1.typeButton) && !lobbyLayoutService.isWindowOpenOverBattle())
         {
            this.§package var import§();
         }
         else
         {
            this.changeState();
         }
      }
      
      private function §-O§(param1:String) : Boolean
      {
         return [MainButtonBarEvents.BATTLE,MainButtonBarEvents.GARAGE].indexOf(param1) >= 0;
      }
      
      private function §package var import§() : void
      {
         var _loc1_:String = this.§default for each§();
         var _loc2_:Vector.<Sprite> = new Vector.<Sprite>();
         var _loc3_:* = new GreenMediumButton();
         _loc3_.label = §if const finally§.YES;
         _loc2_.push(_loc3_);
         var _loc4_:* = new RedButton();
         _loc4_.label = §if const finally§.NO;
         _loc2_.push(_loc4_);
         var _loc5_:* = new DefaultButtonBase();
         _loc5_.label = §if const finally§.CANCEL;
         _loc2_.push(_loc5_);
         alertService.§1"D§(_loc1_,Vector.<String>([§if const finally§.YES,§if const finally§.NO,§if const finally§.CANCEL]),_loc2_);
         alertService.addEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,this.onQuitBattleDialogButtonPressed);
      }
      
      private function §default for each§() : String
      {
         return localeService.getText(TanksLocale.TEXT_ALERT_STAY_IN_BATTLE);
      }
      
      private function onQuitBattleDialogButtonPressed(param1:AlertServiceEvent) : void
      {
         alertService.removeEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,this.onQuitBattleDialogButtonPressed);
         switch(param1.typeButton)
         {
            case §if const finally§.CANCEL:
               this.setButtonState(LayoutState.BATTLE);
               break;
            case §if const finally§.NO:
               lobbyLayoutService.exitFromBattleToState(this.§do for in§());
               break;
            case §if const finally§.YES:
               this.changeState();
         }
      }
      
      private function §do for in§() : LayoutState
      {
         switch(this.§native for class§)
         {
            case MainButtonBarEvents.GARAGE:
               return LayoutState.GARAGE;
            default:
               return LayoutState.BATTLE_SELECT;
         }
      }
      
      private function changeState() : void
      {
         switch(this.§native for class§)
         {
            case MainButtonBarEvents.BATTLE:
               lobbyLayoutService.showBattleSelect();
               break;
            case MainButtonBarEvents.CLOSE:
               closeButtonPressed();
               break;
            case MainButtonBarEvents.GARAGE:
               lobbyLayoutService.showGarage();
               break;
            case MainButtonBarEvents.HELP:
               this.showHelpers();
               break;
            case MainButtonBarEvents.ADDMONEY:
               switchPayment();
         }
      }
      
      public function onShowPayment(param1:Object) : void
      {
         this.shopModel.init(param1);
      }
      
      private function showHelpers() : void
      {
         helpService.showHelp();
         panelView.unlock();
      }
      
      private function showQuitDialog() : void
      {
         var _loc1_:Alert = new Alert(Alert.ALERT_QUIT);
         display.dialogsLayer.addChild(_loc1_);
         _loc1_.addEventListener(AlertEvent.ALERT_BUTTON_PRESSED,this.onAlertButtonPressed);
      }
      
      public function showQuitBattleDialog() : void
      {
      }
      
      private function hideHelp(param1:MouseEvent) : void
      {
         display.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.hideHelp);
      }
      
      private function alignReferalWindow(param1:Event = null) : void
      {
         this.referalWindow.x = Math.round((display.stage.stageWidth - this.referalWindow.windowSize.x) * 0.5);
         this.referalWindow.y = Math.round((display.stage.stageHeight - this.referalWindow.windowSize.y) * 0.5);
      }
      
      private function closeRefererPanel(param1:MouseEvent = null) : void
      {
         this.referalWindow.removeEventListener(ReferalWindowEvent.SEND_MAIL,this.sendInvitation);
         this.referalWindow.closeButton.removeEventListener(MouseEvent.CLICK,this.closeRefererPanel);
         display.stage.removeEventListener(Event.RESIZE,this.alignReferalWindow);
         display.dialogsLayer.removeChild(this.referalWindow);
         this.referalWindow = null;
      }
      
      private function updatePassword(param1:ClientObject, param2:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;change_password;" + param2);
      }
      
      private function updateProfile(param1:ClientObject, param2:String, param3:Boolean) : void
      {
         var _loc4_:RegExp = null;
         var _loc5_:Object = null;
         if(param2 != null && param2 != "")
         {
            _loc4_ = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
            _loc5_ = _loc4_.exec(param2);
            if(param2.length > 0 && _loc5_ != null)
            {
               Network(OSGi.getInstance().getService(INetworker)).send("lobby;update_profile;" + param2);
               this.postUpdateProfile();
            }
         }
      }
      
      private function postUpdateProfile() : void
      {
         display.cursorLayer.addChild(new ConfirmEmailCode(localeService.getText(TextConst.ACCOUNT_RECOVERY_FORM_ENTER_CODE),this.onEnterConfirmCode));
      }
      
      private function onEnterConfirmCode(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;confirm_email_code;" + param1);
      }
      
      public function openRecoveryWindow(param1:String) : void
      {
         new RecoveryWindow(this.onSavedRecovery,param1);
      }
      
      private function onSavedRecovery(param1:String, param2:String) : void
      {
         if(param1 == null || param1 == "")
         {
            param1 = " ";
         }
         if(param2 == null || param2 == "")
         {
            param2 = " ";
         }
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;change_pass_email;" + param1 + ";" + param2);
      }
      
      private function sendInvitation(param1:ReferalWindowEvent) : void
      {
         var _loc6_:Object = null;
         var _loc2_:Array = param1.adresses.split(",");
         var _loc3_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         var _loc4_:Array = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc6_ = _loc3_.exec(_loc2_[_loc5_]);
            if(_loc6_ == null)
            {
               _loc4_.push(_loc2_[_loc5_]);
            }
            _loc5_++;
         }
         if(_loc4_.length > 0)
         {
            if(_loc4_.length == 1)
            {
               this._showMessage(localeService.getText(TextConst.REFERAL_WINDOW_ADDRESS_NOT_VALID_ALERT_TEXT,_loc4_[0]));
            }
            else
            {
               this._showMessage(localeService.getText(TextConst.REFERAL_WINDOW_ADDRESSES_NOT_VALID_ALERT_TEXT,_loc4_.join(", ")));
            }
         }
      }
      
      private function onAlertButtonPressed(param1:AlertEvent) : void
      {
         if(param1.typeButton == §if const finally§.YES)
         {
            StartupSettings.closeApplication();
            IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage().data.userHash = null;
            IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage().flush();
         }
      }
   }
}

