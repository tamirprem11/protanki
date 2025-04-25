package alternativa.tanks.gui.settings
{
   import §6![§.§'"T§;
   import §@"M§.§?S§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.help.IHelpService;
   import controls.TankWindow;
   import controls.TankWindowHeader;
   import controls.base.DefaultButtonBase;
   import §final const dynamic§.§82§;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.gui.DialogWindow;
   import §while set false§.§2h§;
   import §while set false§.§45§;
   
   public class SettingsWindow extends DialogWindow
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var helperService:IHelpService;
      
      [Inject]
      public static var partnersService:IPartnerService;
      
      public static const §-"5§:int = WINDOW_HEIGHT - 2 * WINDOW_MARGIN - 2 * §else var§ - MARGIN;
      
      public static const §while set static§:int = WINDOW_WIDTH - 2 * WINDOW_MARGIN;
      
      public static const WINDOW_MARGIN:int = 12;
      
      public static const §else var§:int = 33;
      
      public static const BUTTON_WIDTH:int = 104;
      
      private static const WINDOW_WIDTH:int = 775;
      
      private static const WINDOW_HEIGHT:int = 560;
      
      private static const MARGIN:int = 8;
      
      private var closeButton:DefaultButtonBase;
      
      private var §[">§:§for var with§;
      
      private var §extends return§:Dictionary;
      
      private var §else for continue§:§2h§ = null;
      
      public function SettingsWindow(param1:String, param2:Boolean, param3:Boolean, param4:Boolean, param5:String, param6:String)
      {
         var _loc9_:§'"T§ = null;
         var _loc7_:TankWindow = null;
         var _loc8_:Boolean = false;
         _loc9_ = null;
         this.§extends return§ = new Dictionary();
         super();
         _loc7_ = new TankWindow(WINDOW_WIDTH,WINDOW_HEIGHT);
         _loc7_.headerLang = localeService.getText(TanksLocale.TEXT_GUI_LANG);
         _loc7_.header = TankWindowHeader.SETTINGS;
         addChild(_loc7_);
         this.§[">§ = new §for var with§();
         this.§[">§.§set get§(§,u§.GAME);
         this.§[">§.§set get§(§,u§.GRAPHIC);
         _loc8_ = !partnersService.isRunningInsidePartnerEnvironment() || param4;
         if(_loc8_)
         {
            this.§[">§.§set get§(§,u§.ACCOUNT);
         }
         this.§[">§.§set get§(§,u§.CONTROL);
         this.§[">§.§0+§(§,u§.GAME);
         this.§[">§.x = this.§[">§.y = WINDOW_MARGIN;
         this.§[">§.addEventListener(SelectTabEvent.§package var switch§,this.§;!Y§);
         addChild(this.§[">§);
         var _loc10_:§45§ = new §45§();
         _loc10_.y = this.§[">§.y + this.§[">§.height + MARGIN;
         _loc10_.x = WINDOW_MARGIN;
         this.§extends return§[§,u§.GRAPHIC] = _loc10_;
         var _loc11_:§?S§ = new §?S§(param3);
         _loc11_.y = this.§[">§.y + this.§[">§.height + MARGIN;
         _loc11_.x = WINDOW_MARGIN;
         this.§extends return§[§,u§.GAME] = _loc11_;
         if(_loc8_)
         {
            _loc9_ = new §'"T§(param1,param2,param4,param5,param6);
            _loc9_.y = this.§[">§.y + this.§[">§.height + MARGIN;
            _loc9_.x = WINDOW_MARGIN;
            this.§extends return§[§,u§.ACCOUNT] = _loc9_;
         }
         var _loc12_:§82§ = new §82§();
         _loc12_.y = this.§[">§.y + this.§[">§.height + MARGIN;
         _loc12_.x = WINDOW_MARGIN;
         this.§extends return§[§,u§.CONTROL] = _loc12_;
         this.§[">§.§0+§(§,u§.GAME);
         this.closeButton = new DefaultButtonBase();
         addChild(this.closeButton);
         this.closeButton.label = localeService.getText(TanksLocale.TEXT_CLOSE_LABEL);
         this.closeButton.x = WINDOW_WIDTH - this.closeButton.width - WINDOW_MARGIN;
         this.closeButton.y = WINDOW_HEIGHT - this.closeButton.height - WINDOW_MARGIN;
         this.closeButton.addEventListener(MouseEvent.CLICK,this.§,n§);
         _loc7_.height = WINDOW_HEIGHT;
      }
      
      private function §;!Y§(param1:SelectTabEvent) : void
      {
         if(this.§else for continue§ != null && contains(this.§else for continue§))
         {
            this.§else for continue§.hide();
            removeChild(this.§else for continue§);
         }
         var _loc2_:§2h§ = this.§extends return§[param1.getSelectedCategory()];
         if(_loc2_ != null)
         {
            this.§else for continue§ = _loc2_;
            addChild(this.§else for continue§);
            this.§else for continue§.show();
         }
      }
      
      public function show() : void
      {
         dialogService.addDialog(this);
      }
      
      private function §,n§(param1:MouseEvent = null) : void
      {
         this.§false var class§();
      }
      
      private function §false var class§() : void
      {
         helperService.hideAllHelpers();
         dispatchEvent(new SettingsWindowEvent(SettingsWindowEvent.§catch for with§));
      }
      
      public function §-"$§() : §'"T§
      {
         return this.§extends return§[§,u§.ACCOUNT];
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.§false var class§();
      }
      
      public function destroy() : void
      {
         var _loc1_:§2h§ = null;
         this.closeButton.removeEventListener(MouseEvent.CLICK,this.§,n§);
         this.§[">§.removeEventListener(SelectTabEvent.§package var switch§,this.§;!Y§);
         this.§[">§.destroy();
         for each(_loc1_ in this.§extends return§)
         {
            _loc1_.destroy();
         }
         dialogService.removeDialog(this);
         display.stage.focus = null;
      }
   }
}

