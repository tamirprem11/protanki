package scpacker.server.models.locale
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class LocalizationLoader
   {
      public static var localeService:ILocaleService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
      
      public function LocalizationLoader()
      {
         super();
      }
      
      public function init(param1:String) : *
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         for each(_loc3_ in _loc2_.struct)
         {
            localeService.setText(_loc3_.key,_loc3_.value);
         }
      }
   }
}

