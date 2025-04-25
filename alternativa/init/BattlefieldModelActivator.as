package alternativa.init
{
   import §2!X§.§&O§;
   import §2!X§.§function var extends§;
   import §5!Y§.§1U§;
   import §5!Y§.§native var function§;
   import §>Z§.§,!K§;
   import §>Z§.§use set null§;
   import alternativa.model.IModel;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.engine3d.§%">§;
   import alternativa.tanks.engine3d.§7z§;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§[!N§;
   import alternativa.tanks.engine3d.§break const true§;
   import alternativa.tanks.engine3d.§false set static§;
   import alternativa.tanks.engine3d.§include const catch§;
   import alternativa.tanks.engine3d.§try§;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.battlefield.§throw const default§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.battlereadiness.§switch var var§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.initialeffects.§class var true§;
   import alternativa.tanks.services.lightingeffects.§#w§;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.tanks.services.spectatorservice.SpectatorService;
   import alternativa.tanks.services.spectatorservice.§const const in§;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import alternativa.tanks.services.tankregistry.§continue for do§;
   import alternativa.tanks.utils.DataValidator;
   import alternativa.tanks.utils.DataValidatorImpl;
   import alternativa.utils.TextureMaterialRegistry;
   import §case const in§.§5"X§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class BattlefieldModelActivator implements IBundleActivator
   {
      public var models:Vector.<IModel> = new Vector.<IModel>();
      
      public var bm:§;0§;
      
      private var osgi:OSGi;
      
      public function BattlefieldModelActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         this.osgi = param1;
         var _loc2_:IModelService = param1.getService(IModelService) as IModelService;
         this.bm = new §;0§();
         param1.registerService(IInitialEffectsService,new §class var true§());
         new §catch for const§();
         param1.registerService(ILightingEffectsService,new §#w§());
         param1.registerService(§&O§,new §function var extends§());
         param1.registerService(TankUsersRegistry,new §continue for do§());
         param1.registerService(BattleReadinessService,new §switch var var§());
         param1.registerService(SpectatorService,new §const const in§());
         param1.registerService(§native var function§,new §1U§());
         this.registerMipMappingService();
         this.registerColorTransformService();
         this.registerColorCorrectedTextureService();
         this.registerEffectsMaterialService();
         this.registerTextureMaterialService();
         param1.registerService(DataValidator,new DataValidatorImpl(param1));
      }
      
      private function registerMipMappingService() : void
      {
         this.osgi.registerService(MipMappingService,new §5"X§());
      }
      
      private function registerColorTransformService() : void
      {
         if(!GPUCapabilities.gpuEnabled || GPUCapabilities.constrained)
         {
            this.osgi.registerService(ColorTransformService,new §,!K§());
         }
         else
         {
            this.osgi.registerService(ColorTransformService,new §use set null§());
         }
      }
      
      private function registerColorCorrectedTextureService() : void
      {
         var _loc1_:§try§ = new §false set static§();
         this.osgi.registerService(§try§,_loc1_);
         this.registerBattleEventListener(§throw const default§,new §include const catch§(_loc1_));
         var _loc2_:ColorTransformService = ColorTransformService(this.osgi.getService(ColorTransformService));
         _loc2_.§throw var class§(_loc1_);
      }
      
      private function registerEffectsMaterialService() : void
      {
         var _loc1_:§[!N§ = new §[!N§();
         this.osgi.registerService(EffectsMaterialRegistry,_loc1_);
         this.enableMipMappingControl(_loc1_);
         this.registerBattleEventListener(§throw const default§,new §7z§(_loc1_));
      }
      
      private function registerTextureMaterialService() : void
      {
         var _loc1_:§try§ = §try§(this.osgi.getService(§try§));
         var _loc2_:§break const true§ = new §break const true§(new §%">§(),_loc1_);
         this.osgi.registerService(TextureMaterialRegistry,_loc2_);
         this.enableMipMappingControl(_loc2_);
         this.registerBattleEventListener(§throw const default§,new §7z§(_loc2_));
      }
      
      private function registerBattleEventListener(param1:Class, param2:§override const do§) : void
      {
         var _loc3_:BattleEventDispatcher = BattleEventDispatcher(this.osgi.getService(BattleEventDispatcher));
         _loc3_.§7i§(param1,param2);
      }
      
      private function enableMipMappingControl(param1:TextureMaterialRegistry) : void
      {
         var _loc2_:MipMappingService = MipMappingService(this.osgi.getService(MipMappingService));
         _loc2_.§2f§(param1);
      }
      
      public function stop(param1:OSGi) : void
      {
         var _loc3_:IModel = null;
         var _loc2_:IModelService = param1.getService(IModelService) as IModelService;
         while(this.models.length > 0)
         {
            _loc3_ = this.models.pop();
            _loc2_.remove(_loc3_.id);
         }
      }
      
      private function addModel(param1:IModelService, param2:IModel) : void
      {
         param1.add(param2);
         this.models.push(param2);
      }
   }
}

