package §#"a§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import controls.TankWindowInner;
   import controls.base.LabelBase;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.text.TextFormatAlign;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §native const native§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private const §implements set finally§:uint = 16777215;
      
      private const §!"9§:int = 120;
      
      private const §^]§:int = 280;
      
      private const §default const in§:int = 10;
      
      private const BOTTOM_MARGIN:int = 5;
      
      private var §finally override§:TankWindowInner;
      
      private var §each override§:LabelBase;
      
      public function §native const native§()
      {
         super();
         this.§while const while§();
         this.§use for include§();
         this.§null set super§();
         this.§8;§();
      }
      
      private function §while const while§() : void
      {
         this.§finally override§ = new TankWindowInner(0,0,TankWindowInner.GREEN);
         this.§finally override§.width = §use for var§.§%!h§;
         addChild(this.§finally override§);
      }
      
      private function §use for include§() : void
      {
         var _loc1_:Bitmap = new Bitmap();
         _loc1_.x = int(this.§finally override§.width / 2 - this.§^]§ / 2);
         _loc1_.y = this.§default const in§;
         _loc1_.bitmapData = §?4§.§override set set§;
         this.§finally override§.addChild(_loc1_);
      }
      
      private function §null set super§() : void
      {
         this.§each override§ = new LabelBase();
         this.§each override§.color = this.§implements set finally§;
         this.§each override§.align = TextFormatAlign.CENTER;
         this.§each override§.text = localeService.getText(TanksLocale.TEXT_DAILY_QUEST_ALL_MISSIONS_COMPLETED);
         this.§each override§.x = int(§use for var§.§%!h§ / 2 - this.§each override§.width / 2);
         this.§each override§.y = this.§!"9§ + this.§default const in§ * 2;
         this.§finally override§.addChild(this.§each override§);
      }
      
      private function §8;§() : void
      {
         this.§finally override§.height = this.§each override§.height + this.§!"9§ + this.§default const in§ * 3;
      }
      
      public function §,",§() : int
      {
         return this.§finally override§.height + this.BOTTOM_MARGIN;
      }
   }
}

