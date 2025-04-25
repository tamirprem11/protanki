package §while set false§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.service.settings.§>k§;
   import controls.Slider;
   import controls.TankWindowInner;
   import controls.base.LabelBase;
   import controls.checkbox.§#!#§;
   import forms.events.SliderEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.§]r§;
   
   public class §%!+§ extends §2h§
   {
      [Inject]
      public static var display:IDisplay;
      
      private var volumeLevel:Slider;
      
      private var bgSound:§#!#§;
      
      public function §%!+§()
      {
         var _loc1_:TankWindowInner = null;
         var _loc2_:LabelBase = null;
         super();
         _loc1_ = new TankWindowInner(SettingsWindow.§while set static§,0,TankWindowInner.TRANSPARENT);
         _loc2_ = new LabelBase();
         _loc1_.addChild(_loc2_);
         _loc2_.text = localeService.getText(TanksLocale.TEXT_SETTINGS_SOUND_VOLUME_LABEL_TEXT);
         _loc2_.x = MARGIN;
         this.volumeLevel = new Slider();
         this.volumeLevel.maxValue = 100;
         this.volumeLevel.minValue = 0;
         this.volumeLevel.tickInterval = 5;
         this.volumeLevel.x = _loc2_.x + _loc2_.textWidth + MARGIN;
         this.volumeLevel.y = MARGIN;
         this.volumeLevel.width = SettingsWindow.§while set static§ - 2 * MARGIN - _loc2_.width - 1;
         if(localeService.language == §]r§.§@"h§)
         {
            this.volumeLevel.width -= 4;
         }
         this.volume = settingsService.§4!v§;
         this.volumeLevel.addEventListener(SliderEvent.CHANGE_VALUE,this.onChangeVolume);
         _loc1_.addChild(this.volumeLevel);
         this.bgSound = createCheckBox(§>k§.§99§,localeService.getText(TanksLocale.TEXT_SETTINGS_BACKGROUND_SOUND_CHECKBOX_LABEL_TEXT),settingsService.bgSound,MARGIN,0);
         this.bgSound.x = MARGIN;
         this.bgSound.y = MARGIN + this.volumeLevel.y + this.volumeLevel.height;
         _loc1_.addChild(this.bgSound);
         _loc1_.height = MARGIN + this.bgSound.y + this.bgSound.height;
         _loc2_.y = this.volumeLevel.y + Math.round((this.volumeLevel.height - _loc2_.textHeight) * 0.5) - 2;
         addChild(_loc1_);
      }
      
      private function onChangeVolume(param1:SliderEvent) : void
      {
         settingsService.§4!v§ = this.volume;
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      public function §?"8§() : Boolean
      {
         return this.bgSound.checked;
      }
      
      public function §-"<§(param1:Boolean) : void
      {
         this.bgSound.checked = param1;
      }
      
      public function get volume() : Number
      {
         return this.volumeLevel.value / 100;
      }
      
      public function set volume(param1:Number) : void
      {
         this.volumeLevel.value = int(param1 * 100);
      }
      
      override public function destroy() : void
      {
         this.volumeLevel.removeEventListener(SliderEvent.CHANGE_VALUE,this.onChangeVolume);
         super.destroy();
      }
   }
}

