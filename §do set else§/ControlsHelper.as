package §do set else§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.help.Helper;
   import flash.display.Bitmap;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class ControlsHelper extends Helper
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      public static const §=m§:String = "Tank.ControlsHelper";
      
      public static const §6"Q§:int = 1;
      
      private var §dynamic for null§:Bitmap;
      
      public function ControlsHelper()
      {
         super();
         this.init();
      }
      
      [Obfuscation(rename="false")]
      override public function align(param1:int, param2:int) : void
      {
         this.§dynamic for null§.x = (param1 - this.§dynamic for null§.width) / 2;
         this.§dynamic for null§.y = (param2 - this.§dynamic for null§.height) / 2;
      }
      
      private function init() : void
      {
         this.§dynamic for null§ = new Bitmap(localeService.getImage(TanksLocale.IMAGE_FULL_BATTLE_HELP));
         addChild(this.§dynamic for null§);
         _showLimit = 10;
         showDuration = 8000;
      }
   }
}

