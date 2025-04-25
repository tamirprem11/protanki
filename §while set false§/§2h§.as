package §while set false§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.settings.§>k§;
   import alternativa.tanks.service.settings.ISettingsService;
   import base.DiscreteSprite;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import §set const case§.§ m§;
   import §set const case§.§+R§;
   
   public class §2h§ extends DiscreteSprite
   {
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      public static const MARGIN:int = 8;
      
      public static const §native const function§:int = 10;
      
      public static const §use const for§:int = 3;
      
      protected var §0Q§:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §2h§()
      {
         super();
      }
      
      public function show() : void
      {
      }
      
      public function hide() : void
      {
      }
      
      protected function createCheckBox(param1:§>k§, param2:String, param3:Boolean, param4:int = 0, param5:int = 0) : § m§
      {
         var _loc6_:§ m§ = new § m§(param1,param2);
         _loc6_.checked = param3;
         _loc6_.addEventListener(MouseEvent.CLICK,this.§throw const super§);
         _loc6_.x = param4;
         _loc6_.y = param5;
         this.§0Q§.push(_loc6_);
         _loc6_.label = param2;
         return _loc6_;
      }
      
      protected function §throw const super§(param1:MouseEvent) : void
      {
         var _loc2_:§+R§ = null;
         if(param1.currentTarget is §+R§)
         {
            _loc2_ = §+R§(param1.currentTarget);
            settingsService.§'g§(_loc2_.§`,§(),_loc2_.§with const class§());
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this.§0Q§)
         {
            _loc1_.removeEventListener(MouseEvent.CLICK,this.§throw const super§);
         }
      }
   }
}

