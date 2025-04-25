package forms
{
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import §case var while§.§package var implements§;
   import controls.base.MainPanelBattlesButtonBase;
   import controls.base.MainPanelGarageButtonBase;
   import controls.friends.FriendsButton;
   import controls.panel.BaseButton;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import forms.buttons.§'!]§;
   import forms.buttons.MainPanelDonateButton;
   import forms.buttons.MainPanelWideButton;
   import forms.events.MainButtonBarEvents;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.buttonbar.IButtonBarService;
   
   public class ButtonBar extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var buttonBarService:IButtonBarService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      public var battlesButton:MainPanelBattlesButton = new MainPanelBattlesButtonBase();
      
      public var garageButton:MainPanelGarageButton = new MainPanelGarageButtonBase();
      
      public var friendsButton:FriendsButton = new FriendsButton();
      
      public var statButton:MainPaneHallButton = new MainPaneHallButton();
      
      public var referalsButton:MainPanelReferalButton = new MainPanelReferalButton();
      
      public var bugsButton:MainPanelBugButton = new MainPanelBugButton();
      
      public var settingsButton:MainPanelConfigButton = new MainPanelConfigButton();
      
      public var soundButton:MainPanelSoundButton = new MainPanelSoundButton();
      
      public var helpButton:MainPanelHelpButton = new MainPanelHelpButton();
      
      public var closeButton:CloseOrBackButton = new CloseOrBackButton();
      
      public var addButton:BaseButton;
      
      public var donateNormalButton:MainPanelWideButton = new MainPanelDonateButton();
      
      private var §,S§:§package var implements§ = new §package var implements§();
      
      private var _soundOn:Boolean = true;
      
      private var soundIcon:MovieClip;
      
      public var isTester:Boolean = false;
      
      public var _hasDoubleCrystal:Boolean = false;
      
      public var _isFirstBattleMode:Boolean = false;
      
      public var _isNoReferalButton:Boolean = false;
      
      private var _linkMode:Array = new Array();
      
      public function ButtonBar(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Array = null)
      {
         super();
         this._isFirstBattleMode = param3;
         addChild(this.battlesButton);
         this.battlesButton.type = 4;
         this.battlesButton.label = localeService.getText(TextConst.MAIN_PANEL_BUTTON_BATTLES);
         this.battlesButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.garageButton);
         this.garageButton.type = 5;
         this.garageButton.label = localeService.getText(TextConst.MAIN_PANEL_BUTTON_GARAGE);
         this.garageButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.friendsButton);
         this.§,S§.label = localeService.getText(TanksLocale.§if for include§);
         this.§,S§.type = 15;
         this.§,S§.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.§,S§);
         this.friendsButton.type = 14;
         this.friendsButton.label = localeService.getText(TextConst.MAIN_PANEL_BUTTON_FRIENDS);
         this.friendsButton.addEventListener(MouseEvent.CLICK,this.listClick);
         this.statButton.type = 4;
         this.statButton.label = localeService.getText(TextConst.MAIN_PANEL_BUTTON_HALL);
         this.statButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.referalsButton);
         this.referalsButton.type = 13;
         this.referalsButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.bugsButton);
         this.bugsButton.type = 9;
         this.bugsButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.settingsButton);
         this.settingsButton.type = 7;
         this.settingsButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.soundButton);
         this.soundButton.type = 8;
         this.soundButton.addEventListener(MouseEvent.CLICK,this.listClick);
         this.soundIcon = this.soundButton.getChildByName("icon") as MovieClip;
         addChild(this.helpButton);
         this.helpButton.type = 9;
         this.helpButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.closeButton);
         this.closeButton.addEventListener(MouseEvent.CLICK,this.listClick);
         if(this._hasDoubleCrystal)
         {
            this.donateNormalButton = new §'!]§();
         }
         else
         {
            this.donateNormalButton = new MainPanelDonateButton();
         }
         addChild(this.donateNormalButton);
         this.donateNormalButton.type = 1;
         this.donateNormalButton.label = localeService.getText(TextConst.MAIN_PANEL_BUTTON_DONATE);
         this.donateNormalButton.addEventListener(MouseEvent.CLICK,this.listClick);
         if(this._isFirstBattleMode)
         {
            this.donateNormalButton.visible = false;
            this.battlesButton.visible = false;
            this.garageButton.visible = false;
            this.friendsButton.visible = false;
            this.referalsButton.visible = false;
            this.bugsButton.visible = false;
            this.settingsButton.visible = false;
         }
         else
         {
            this.referalsButton.visible = !this._isNoReferalButton;
         }
         this.draw();
      }
      
      public function setEnablePaymentButton(param1:Boolean) : void
      {
         this.donateNormalButton.enable = param1;
      }
      
      public function draw() : void
      {
         this.§,S§.visible = this.§for const false§();
         this.§,S§.x = this.donateNormalButton.x + this.donateNormalButton.width + 7;
         this.friendsButton.x = this.§,S§.x + (this.§,S§.visible ? this.§,S§.width : 0);
         this.battlesButton.x = this.friendsButton.x + this.friendsButton.width;
         this.garageButton.x = this.battlesButton.x + this.battlesButton.width;
         this.referalsButton.x = this.garageButton.x + this.garageButton.width + 6;
         var _loc1_:Boolean = false;
         this.referalsButton.x = this.garageButton.x + this.garageButton.width + (_loc1_ ? 86 : 6);
         this.bugsButton.visible = this.isTester;
         if(this._isNoReferalButton)
         {
            if(!this.isTester)
            {
               this.bugsButton.x = this.referalsButton.x;
               this.settingsButton.x = this.bugsButton.x + this.bugsButton.width;
            }
            else
            {
               this.settingsButton.x = this.referalsButton.x;
            }
         }
         else if(this.isTester)
         {
            this.bugsButton.x = this.referalsButton.x + this.referalsButton.width;
            this.settingsButton.x = this.bugsButton.x + this.bugsButton.width;
         }
         else
         {
            this.settingsButton.x = this.referalsButton.x + this.referalsButton.width;
         }
         this.soundButton.x = this.settingsButton.x + this.settingsButton.width;
         this.helpButton.x = this.soundButton.x + this.soundButton.width;
         this.closeButton.x = this.helpButton.x + this.helpButton.width + 11;
         this.donateNormalButton.visible = true;
         this.soundIcon.gotoAndStop(this.soundOn ? 1 : 2);
      }
      
      public function §for const false§() : Boolean
      {
         return userPropertiesService.rank >= 4;
      }
      
      public function set soundOn(param1:Boolean) : void
      {
         this._soundOn = param1;
         this.draw();
      }
      
      public function get soundOn() : Boolean
      {
         return this._soundOn;
      }
      
      public function set hasDoubleCrystal(param1:Boolean) : void
      {
         this._hasDoubleCrystal = param1;
         removeChild(this.donateNormalButton);
         var _loc2_:String = this.donateNormalButton.savelLabel;
         if(this._hasDoubleCrystal)
         {
            this.donateNormalButton = new §'!]§();
         }
         else
         {
            this.donateNormalButton = new MainPanelDonateButton();
         }
         this.donateNormalButton.label = _loc2_;
         this.donateNormalButton.addEventListener(MouseEvent.CLICK,this.listClick);
         addChild(this.donateNormalButton);
         this.setEnablePaymentButton(false);
      }
      
      private function listClick(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         _loc2_ = param1.currentTarget;
         if(_loc2_.enable)
         {
            dispatchEvent(new MainButtonBarEvents(_loc2_.type));
            buttonBarService.change(_loc2_.type);
         }
         if(_loc2_ == this.soundButton)
         {
            this.soundOn = !this.soundOn;
         }
      }
   }
}

