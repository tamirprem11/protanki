package §while set false§
{
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.service.settings.§>k§;
   import controls.TankWindowInner;
   import controls.checkbox.§#!#§;
   import flash.events.MouseEvent;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import §set const case§.GridLayout;
   
   public class §45§ extends §2h§
   {
      private var performanceInner:TankWindowInner;
      
      private var cbShowFPS:§#!#§;
      
      private var cbAdaptiveFPS:§#!#§;
      
      private var cbShowSkyBox:§#!#§;
      
      private var cbAntialiasing:§#!#§;
      
      private var cbDynamicLighting:§#!#§;
      
      private var cbMipMapping:§#!#§;
      
      private var cbFog:§#!#§;
      
      private var cbTankShadow:§#!#§;
      
      private var cbDynamicShadows:§#!#§;
      
      private var cbSoftParticles:§#!#§;
      
      private var cbDust:§#!#§;
      
      private var cbSSAO:§#!#§;
      
      private var cbGraphicsAutoQuality:§#!#§;
      
      public function §45§()
      {
         var _loc1_:int = 0;
         super();
         this.performanceInner = new TankWindowInner(0,0,TankWindowInner.TRANSPARENT);
         this.performanceInner.width = SettingsWindow.§while set static§;
         this.performanceInner.x = this.performanceInner.y = 0;
         addChild(this.performanceInner);
         this.cbShowFPS = createCheckBox(§>k§.§finally§,localeService.getText(TanksLocale.TEXT_SETTINGS_SHOW_FPS_CHECKBOX),settingsService.showFPS);
         addChild(this.cbShowFPS);
         this.cbAdaptiveFPS = createCheckBox(§>k§.§4N§,localeService.getText(TanksLocale.TEXT_SETTINGS_ENABLE_ADAPTIVE_FPS_CHECKBOX_LABEL_TEXT),settingsService.adaptiveFPS);
         addChild(this.cbAdaptiveFPS);
         this.cbShowSkyBox = createCheckBox(§>k§.§package final§,localeService.getText(TanksLocale.TEXT_SETTINGS_SHOW_SKYBOX_CHECKBOX_LABEL_TEXT),settingsService.showSkyBox);
         addChild(this.cbShowSkyBox);
         this.cbMipMapping = createCheckBox(§>k§.§7!Z§,localeService.getText(TanksLocale.TEXT_SETTINGS_MIPMAPPING_LABEL_TEXT),settingsService.mipMapping);
         addChild(this.cbMipMapping);
         var _loc2_:GridLayout = new GridLayout(MARGIN,MARGIN,SettingsWindow.§while set static§ * 0.5,this.cbShowFPS.height + MARGIN);
         if(this.§dynamic const package§())
         {
            this.cbFog = createCheckBox(§>k§.FOG,localeService.getText(TanksLocale.TEXT_SETTINGS_FOG_LABEL_TEXT),settingsService.fog);
            addChild(this.cbFog);
            this.cbTankShadow = createCheckBox(§>k§.§default const const§,localeService.getText(TanksLocale.TEXT_SETTINGS_SHADOWS_LABEL_TEXT),settingsService.shadows);
            addChild(this.cbTankShadow);
            this.cbDynamicShadows = createCheckBox(§>k§.§-"f§,localeService.getText(TanksLocale.TEXT_SETTINGS_DYNAMIC_SHADOWS_LABEL_TEXT),settingsService.dynamicShadows);
            addChild(this.cbDynamicShadows);
            this.cbSoftParticles = createCheckBox(§>k§.§else var else§,localeService.getText(TanksLocale.TEXT_SETTINGS_SOFT_PARTICLES_LABEL_TEXT),settingsService.§1!-§);
            addChild(this.cbSoftParticles);
            this.cbSoftParticles.addEventListener(MouseEvent.CLICK,this.onSoftParticlesClick);
            this.cbDust = createCheckBox(§>k§.§continue const final§,localeService.getText(TanksLocale.TEXT_SETTINGS_DUST_LABEL_TEXT),settingsService.dust);
            addChild(this.cbDust);
            this.cbSSAO = createCheckBox(§>k§.SSAO,localeService.getText(TanksLocale.TEXT_SETTINGS_SSAO),settingsService.ssao);
            addChild(this.cbSSAO);
            this.cbAntialiasing = createCheckBox(§>k§.§true for dynamic§,localeService.getText(TanksLocale.TEXT_SETTINGS_ANTIALIASING),settingsService.antialiasing);
            addChild(this.cbAntialiasing);
            this.cbDynamicLighting = createCheckBox(§>k§.§function for implements§,localeService.getText(TanksLocale.TEXT_SETTINGS_DYNAMIC_LIGHTING),settingsService.dynamicLighting);
            addChild(this.cbDynamicLighting);
            this.createGraphicsAutoQualityCheckBox();
            _loc1_ = this.layoutPerformanceFull(_loc2_);
            if(this.cbGraphicsAutoQuality.checked)
            {
               _loc1_ = this.cbGraphicsAutoQuality.y + this.cbGraphicsAutoQuality.height;
            }
         }
         else
         {
            _loc1_ = this.layoutPerformanceConstrained(_loc2_);
         }
         this.performanceInner.height = _loc1_ + MARGIN;
      }
      
      private function §dynamic const package§() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained;
      }
      
      private function onSoftParticlesClick(param1:MouseEvent) : void
      {
         this.checkDustAvailable();
      }
      
      private function checkDustAvailable() : void
      {
         this.cbDust.visible = Boolean(this.cbSoftParticles) && !this.cbGraphicsAutoQuality.checked && this.cbSoftParticles.checked;
      }
      
      private function createGraphicsAutoQualityCheckBox() : void
      {
         this.cbGraphicsAutoQuality = createCheckBox(§>k§.§throw set while§,localeService.getText(TanksLocale.TEXT_SETTINGS_GRAPHICS_AUTO_QUALITY),settingsService.graphicsAutoQuality);
         addChild(this.cbGraphicsAutoQuality);
         this.onGraphicsAutQualityClick();
         this.cbGraphicsAutoQuality.addEventListener(MouseEvent.CLICK,this.onGraphicsAutQualityClick);
      }
      
      private function onGraphicsAutQualityClick(param1:MouseEvent = null) : void
      {
         var _loc2_:* = !this.cbGraphicsAutoQuality.checked;
         this.cbFog.visible = _loc2_;
         this.cbTankShadow.visible = _loc2_;
         this.cbDynamicShadows.visible = _loc2_;
         this.cbSoftParticles.visible = _loc2_;
         this.cbSSAO.visible = _loc2_;
         this.cbDynamicLighting.visible = _loc2_;
         this.cbAntialiasing.visible = _loc2_;
         this.performanceInner.height = _loc2_ ? Number(7 * this.cbShowFPS.height + 8 * MARGIN) : Number(3 * this.cbShowFPS.height + 4 * MARGIN);
         this.checkDustAvailable();
      }
      
      private function layoutPerformanceConstrained(param1:GridLayout) : int
      {
         return param1.layout([[this.cbShowFPS,this.cbAdaptiveFPS],[this.cbShowSkyBox,this.cbMipMapping]]);
      }
      
      private function layoutPerformanceFull(param1:GridLayout) : int
      {
         return param1.layout([[this.cbShowFPS,this.cbAdaptiveFPS],[this.cbShowSkyBox,this.cbMipMapping],[this.cbGraphicsAutoQuality],[this.cbDynamicShadows,this.cbSSAO],[this.cbDynamicLighting,this.cbFog],[this.cbTankShadow,this.cbAntialiasing],[this.cbSoftParticles,this.cbDust]]);
      }
      
      override public function destroy() : void
      {
         if(this.§dynamic const package§())
         {
            this.cbGraphicsAutoQuality.removeEventListener(MouseEvent.CLICK,this.onGraphicsAutQualityClick);
            this.cbSoftParticles.removeEventListener(MouseEvent.CLICK,this.onSoftParticlesClick);
         }
         super.destroy();
      }
   }
}

