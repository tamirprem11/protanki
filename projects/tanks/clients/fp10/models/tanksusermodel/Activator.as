package projects.tanks.clients.fp10.models.tanksusermodel
{
   import §-A§.§with in§;
   import §;"h§.§if set if§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.model.useremailandpassword.UserEmailAndPasswordModel;
   import alternativa.tanks.servermodels.EntranceModel;
   import alternativa.tanks.servermodels.blockvalidator.BlockValidatorModel;
   import alternativa.tanks.servermodels.captcha.ServerCaptchaModel;
   import alternativa.tanks.servermodels.login.LoginModel;
   import alternativa.tanks.servermodels.registartion.password.PasswordRegistrationModel;
   import alternativa.tanks.servermodels.socialnetwork.ExternalEntranceModel;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IEntranceServerFacade;
   import alternativa.tanks.service.IPasswordParamsService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.view.bubbles.EntranceBubbleFactory;
   import alternativa.tanks.view.forms.ExternalRegistrationForm;
   import alternativa.tanks.view.forms.LinkExternalLoginForm;
   import alternativa.tanks.view.forms.LoginForm;
   import alternativa.tanks.view.forms.PasswordRestoreForm;
   import alternativa.tanks.view.forms.RegistrationForm;
   import alternativa.tanks.view.forms.commons.RegistrationCommonElementsSection;
   import alternativa.tanks.view.layers.EntranceView;
   import §class const import§.§#!I§;
   import §class const import§.§-;§;
   import §class const import§.§`"Z§;
   import §class const import§.§with const continue§;
   import §function var import§.§const do§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class Activator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegisterAdapt:ModelRegistry;
         var modelRegister:ModelRegistry;
         var _osgi:OSGi = param1;
         osgi = _osgi;
         osgi.injectService(IEntranceServerFacade,function(param1:Object):void
         {
            EntranceModel.serverFacade = IEntranceServerFacade(param1);
         },function():IEntranceServerFacade
         {
            return EntranceModel.serverFacade;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            EntranceModel.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return EntranceModel.clientFacade;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            EntranceModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return EntranceModel.display;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            BlockValidatorModel.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return BlockValidatorModel.clientFacade;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BlockValidatorModel.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return BlockValidatorModel.storageService;
         });
         osgi.injectService(ITrackerService,function(param1:Object):void
         {
            BlockValidatorModel.trackerService = ITrackerService(param1);
         },function():ITrackerService
         {
            return BlockValidatorModel.trackerService;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            ServerCaptchaModel.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return ServerCaptchaModel.clientFacade;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            PasswordRegistrationModel.facade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return PasswordRegistrationModel.facade;
         });
         osgi.injectService(IPasswordParamsService,function(param1:Object):void
         {
            PasswordRegistrationModel.passwordParamsService = IPasswordParamsService(param1);
         },function():IPasswordParamsService
         {
            return PasswordRegistrationModel.passwordParamsService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            PasswordRegistrationModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return PasswordRegistrationModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PasswordRegistrationModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return PasswordRegistrationModel.localeService;
         });
         osgi.injectService(ITrackerService,function(param1:Object):void
         {
            PasswordRegistrationModel.trackerService = ITrackerService(param1);
         },function():ITrackerService
         {
            return PasswordRegistrationModel.trackerService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            EntranceBubbleFactory.LocaleService = ILocaleService(param1);
         },function():ILocaleService
         {
            return EntranceBubbleFactory.LocaleService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            EntranceView.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return EntranceView.localeService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            EntranceView.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return EntranceView.alertService;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            ExternalEntranceModel.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return ExternalEntranceModel.clientFacade;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ExternalEntranceModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ExternalEntranceModel.localeService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            ExternalEntranceModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return ExternalEntranceModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ExternalRegistrationForm.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ExternalRegistrationForm.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            ExternalRegistrationForm.display = IDisplay(param1);
         },function():IDisplay
         {
            return ExternalRegistrationForm.display;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            ExternalRegistrationForm.helperService = IHelpService(param1);
         },function():IHelpService
         {
            return ExternalRegistrationForm.helperService;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            ExternalRegistrationForm.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return ExternalRegistrationForm.validateService;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            §with in§.facade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return §with in§.facade;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            UserEmailAndPasswordModel.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return UserEmailAndPasswordModel.panelView;
         });
         osgi.injectService(ISocialNetworkPanelService,function(param1:Object):void
         {
            UserEmailAndPasswordModel.socialNetworkPanelService = ISocialNetworkPanelService(param1);
         },function():ISocialNetworkPanelService
         {
            return UserEmailAndPasswordModel.socialNetworkPanelService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            UserEmailAndPasswordModel.§override set import§ = ISettingsService(param1);
         },function():ISettingsService
         {
            return UserEmailAndPasswordModel.§override set import§;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            §-;§.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return §-;§.clientFacade;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            LinkExternalLoginForm.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return LinkExternalLoginForm.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            LinkExternalLoginForm.display = IDisplay(param1);
         },function():IDisplay
         {
            return LinkExternalLoginForm.display;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            LinkExternalLoginForm.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return LinkExternalLoginForm.validateService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            LoginForm.display = IDisplay(param1);
         },function():IDisplay
         {
            return LoginForm.display;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            LoginForm.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return LoginForm.validateService;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            LoginModel.entranceClientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return LoginModel.entranceClientFacade;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            PasswordRestoreForm.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return PasswordRestoreForm.validateService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            RegistrationCommonElementsSection.display = IDisplay(param1);
         },function():IDisplay
         {
            return RegistrationCommonElementsSection.display;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RegistrationCommonElementsSection.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return RegistrationCommonElementsSection.localeService;
         });
         osgi.injectService(IPasswordParamsService,function(param1:Object):void
         {
            RegistrationCommonElementsSection.passwordParamsService = IPasswordParamsService(param1);
         },function():IPasswordParamsService
         {
            return RegistrationCommonElementsSection.passwordParamsService;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            RegistrationCommonElementsSection.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return RegistrationCommonElementsSection.validateService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RegistrationForm.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return RegistrationForm.localeService;
         });
         modelRegisterAdapt = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegister = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegister.add(new §with in§(),Vector.<Class>([§if set if§,IObjectLoadListener]));
         modelRegisterAdapt.registerAdapt(§with const continue§,§`"Z§);
         modelRegisterAdapt.registerEvents(§with const continue§,§#!I§);
         modelRegister.add(new §-;§(),Vector.<Class>([§const do§,§with const continue§,IObjectLoadListener]));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

