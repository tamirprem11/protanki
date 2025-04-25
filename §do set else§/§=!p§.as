package §do set else§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.help.IHelpService;
   import §const set false§.§var var implements§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §=!p§ extends Sprite
   {
      [Inject]
      public static var helpService:IHelpService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §set for native§:Bitmap;
      
      private var §include set dynamic§:Bitmap;
      
      public function §=!p§()
      {
         super();
         this.§set for native§ = new Bitmap(localeService.getImage(TanksLocale.IMAGE_HELP_CONTROLS_MINI));
         this.§include set dynamic§ = new Bitmap(localeService.getImage(TanksLocale.IMAGE_HELP_MOUSE_MINI));
         addEventListener(MouseEvent.CLICK,§,V§);
         this.§in set false§(§var var implements§.§7!'§);
      }
      
      private static function §,V§(param1:MouseEvent) : void
      {
         helpService.showHelp();
         param1.stopPropagation();
      }
      
      public function §in set false§(param1:int) : void
      {
         if(this.§set for native§.parent != null)
         {
            removeChild(this.§set for native§);
         }
         if(this.§include set dynamic§.parent != null)
         {
            removeChild(this.§include set dynamic§);
         }
         if(param1 == §var var implements§.§7!'§)
         {
            addChild(this.§set for native§);
         }
         else
         {
            addChild(this.§include set dynamic§);
         }
      }
   }
}

