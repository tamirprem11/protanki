package alternativa.tanks.model.info
{
   import §+!8§.§%!H§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import alternativa.tanks.view.battleinfo.BattleInfoViewEvent;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import projects.tanks.client.battleselect.model.info.§"!;§;
   import projects.tanks.client.battleselect.model.info.§?!N§;
   import projects.tanks.client.battleselect.model.info.§]s§;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import services.alertservice.§if const finally§;
   
   public class §import const class§ extends §]s§ implements §?!N§, IObjectLoadListener, §var const get§
   {
      [Inject]
      public static var battleInfoFormService:IBattleInfoFormService;
      
      [Inject]
      public static var battleListFormService:IBattleListFormService;
      
      [Inject]
      public static var resourceRegistry:ResourceRegistry;
      
      [Inject]
      public static var battleAlertService:IAlertService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      public function §import const class§()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         battleInfoFormService.addEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,getFunctionWrapper(this.onEnterSpectator));
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
         battleInfoFormService.removeEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,getFunctionWrapper(this.onEnterSpectator));
         battleInfoFormService.§3!6§();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      private function onEnterSpectator(param1:BattleInfoViewEvent) : void
      {
         server.§+!M§();
      }
      
      public function removeUser(param1:String) : void
      {
         battleInfoFormService.removeUser(param1);
      }
      
      public function roundStart() : void
      {
         battleInfoFormService.roundStart();
      }
      
      public function roundFinish() : void
      {
         battleInfoFormService.roundFinish();
      }
      
      public function battleStop() : void
      {
         battleInfoFormService.battleStop();
      }
      
      public function updateUserSuspiciousState(param1:String, param2:Boolean) : void
      {
         battleInfoFormService.updateUserSuspiciousState(param1,param2);
      }
      
      public function fightFailedServerIsHalting() : void
      {
         battleAlertService.showAlert(localeService.getText(TanksLocale.TEXT_SERVER_IS_RESTARTING_CREATE_BATTLE_TEXT),Vector.<String>([localeService.getText(§if const finally§.OK)]));
      }
      
      public function updateName(param1:String) : void
      {
         battleInfoFormService.updateName(param1);
      }
      
      public function getConstructor() : §"!;§
      {
         return getInitParam();
      }
      
      public function getPreviewResource() : ImageResource
      {
         return §%!H§(getInitParam().map.adapt(§%!H§)).getPreviewResource();
      }
   }
}

