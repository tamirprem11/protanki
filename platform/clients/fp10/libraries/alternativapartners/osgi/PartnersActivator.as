package platform.clients.fp10.libraries.alternativapartners.osgi
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import platform.clients.fp10.libraries.alternativapartners.service.impl.PartnerService;
   
   public class PartnersActivator implements IBundleActivator
   {
      public function PartnersActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var _loc2_:IPartnerService = new PartnerService();
         param1.registerService(IPartnerService,_loc2_);
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

