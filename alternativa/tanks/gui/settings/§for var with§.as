package alternativa.tanks.gui.settings
{
   import alternativa.osgi.service.locale.ILocaleService;
   import base.DiscreteSprite;
   import controls.containers.§#"7§;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import §set const case§.§default for true§;
   import §set const case§.§set var throw§;
   import §while set false§.§2h§;
   
   public class §for var with§ extends DiscreteSprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §&!%§:Dictionary = new Dictionary();
      
      private var §var var set§:Vector.<§set var throw§> = new Vector.<§set var throw§>();
      
      private var §catch set use§:§,u§;
      
      private var §7B§:§#"7§ = new §#"7§();
      
      public function §for var with§()
      {
         super();
         this.§7B§.§1'§(§2h§.MARGIN);
         addChild(this.§7B§);
      }
      
      public function §set get§(param1:§,u§) : void
      {
         switch(param1)
         {
            case §,u§.GAME:
               this.§7B§.addItem(this.§import const continue§(§,u§.GAME,localeService.getText(TanksLocale.TEXT_SETTINGS_TAB_NAME_GAME),§default for true§.§static for set§));
               break;
            case §,u§.GRAPHIC:
               this.§7B§.addItem(this.§import const continue§(§,u§.GRAPHIC,localeService.getText(TanksLocale.TEXT_SETTINGS_TAB_NAME_GRAPHICS),§default for true§.§4"e§));
               break;
            case §,u§.ACCOUNT:
               this.§7B§.addItem(this.§import const continue§(§,u§.ACCOUNT,localeService.getText(TanksLocale.TEXT_SETTINGS_TAB_NAME_ACCOUNT),§default for true§.§super var catch§));
               break;
            case §,u§.CONTROL:
               this.§7B§.addItem(this.§import const continue§(§,u§.CONTROL,localeService.getText(TanksLocale.TEXT_SETTINGS_TAB_NAME_CONTROLS),§default for true§.§get var each§));
         }
      }
      
      private function §import const continue§(param1:§,u§, param2:String, param3:Class) : §set var throw§
      {
         var _loc4_:§set var throw§ = null;
         _loc4_ = new §set var throw§(param1,param2,param3);
         this.§&!%§[param1] = _loc4_;
         _loc4_.width = SettingsWindow.BUTTON_WIDTH;
         this.§var var set§.push(_loc4_);
         _loc4_.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         return _loc4_;
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:§,u§ = param1.currentTarget.getCategory();
         if(this.§catch set use§ != _loc2_)
         {
            this.§0+§(_loc2_);
         }
      }
      
      public function §0+§(param1:§,u§) : void
      {
         if(this.§catch set use§)
         {
            this.§&!%§[this.§catch set use§].enabled = true;
         }
         this.§&!%§[param1].enabled = false;
         this.§catch set use§ = param1;
         dispatchEvent(new SelectTabEvent(param1));
      }
      
      override public function get height() : Number
      {
         return this.§var var set§[0].height;
      }
      
      override public function get width() : Number
      {
         return this.§7B§.width;
      }
      
      public function destroy() : void
      {
         var _loc1_:§set var throw§ = null;
         for each(_loc1_ in this.§var var set§)
         {
            _loc1_.removeEventListener(MouseEvent.CLICK,this.onButtonClick);
         }
      }
   }
}

