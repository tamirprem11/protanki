package projects.tanks.clients.flash.commonsflash
{
   import §["]§.TimeUnitService;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import §case for in§.§while var static§;
   import §default while§.§implements const§;
   import §for var extends§.§try set function§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import projects.tanks.client.commons.models.coloring.IColoringModelBase;
   import projects.tanks.clients.flash.commons.models.battlelinkactivator.BattleLinkActivatorModel;
   import projects.tanks.clients.flash.commons.models.coloring.ColoringModel;
   import projects.tanks.clients.flash.commons.models.coloring.IColoring;
   import projects.tanks.clients.flash.commons.models.coloring.IColoringAdapt;
   import projects.tanks.clients.flash.commons.models.coloring.IColoringEvents;
   import projects.tanks.clients.flash.commons.models.layout.notify.LobbyLayoutNotifyModel;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.layout.LobbyLayoutService;
   import projects.tanks.clients.flash.commons.services.nameutils.SocialNetworkNameUtils;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class Activator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegister:ModelRegistry;
         var modelRegisterAdapt:ModelRegistry;
         var _osgi:OSGi = param1;
         osgi = _osgi;
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            BattleLinkActivatorModel.battleLinkActivatorService = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return BattleLinkActivatorModel.battleLinkActivatorService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLinkActivatorModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLinkActivatorModel.lobbyLayoutService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleLinkActivatorModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return BattleLinkActivatorModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLinkActivatorModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLinkActivatorModel.localeService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleLinkActivatorModel.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return BattleLinkActivatorModel.storageService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkActivatorModel.userPropertyService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkActivatorModel.userPropertyService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            LobbyLayoutNotifyModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return LobbyLayoutNotifyModel.lobbyLayoutService;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            LobbyLayoutNotifyModel.loaderWindowService = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return LobbyLayoutNotifyModel.loaderWindowService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            LobbyLayoutService.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return LobbyLayoutService.alertService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            LobbyLayoutService.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return LobbyLayoutService.storageService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            LobbyLayoutService.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return LobbyLayoutService.localeService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            LobbyLayoutService.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return LobbyLayoutService.battleInfoService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            LobbyLayoutService.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return LobbyLayoutService.dialogWindowsDispatcherService;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            LobbyLayoutService.partnersService = IPartnerService(param1);
         },function():IPartnerService
         {
            return LobbyLayoutService.partnersService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            LobbyLayoutService.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return LobbyLayoutService.userInfoService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            §implements const§.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return §implements const§.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §implements const§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §implements const§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            TimeUnitService.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return TimeUnitService.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §while var static§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §while var static§.localeService;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            §while var static§.logService = LogService(param1);
         },function():LogService
         {
            return §while var static§.logService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            Notification.display = IDisplay(param1);
         },function():IDisplay
         {
            return Notification.display;
         });
         osgi.injectService(INotificationSoundService,function(param1:Object):void
         {
            Notification.§+#§ = INotificationSoundService(param1);
         },function():INotificationSoundService
         {
            return Notification.§+#§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SocialNetworkNameUtils.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return SocialNetworkNameUtils.localeService;
         });
         modelRegister = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt.registerAdapt(IColoring,IColoringAdapt);
         modelRegisterAdapt.registerEvents(IColoring,IColoringEvents);
         modelRegister.add(new ColoringModel(),Vector.<Class>([IColoringModelBase,IColoring]));
         modelRegister.add(new §implements const§(),Vector.<Class>([§try set function§]));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

