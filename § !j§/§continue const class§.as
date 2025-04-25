package § !j§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.ImageConst;
   import flash.display.BitmapData;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §continue const class§
   {
      private static const bitmapReferalHeader:Class = §[!l§;
      
      public static const REFERAL_WINDOW_HEADER_IMAGE:BitmapData = new bitmapReferalHeader().bitmapData;
      
      private static const controlsHelp:Class = §%P§;
      
      private static const FULL_BATTLE_HELP:BitmapData = new controlsHelp().bitmapData;
      
      public function §continue const class§()
      {
         super();
      }
      
      public static function init(param1:ILocaleService) : void
      {
         param1.setImage(ImageConst.REFERAL_WINDOW_HEADER_IMAGE,§continue const class§.REFERAL_WINDOW_HEADER_IMAGE);
         param1.setImage(TanksLocale.IMAGE_FULL_BATTLE_HELP,§continue const class§.FULL_BATTLE_HELP);
      }
   }
}

