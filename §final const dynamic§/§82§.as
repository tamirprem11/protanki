package §final const dynamic§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.service.settings.§>k§;
   import base.DiscreteSprite;
   import controls.Slider;
   import controls.TankWindowInner;
   import controls.base.LabelBase;
   import controls.containers.§1"C§;
   import forms.events.SliderEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import §while set false§.§const for native§;
   
   public class §82§ extends §const for native§
   {
      [Inject]
      public static var §in const§:FullscreenService;
      
      [Inject]
      public static var display:IDisplay;
      
      public static const §set for throw§:int = 1;
      
      public static const §"!M§:int = 20;
      
      private var mouseSensitivity:Slider;
      
      public function §82§()
      {
         super();
         var _loc1_:TankWindowInner = new TankWindowInner(SettingsWindow.§while set static§,SettingsWindow.§-"5§,TankWindowInner.TRANSPARENT);
         addChildAt(_loc1_,0);
         var _loc2_:§1"C§ = new §1"C§();
         _loc2_.§1'§(MARGIN);
         _loc2_.x = MARGIN;
         _loc2_.y = §["§;
         if(!§in const§.isMouseLockDisabled())
         {
            _loc2_.addItem(this.§return implements§());
         }
         _loc2_.addItem(createCheckBox(§>k§.§[!O§,localeService.getText(TanksLocale.TEXT_SETTINGS_INVERSE_TURN_CONTROL_CHECKBOX_LABEL_TEXT),settingsService.inverseBackDriving));
         _loc2_.addItem(new §set for dynamic§());
         addItem(_loc2_);
      }
      
      private function §return implements§() : DiscreteSprite
      {
         var _loc1_:§1"C§ = new §1"C§();
         _loc1_.§1'§(MARGIN);
         _loc1_.addItem(createCheckBox(§>k§.§""%§,localeService.getText(TanksLocale.TEXT_SETTINGS_MOUSE_CONTROL_CHECKBOX),settingsService.mouseControl));
         _loc1_.addItem(this.§for for super§());
         _loc1_.addItem(createCheckBox(§>k§.§^w§,localeService.getText(TanksLocale.TEXT_SETTINGS_MOUSE_INVERSION_CHECKBOX_LABEL),settingsService.mouseYInverse));
         _loc1_.addItem(createCheckBox(§>k§.§dynamic set import§,localeService.getText(TanksLocale.TEXT_SETTINGS_MOUSE_SHAFT_SCOPE_VERTICAL_INVERSION),settingsService.mouseYInverseShaftAim));
         return _loc1_;
      }
      
      private function §for for super§() : DiscreteSprite
      {
         var _loc1_:DiscreteSprite = null;
         var _loc2_:LabelBase = null;
         _loc1_ = new DiscreteSprite();
         _loc2_ = new LabelBase();
         _loc2_.text = localeService.getText(TanksLocale.TEXT_SETTINGS_MOUSE_SENSITIVITY_CHECKBOX_LABEL) + ":";
         _loc1_.addChild(_loc2_);
         this.mouseSensitivity = new Slider();
         this.mouseSensitivity.maxValue = §"!M§;
         this.mouseSensitivity.minValue = §set for throw§;
         this.mouseSensitivity.tickInterval = 1;
         this.mouseSensitivity.width = SettingsWindow.§while set static§ - MARGIN * 4 - _loc2_.width;
         this.mouseSensitivity.x = _loc2_.width + MARGIN;
         this.mouseSensitivity.value = settingsService.mouseSensitivity;
         this.mouseSensitivity.addEventListener(SliderEvent.CHANGE_VALUE,this.§+$§);
         _loc2_.y = Math.round((this.mouseSensitivity.height - _loc2_.textHeight) * 0.5) - 2;
         _loc1_.addChild(this.mouseSensitivity);
         return _loc1_;
      }
      
      private function §+$§(param1:SliderEvent) : void
      {
         settingsService.§'g§(§>k§.§5!z§,this.mouseSensitivity.value);
      }
      
      override public function destroy() : void
      {
         if(!§in const§.isMouseLockDisabled())
         {
            this.mouseSensitivity.removeEventListener(SliderEvent.CHANGE_VALUE,this.§+$§);
         }
         super.destroy();
      }
   }
}

