package alternativa.init
{
   import §^!<§.§"!t§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.service.IModelService;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IEntranceServerFacade;
   
   public class UserModelActivator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      private var timeCheckerModel:§"!t§;
      
      private var _context:EntranceContext;
      
      public function UserModelActivator()
      {
         super();
      }
      
      public static function registerClientFacade(param1:IEntranceClientFacade) : void
      {
         if(osgi.getService(IEntranceClientFacade) != null)
         {
            osgi.unregisterService(IEntranceClientFacade);
         }
         osgi.registerService(IEntranceClientFacade,param1);
      }
      
      public static function registerServerFacade(param1:IEntranceServerFacade) : void
      {
         if(osgi.getService(IEntranceServerFacade) != null)
         {
            osgi.unregisterService(IEntranceServerFacade);
         }
         osgi.registerService(IEntranceServerFacade,param1);
      }
      
      public static function unregisterClientFacade() : void
      {
         osgi.unregisterService(IEntranceClientFacade);
      }
      
      public static function unregisterServerFacade() : void
      {
         osgi.unregisterService(IEntranceServerFacade);
      }
      
      public function start(param1:OSGi) : void
      {
         UserModelActivator.osgi = param1;
         this._context = new EntranceContext((param1.getService(IDisplay) as IDisplay).contentUILayer);
      }
      
      public function stop(param1:OSGi) : void
      {
         var _loc2_:IModelService = param1.getService(IModelService) as IModelService;
         UserModelActivator.osgi = null;
      }
   }
}

