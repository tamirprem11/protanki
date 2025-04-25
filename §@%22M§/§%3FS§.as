package §@"M§
{
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.service.settings.§>k§;
   import controls.Label;
   import controls.TankWindowInner;
   import controls.checkbox.§#!#§;
   import controls.containers.§0U§;
   import controls.containers.§1"C§;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import §while set false§.§%!+§;
   import §while set false§.§2h§;
   
   public class §?S§ extends §2h§
   {
      [Inject]
      public static var battleInviteService:IBattleInviteService;
      
      private var §final const default§:§#!#§;
      
      private var §5i§:§#!#§;
      
      private var §try set throw§:§%!+§;
      
      public function §?S§(param1:Boolean)
      {
         var _loc5_:§0U§ = null;
         super();
         var _loc2_:§1"C§ = new §1"C§();
         _loc2_.x = MARGIN;
         _loc2_.y = MARGIN;
         _loc2_.§1'§(MARGIN);
         _loc2_.addItem(createCheckBox(§>k§.SHOW_DAMAGE,localeService.getText(TanksLocale.TEXT_SHOW_DAMAGE),settingsService.showDamage));
         _loc2_.addItem(createCheckBox(§>k§.§extends for super§,localeService.getText(TanksLocale.TEXT_SETTINGS_ALTERNATE_CAMERA_LABEL_TEXT),settingsService.alternateCamera));
         var _loc3_:§1"C§ = new §1"C§();
         _loc3_.§1'§(MARGIN);
         _loc3_.y = MARGIN;
         _loc3_.x = SettingsWindow.§while set static§ * 0.5;
         this.§final const default§ = this.§use extends§(localeService.getText(TanksLocale.TEXT_SETTINGS_MESSAGE_ONLY_FROM_FRIENDS),param1);
         this.§final const default§.addEventListener(MouseEvent.CLICK,this.§try for continue§);
         _loc3_.addItem(createCheckBox(§>k§.§'!4§,localeService.getText(TanksLocale.TEXT_SETTINGS_SHOW_CHAT_CHECKBOX_LABEL_TEXT),settingsService.showChat));
         this.§5i§ = this.§use extends§(localeService.getText(TanksLocale.TEXT_SHOW_NOTIFICATIONS_LABEL),battleInviteService.receiveBattleInvite);
         this.§5i§.addEventListener(MouseEvent.CLICK,this.§true const throw§);
         _loc3_.addItem(this.§5i§);
         var _loc4_:TankWindowInner = new TankWindowInner(SettingsWindow.§while set static§,_loc2_.height + 2 * MARGIN,TankWindowInner.TRANSPARENT);
         _loc4_.addChild(_loc2_);
         _loc4_.addChild(_loc3_);
         addChild(_loc4_);
         _loc5_ = this.createSoundPanel();
         _loc5_.y = _loc4_.y + _loc4_.height + §native const function§;
         addChild(_loc5_);
      }
      
      private function createSoundPanel() : §0U§
      {
         var _loc1_:§1"C§ = new §1"C§();
         _loc1_.§1'§(§use const for§);
         var _loc2_:Label = new Label();
         _loc2_.text = localeService.getText(TanksLocale.TEXT_SETTINGS_SOUND_VOLUME_LABEL_TEXT);
         _loc1_.addItem(_loc2_);
         this.§try set throw§ = new §%!+§();
         _loc1_.addItem(this.§try set throw§);
         return _loc1_;
      }
      
      private function §true const throw§(param1:MouseEvent) : void
      {
         battleInviteService.receiveBattleInvite = this.§5i§.checked;
      }
      
      private function §try for continue§(param1:MouseEvent) : void
      {
         dispatchEvent(new ReceivePersonalMessagesSettingEvent(ReceivePersonalMessagesSettingEvent.§if include§,this.§final const default§.checked));
      }
      
      protected function §use extends§(param1:String, param2:Boolean, param3:int = 0, param4:int = 0) : §#!#§
      {
         var _loc5_:§#!#§ = new §#!#§();
         _loc5_.checked = param2;
         _loc5_.x = param3;
         _loc5_.y = param4;
         _loc5_.label = param1;
         return _loc5_;
      }
      
      override public function destroy() : void
      {
         this.§5i§.removeEventListener(MouseEvent.CLICK,this.§true const throw§);
         this.§final const default§.removeEventListener(MouseEvent.CLICK,this.§try for continue§);
         this.§try set throw§.destroy();
         super.destroy();
      }
   }
}

