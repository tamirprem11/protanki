package §case for in§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import flash.globalization.DateTimeFormatter;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §while var static§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var logService:LogService;
      
      private static var §>F§:DateTimeFormatter;
      
      private static var §;g§:DateTimeFormatter;
      
      private static var §>"P§:DateTimeFormatter;
      
      public function §while var static§()
      {
         super();
      }
      
      public static function §1"`§(param1:Date) : String
      {
         if(§>F§ == null)
         {
            §>F§ = new DateTimeFormatter("");
            §>F§.setDateTimePattern(localeService.getText(TanksLocale.TEXT_DATE_FORMAT));
         }
         return §>F§.format(param1);
      }
      
      public static function formatTime(param1:Date) : String
      {
         if(§;g§ == null)
         {
            §;g§ = new DateTimeFormatter("");
            §;g§.setDateTimePattern("HH:mm");
         }
         return §;g§.format(param1);
      }
      
      public static function §"!^§(param1:Date) : String
      {
         if(§>"P§ == null)
         {
            §>"P§ = new DateTimeFormatter("");
            §>"P§.setDateTimePattern("HH:mm");
         }
         return §>"P§.format(param1);
      }
   }
}

