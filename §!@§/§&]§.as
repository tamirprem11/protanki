package §!@§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§,"_§;
   import assets.Diamond;
   import controls.Money;
   
   public class §&]§ extends §,"_§
   {
      private var diamond:Diamond = new Diamond();
      
      public function §&]§(param1:int)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         addChild(this.diamond);
         this.diamond.y = 4;
         this.update();
      }
      
      public function §="`§(param1:int) : void
      {
         var _loc2_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         var _loc3_:String = _loc2_.getText(TextConst.BATTLE_FUND);
         label.text = _loc3_ + ": " + Money.numToString(param1,false);
         this.update();
      }
      
      private function update() : void
      {
         this.diamond.x = label.x + label.width + 2;
      }
   }
}

