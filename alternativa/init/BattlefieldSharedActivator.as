package alternativa.init
{
   import §[!a§.§]!f§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import flash.net.SharedObject;
   import §override const const§.§`"9§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class BattlefieldSharedActivator implements IBundleActivator
   {
      public function BattlefieldSharedActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var _loc2_:SharedObject = IStorageService(param1.getService(IStorageService)).getStorage();
         param1.registerService(§]!f§,new §`"9§());
      }
      
      public function stop(param1:OSGi) : void
      {
         param1.unregisterService(§]!f§);
      }
   }
}

