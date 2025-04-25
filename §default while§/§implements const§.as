package §default while§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import §for var extends§.§do var do§;
   import §for var extends§.§try set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import services.alertservice.§if const finally§;
   
   public class §implements const§ extends §do var do§ implements §try set function§
   {
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      public function §implements const§()
      {
         super();
      }
      
      public function show(param1:String) : void
      {
         alertService.showAlert(param1,Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
   }
}

