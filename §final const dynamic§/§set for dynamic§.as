package §final const dynamic§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import base.DiscreteSprite;
   import controls.base.DefaultButtonBase;
   import controls.containers.§0U§;
   import controls.containers.§1"C§;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import §while set false§.§2h§;
   
   public class §set for dynamic§ extends DiscreteSprite
   {
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private var § "_§:§1"C§ = new §1"C§();
      
      private var §class for false§:Vector.<§4d§> = new Vector.<§4d§>();
      
      private var §&U§:DefaultButtonBase = new DefaultButtonBase();
      
      public function §set for dynamic§()
      {
         super();
         this.§&U§.label = localeService.getText(TanksLocale.TEXT_BUTTON_LABEL_RESTORE_DEFAULT_BUTTONS);
         this.§&U§.width = 250;
         this.§&U§.addEventListener(MouseEvent.CLICK,this.§=!X§);
         addChild(this.§&U§);
         this.§ "_§.§1'§(§2h§.MARGIN * 2);
         this.§ "_§.addItem(this.§import const null§());
         this.§ "_§.addItem(this.§super const case§());
         this.§ "_§.addItem(this.§7t§());
         this.§ "_§.addItem(this.§9F§());
         this.§ "_§.addItem(this.§'!h§());
         this.§ "_§.addItem(this.§with set const§());
         this.§ "_§.y = §2h§.MARGIN + this.§&U§.height;
         addChild(this.§ "_§);
      }
      
      private function §=!X§(param1:MouseEvent) : void
      {
         var _loc2_:§4d§ = null;
         §>!Y§.§=!X§();
         for each(_loc2_ in this.§class for false§)
         {
            _loc2_.§"!w§();
         }
      }
      
      private function §import const null§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.ROTATE_TURRET_LEFT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TURRET_TURN_LEFT)));
         _loc1_.addItem(this.§,!f§(§%!6§.ROTATE_TURRET_RIGHT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TURRET_TURN_RIGHT)));
         _loc1_.addItem(this.§,!f§(§%!6§.CENTER_TURRET,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TURRET_CENTER)));
         _loc1_.addItem(this.§,!f§(§%!6§.SHOT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_SHOOT)));
         return _loc1_;
      }
      
      private function §super const case§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.CHASSIS_LEFT_MOVEMENT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TANK_TURN_LEFT)));
         _loc1_.addItem(this.§,!f§(§%!6§.CHASSIS_FORWARD_MOVEMENT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TANK_MOVE_FORWARD)));
         _loc1_.addItem(this.§,!f§(§%!6§.CHASSIS_RIGHT_MOVEMENT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TANK_TURN_RIGHT)));
         _loc1_.addItem(this.§,!f§(§%!6§.CHASSIS_BACKWARD_MOVEMENT,localeService.getText(TanksLocale.TEXT_GAME_ACTION_TANK_MOVE_BACKWARD)));
         return _loc1_;
      }
      
      private function §7t§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.USE_FIRS_AID,localeService.getText(TanksLocale.TEXT_GAME_ACTION_USE_FIRST_AID)));
         _loc1_.addItem(this.§,!f§(§%!6§.USE_DOUBLE_ARMOR,localeService.getText(TanksLocale.TEXT_GAME_ACTION_USE_DOUBLE_ARMOR)));
         _loc1_.addItem(this.§,!f§(§%!6§.USE_DOUBLE_DAMAGE,localeService.getText(TanksLocale.TEXT_GAME_ACTION_USE_DOBLE_DAMAGE)));
         _loc1_.addItem(this.§,!f§(§%!6§.USE_NITRO,localeService.getText(TanksLocale.TEXT_GAME_ACTION_USE_NITRO)));
         _loc1_.addItem(this.§,!f§(§%!6§.USE_MINE,localeService.getText(TanksLocale.TEXT_GAME_ACTION_USE_MINE)));
         return _loc1_;
      }
      
      private function §'!h§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.BATTLE_VIEW_INCREASE,localeService.getText(TanksLocale.TEXT_GAME_ACTION_SCREEN_SIZE_INCREASE)));
         _loc1_.addItem(this.§,!f§(§%!6§.BATTLE_VIEW_DECREASE,localeService.getText(TanksLocale.TEXT_GAME_ACTION_SCREEN_SIZE_DECREASE)));
         _loc1_.addItem(this.§,!f§(§%!6§.OPEN_GARAGE,localeService.getText(TanksLocale.TEXT_OPEN_GARAGE)));
         return _loc1_;
      }
      
      private function §9F§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.DROP_FLAG,localeService.getText(TanksLocale.TEXT_GAME_ACTION_DROP_FLAG)));
         _loc1_.addItem(this.§,!f§(§%!6§.BATTLE_PAUSE,localeService.getText(TanksLocale.TEXT_GAME_ACTION_PAUSE)));
         return _loc1_;
      }
      
      private function §with set const§() : §0U§
      {
         var _loc1_:§0U§ = new §1"C§();
         _loc1_.addItem(this.§,!f§(§%!6§.FOLLOW_CAMERA_UP,localeService.getText(TanksLocale.TEXT_GAME_ACTION_CAMERA_UP)));
         _loc1_.addItem(this.§,!f§(§%!6§.FOLLOW_CAMERA_DOWN,localeService.getText(TanksLocale.TEXT_GAME_ACTION_CAMERA_DOWN)));
         return _loc1_;
      }
      
      private function §,!f§(param1:§%!6§, param2:String) : §4d§
      {
         var _loc3_:§4d§ = new §4d§(param1,param2,§2h§.MARGIN,SettingsWindow.§while set static§);
         this.§class for false§.push(_loc3_);
         return _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc1_:§4d§ = null;
         this.§&U§.removeEventListener(MouseEvent.CLICK,this.§=!X§);
         for each(_loc1_ in this.§class for false§)
         {
            _loc1_.destroy();
         }
         this.§ "_§ = null;
         this.§class for false§ = null;
      }
   }
}

