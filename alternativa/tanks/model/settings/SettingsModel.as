package alternativa.tanks.model.settings
{
   import §6![§.§'"T§;
   import §6![§.§6!U§;
   import §?!h§.§4!1§;
   import §?!h§.§package try§;
   import §?!h§.§throw const catch§;
   import §@"M§.ReceivePersonalMessagesSettingEvent;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.gui.settings.SettingsWindowEvent;
   import alternativa.tanks.model.antiaddiction.IAntiAddictionAlert;
   import alternativa.tanks.model.useremailandpassword.IUserEmailAndPassword;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.servermodels.captcha.CaptchaParser;
   import alternativa.tanks.servermodels.captcha.IServerCaptcha;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.view.events.RefreshCaptchaClickedEvent;
   import §false finally§.§with const§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import forms.events.MainButtonBarEvents;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import services.alertservice.Alert;
   import services.alertservice.§if const finally§;
   
   public class SettingsModel extends §4!1§ implements §package try§, ObjectLoadPostListener, ObjectUnloadListener
   {
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var panelView:IPanelView;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var battleInviteService:IBattleInviteService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var fullscreenService:FullscreenService;
      
      [Inject]
      public static var §5!M§:PasswordService;
      
      private var settingsWindow:SettingsWindow;
      
      private var emailConfirmed:Boolean;
      
      private var §-!w§:Boolean;
      
      public function SettingsModel()
      {
         super();
      }
      
      public function openAntiAddictionSettings(param1:§with const§, param2:String, param3:String) : void
      {
         this.openSettingsWindow(param1,true,param2,param3);
      }
      
      public function openSettings(param1:§with const§) : void
      {
         this.openSettingsWindow(param1,false,"","");
      }
      
      private function openSettingsWindow(param1:§with const§, param2:Boolean, param3:String, param4:String) : void
      {
         this.emailConfirmed = settingsService.§do const var§();
         if(this.settingsWindow != null)
         {
            return;
         }
         this.§-!w§ = param1 == §with const§.FRIENDS_ONLY;
         this.settingsWindow = new SettingsWindow(settingsService.getEmail(),this.emailConfirmed,this.§-!w§,param2,param3,param4);
         if(!this.emailConfirmed)
         {
            this.settingsWindow.addEventListener(§6!U§.SET_EMAIL,this.§9O§);
            this.settingsWindow.addEventListener(§6!U§.CHANGE_PASSWORD,this.§4!E§);
         }
         this.settingsWindow.addEventListener(SettingsWindowEvent.§catch for with§,this.§get const set§);
         this.settingsWindow.addEventListener(§6!U§.§null var for§,this.§null var if§);
         this.settingsWindow.addEventListener(§6!U§.§!"c§,this.§try for with§);
         this.settingsWindow.addEventListener(§6!U§.§"l§,this.§true for null§);
         this.settingsWindow.addEventListener(ReceivePersonalMessagesSettingEvent.§if include§,this.§8!3§);
         panelView.unlock();
         if(!settingsService.§%"G§)
         {
            §5!M§.§,!-§(this.§6!o§);
         }
         else
         {
            this.settingsWindow.show();
         }
         var _loc5_:§'"T§ = this.settingsWindow.§-"$§();
         if(_loc5_)
         {
            _loc5_.addEventListener(RefreshCaptchaClickedEvent.CLICKED,this.onRefreshCaptcha);
            this.getNewCaptcha();
         }
      }
      
      private function §try for with§(param1:§6!U§) : void
      {
         §5!M§.§["b§(this.settingsWindow.§-"$§().§2!i§(),this.§4!E§);
      }
      
      private function §true for null§(param1:§6!U§) : void
      {
         var _loc2_:§'"T§ = this.settingsWindow.§-"$§();
         if(_loc2_.initialRealName != _loc2_.realName || _loc2_.idNumber != _loc2_.initialIDNumber)
         {
            IAntiAddictionAlert(object.adapt(IAntiAddictionAlert)).setIdNumberAndRealName(_loc2_.realName,_loc2_.idNumber);
         }
      }
      
      private function §with set§() : void
      {
         if(!this.emailConfirmed)
         {
            this.settingsWindow.removeEventListener(§6!U§.SET_EMAIL,this.§9O§);
            this.settingsWindow.removeEventListener(§6!U§.CHANGE_PASSWORD,this.§4!E§);
         }
         this.settingsWindow.removeEventListener(SettingsWindowEvent.§catch for with§,this.§get const set§);
         this.settingsWindow.removeEventListener(§6!U§.§null var for§,this.§null var if§);
         this.settingsWindow.removeEventListener(§6!U§.§!"c§,this.§try for with§);
         this.settingsWindow.removeEventListener(ReceivePersonalMessagesSettingEvent.§if include§,this.§8!3§);
         this.settingsWindow.removeEventListener(§6!U§.§"l§,this.§true for null§);
         panelView.getPanel().buttonBar.settingsButton.enable = true;
         this.§set set use§();
         this.settingsWindow.destroy();
         this.settingsWindow = null;
      }
      
      private function §null var if§(param1:§6!U§) : void
      {
         var _loc2_:§'"T§ = null;
         _loc2_ = null;
         _loc2_ = this.settingsWindow.§-"$§();
         if(this.emailConfirmed)
         {
            IUserEmailAndPassword(OSGi.getInstance().getService(PasswordService)).sendChangeInstruction(_loc2_.§else var do§());
         }
      }
      
      public function §get const set§(param1:Event = null) : void
      {
         if(this.settingsWindow != null)
         {
            this.§with set§();
         }
      }
      
      private function §9O§(param1:Event = null) : void
      {
         var _loc2_:§'"T§ = null;
         if(!this.emailConfirmed)
         {
            _loc2_ = this.settingsWindow.§-"$§();
            if(_loc2_.email)
            {
               IUserEmailAndPassword(OSGi.getInstance().getService(PasswordService)).changeEmail(_loc2_.email,_loc2_.§else var do§());
            }
         }
      }
      
      private function §4!E§(param1:Boolean) : void
      {
         var _loc2_:§'"T§ = null;
         if(param1)
         {
            _loc2_ = this.settingsWindow.§-"$§();
            if(!this.emailConfirmed && _loc2_.password != "")
            {
               this.§6!T§();
            }
         }
         else
         {
            this.settingsWindow.§-"$§().§final for extends§();
         }
      }
      
      private function §6!T§() : void
      {
         var _loc1_:§'"T§ = this.settingsWindow.§-"$§();
         if(_loc1_.§2!i§() == "")
         {
            §5!M§.§try const native§(_loc1_.password);
         }
         else
         {
            §5!M§.updatePassword(_loc1_.§2!i§(),_loc1_.password,_loc1_.§else var do§());
         }
      }
      
      private function §8!3§(param1:ReceivePersonalMessagesSettingEvent) : void
      {
      }
      
      public function objectLoadedPost() : void
      {
         panelView.getPanel().buttonBar.soundOn = !settingsService.muteSound;
         settingsService.§'!5§();
         panelView.getPanel().buttonBar.addEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
         var _loc1_:String = IUserEmailAndPassword(OSGi.getInstance().getService(PasswordService)).getEmail();
         this.§set set use§();
      }
      
      private function §set set use§() : void
      {
         var _loc1_:§throw const catch§ = new §throw const catch§();
         _loc1_.§switch for package§ = settingsService.showDamage;
         server.§0!e§(_loc1_);
      }
      
      private function onButtonBarButtonClick(param1:MainButtonBarEvents) : void
      {
         switch(param1.typeButton)
         {
            case MainButtonBarEvents.SOUND:
               this.toggleSoundMute();
               break;
            case MainButtonBarEvents.SETTINGS:
               server.showSettings();
         }
      }
      
      public function objectUnloaded() : void
      {
         if(panelView.getPanel() != null)
         {
            panelView.getPanel().buttonBar.removeEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
         }
      }
      
      private function toggleSoundMute() : void
      {
         settingsService.muteSound = !settingsService.muteSound;
         panelView.unlock();
      }
      
      public function §6!o§(param1:Boolean) : void
      {
         if(param1)
         {
            settingsService.§%"G§ = true;
         }
         else
         {
            this.settingsWindow.§-"$§().§5";§();
         }
         this.settingsWindow.show();
      }
      
      public function captchaUpdated(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         CaptchaParser.parse(param2,this.§^!x§,param1);
      }
      
      private function §^!x§(param1:Bitmap, param2:CaptchaLocation) : void
      {
         var _loc3_:§'"T§ = null;
         if(param2 == CaptchaLocation.ACCOUNT_SETTINGS_FORM)
         {
            _loc3_ = this.settingsWindow.§-"$§();
            _loc3_.§>!K§(param1);
         }
      }
      
      public function §package var extends§(param1:Vector.<CaptchaLocation>) : void
      {
      }
      
      public function captchaAnswerCorrect(param1:CaptchaLocation) : void
      {
         var _loc2_:§'"T§ = this.settingsWindow.§-"$§();
         if(this.emailConfirmed)
         {
            _loc2_.§`!g§();
            alertService.showAlert(localeService.getText(TanksLocale.TEXT_SETTINGS_CHANGE_PASSWORD_CONFIRMATION_SENT_TEXT),Vector.<String>([§if const finally§.OK]));
         }
      }
      
      public function §override const return§(param1:CaptchaLocation, param2:Vector.<int>) : void
      {
         alertService.showAlertById(Alert.CAPTCHA_INCORRECT);
      }
      
      private function onRefreshCaptcha(param1:RefreshCaptchaClickedEvent) : void
      {
         this.getNewCaptcha();
      }
      
      private function getNewCaptcha() : void
      {
         IServerCaptcha(OSGi.getInstance().getService(IServerCaptcha)).getNewCaptcha(CaptchaLocation.ACCOUNT_SETTINGS_FORM);
      }
   }
}

