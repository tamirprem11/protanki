package alternativa.init
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.tanks.model.garage.Tank3DViewer;
   import alternativa.tanks.service.delaymountcategory.§0"e§;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.garage.§5"'§;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.item.§6!^§;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item.upgradable.speedup.§>"`§;
   import alternativa.tanks.service.item.upgradable.speedup.SpeedUpCostCalculatorService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.§include false§;
   import alternativa.tanks.service.temporaryitem.§ L§;
   import alternativa.tanks.service.temporaryitem.ITemporaryItemService;
   import alternativa.tanks.service.temporaryitemnotify.§2"<§;
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   
   public class GarageModelActivator implements IBundleActivator
   {
      public function GarageModelActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         param1.registerService(ItemService,new §6!^§());
         param1.registerService(ItemPropertyParamsService,new §include false§());
         param1.registerService(ITemporaryItemService,new § L§());
         param1.registerService(ITemporaryItemNotifyService,new §2"<§());
         param1.registerService(SpeedUpCostCalculatorService,new §>"`§());
         param1.registerService(GarageService,new §5"'§());
         param1.registerService(ITank3DViewer,new Tank3DViewer());
         param1.registerService(IDelayMountCategoryService,new §0"e§());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

