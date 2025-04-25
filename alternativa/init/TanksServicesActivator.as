package alternativa.init
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§override const super§;
   import alternativa.tanks.bg.BackgroundService;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.blur.BlurService;
   import alternativa.tanks.blur.IBlurService;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.loader.ILoaderTipsService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.loader.LoaderTips;
   import alternativa.tanks.loader.LoaderWindow;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.model.useremailandpassword.UserEmailAndPasswordModel;
   import alternativa.tanks.servermodels.captcha.IServerCaptcha;
   import alternativa.tanks.servermodels.captcha.ServerCaptchaModel;
   import alternativa.tanks.servermodels.login.ILogin;
   import alternativa.tanks.servermodels.login.LoginModel;
   import alternativa.tanks.servermodels.loginbyhash.ILoginByHash;
   import alternativa.tanks.servermodels.loginbyhash.LoginByHashModel;
   import alternativa.tanks.servermodels.registartion.password.IPasswordRegistration;
   import alternativa.tanks.servermodels.registartion.password.PasswordRegistrationModel;
   import alternativa.tanks.servermodels.socialnetwork.ExternalEntranceModel;
   import alternativa.tanks.servermodels.socialnetwork.IExternalEntranceModel;
   import alternativa.tanks.service.IPasswordParamsService;
   import alternativa.tanks.service.dialogs.DialogsService;
   import alternativa.tanks.service.dialogs.IDialogsService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.panel.§default var const§;
   import alternativa.tanks.service.settings.§@+§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.§ W§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.service.socialnetwork.§super const include§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battlegui.§`"5§;
   import alternativa.tanks.services.battleinput.§?!z§;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.ping.PingService;
   import alternativa.tanks.services.ping.§var const dynamic§;
   import alternativa.tanks.services.targeting.§2!V§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.services.targeting.§get finally§;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.tracker.TrackerService;
   import §get const dynamic§.§6!M§;
   import projects.tanks.clients.flash.commons.models.layout.ILobbyLayout;
   import projects.tanks.clients.flash.commons.models.layout.LobbyLayoutModel;
   import projects.tanks.clients.flash.commons.models.layout.notify.ILobbyLayoutNotify;
   import projects.tanks.clients.flash.commons.models.layout.notify.LobbyLayoutNotifyModel;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.BlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.BattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.OnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumServiceImpl;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.StorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   
   public class TanksServicesActivator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      private var loaderWindow:LoaderWindow;
      
      public function TanksServicesActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         TanksServicesActivator.osgi = param1;
         var _loc2_:IBackgroundService = new BackgroundService();
         param1.registerService(IStorageService,new StorageService(param1.createSharedObject("name")));
         param1.registerService(IBackgroundService,_loc2_);
         param1.registerService(IBlurService,new BlurService());
         param1.registerService(ITrackerService,new TrackerService());
         param1.registerService(IBlockUserService,new BlockUserService());
         param1.registerService(IFriendInfoService,new FriendInfoService());
         param1.registerService(IFriendActionService,new FriendActionService());
         param1.registerService(IDialogsService,new DialogsService());
         param1.registerService(IBattleInfoService,new BattleInfoService());
         param1.registerService(IBattleInviteService,new BattleInviteService());
         param1.registerService(IDialogWindowsDispatcherService,new DialogWindowsDispatcherService());
         param1.registerService(ILoaderWindowService,new LoaderWindow());
         param1.registerService(ILoaderTipsService,new LoaderTips());
         param1.registerService(IUserPropertiesService,new UserPropertiesService());
         param1.registerService(IUserInfoService,new UserInfoService());
         param1.registerService(BattleEventDispatcher,new §override const super§());
         param1.registerService(BattleGUIService,new §`"5§());
         param1.registerService(IOnlineNotifierService,new OnlineNotifierService());
         param1.registerService(IPanelView,new §default var const§());
         param1.registerService(ISocialNetworkPanelService,new §super const include§());
         param1.registerService(PasswordService,new UserEmailAndPasswordModel());
         param1.registerService(ISettingsService,new §@+§());
         param1.registerService(IExternalEntranceModel,new ExternalEntranceModel());
         param1.registerService(ILogin,new LoginModel());
         param1.registerService(IPasswordRegistration,new PasswordRegistrationModel());
         param1.registerService(ILobbyLayoutNotify,new LobbyLayoutNotifyModel());
         param1.registerService(ILobbyLayout,new LobbyLayoutModel());
         param1.registerService(IBattleNotifierService,new BattleNotifierService());
         param1.registerService(IBattleLinkActivatorService,new BattleLinkActivatorService());
         param1.registerService(IServerCaptcha,new ServerCaptchaModel());
         param1.registerService(PingService,new §var const dynamic§());
         param1.registerService(BattleInputService,new §?!z§());
         param1.registerService(TargetingInputManager,new §get finally§());
         param1.registerService(TargetingModeService,new §2!V§());
         param1.registerService(KeysBindingService,new § W§());
         param1.registerService(IPasswordParamsService,new §6!M§());
         param1.registerService(PremiumService,new PremiumServiceImpl());
         param1.registerService(ILoginByHash,new LoginByHashModel());
         param1.registerService(BattleFormatUtil,new BattleFormatUtil());
         _loc2_.showBg();
      }
      
      public function stop(param1:OSGi) : void
      {
         param1.unregisterService(IBackgroundService);
         param1.unregisterService(IHelpService);
         param1.unregisterService(ILoaderWindowService);
         param1.unregisterService(IBlockUserService);
         param1.unregisterService(IFriendActionService);
         param1.unregisterService(IFriendInfoService);
         param1.unregisterService(IDialogsService);
         param1.unregisterService(IBlurService);
         param1.unregisterService(IBattleInfoService);
         param1.unregisterService(IBattleInviteService);
         param1.unregisterService(IDialogWindowsDispatcherService);
         param1.unregisterService(IUserPropertiesService);
         param1.unregisterService(IUserInfoService);
         this.loaderWindow = null;
         TanksServicesActivator.osgi = null;
      }
   }
}

