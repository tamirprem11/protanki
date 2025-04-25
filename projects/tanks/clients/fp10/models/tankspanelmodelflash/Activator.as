package projects.tanks.clients.fp10.models.tankspanelmodelflash
{
   import §"!T§.§5"a§;
   import §"!T§.§[!y§;
   import §"!T§.§do var static§;
   import §"!T§.§return default§;
   import §"!T§.§super for final§;
   import §#"a§.§0?§;
   import §#"a§.§function const implements§;
   import §#"a§.§native const native§;
   import §#"a§.§use for var§;
   import §1]§.§finally true§;
   import §3g§.§<?§;
   import §3g§.§final const break§;
   import §6![§.§'"T§;
   import §@"M§.§?S§;
   import §`$§.§for for static§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.blur.IBlurService;
   import alternativa.tanks.gui.CongratulationsWindowPresent;
   import alternativa.tanks.gui.CongratulationsWindowWithBanner;
   import alternativa.tanks.gui.NewsAlertWindow;
   import alternativa.tanks.gui.RankUpSupplyBonusAlert;
   import alternativa.tanks.gui.RepatriateBonusWindow;
   import alternativa.tanks.gui.ThanksForPurchaseWindow;
   import alternativa.tanks.gui.alerts.ItemsAlert;
   import alternativa.tanks.gui.battle.BattleFinishNotification;
   import alternativa.tanks.gui.buycrystals.BuyCrystalsAlert;
   import alternativa.tanks.gui.error.ErrorForm;
   import alternativa.tanks.gui.error.ErrorNotification;
   import alternativa.tanks.gui.friends.AddRequestView;
   import alternativa.tanks.gui.friends.FriendsWindow;
   import alternativa.tanks.gui.friends.battleLink.BattleLink;
   import alternativa.tanks.gui.friends.battleinvite.BattleInviteNotification;
   import alternativa.tanks.gui.friends.list.AcceptedList;
   import alternativa.tanks.gui.friends.list.IncomingList;
   import alternativa.tanks.gui.friends.list.OutgoingList;
   import alternativa.tanks.gui.friends.list.dataprovider.FriendsDataProvider;
   import alternativa.tanks.gui.friends.list.renderer.FriendsAcceptedListRenderer;
   import alternativa.tanks.gui.friends.list.renderer.FriendsIncomingListRenderer;
   import alternativa.tanks.gui.friends.list.renderer.FriendsOutgoingListRenderer;
   import alternativa.tanks.gui.friends.list.renderer.HeaderAcceptedList;
   import alternativa.tanks.gui.§package const extends§;
   import alternativa.tanks.gui.premiumaccount.PremiumAccountWelcomeAlert;
   import alternativa.tanks.gui.presents.NewPresentsAlert;
   import alternativa.tanks.gui.settings.SettingsWindow;
   import alternativa.tanks.gui.settings.§for var with§;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.model.achievement.AchievementModel;
   import alternativa.tanks.model.achievement.IAchievement;
   import alternativa.tanks.model.bonus.showing.image.BonusImageShowingModel;
   import alternativa.tanks.model.bonus.showing.info.BonusInfo;
   import alternativa.tanks.model.bonus.showing.info.BonusInfoAdapt;
   import alternativa.tanks.model.bonus.showing.info.BonusInfoEvents;
   import alternativa.tanks.model.bonus.showing.info.BonusInfoModel;
   import alternativa.tanks.model.bonus.showing.items.BonusItem;
   import alternativa.tanks.model.bonus.showing.items.BonusItemAdapt;
   import alternativa.tanks.model.bonus.showing.items.BonusItemEvents;
   import alternativa.tanks.model.bonus.showing.items.BonusItemModel;
   import alternativa.tanks.model.bonus.showing.items.BonusItemsShowingModel;
   import alternativa.tanks.model.donationalert.DonationAlertModel;
   import alternativa.tanks.model.friends.battleinvite.BattleInviteModel;
   import alternativa.tanks.model.garage.availableitems.AvailableItemsModel;
   import alternativa.tanks.model.garage.rankupsupplybonus.RankUpSupplyBonusModel;
   import alternativa.tanks.model.news.News;
   import alternativa.tanks.model.news.NewsAdapt;
   import alternativa.tanks.model.news.NewsEvents;
   import alternativa.tanks.model.news.NewsItemModel;
   import alternativa.tanks.model.news.NewsShowingModel;
   import alternativa.tanks.model.panel.PanelModel;
   import alternativa.tanks.model.premiumaccount.alert.PremiumAccountAlertModel;
   import alternativa.tanks.model.premiumaccount.notification.PremiumCompleteNotification;
   import alternativa.tanks.model.presents.NewPresentsShowingModel;
   import alternativa.tanks.model.settings.SettingsModel;
   import alternativa.tanks.model.socialnetwork.SocialNetworkPanelModel;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.model.userproperties.UserPropertiesModel;
   import alternativa.tanks.servermodels.loginbyhash.LoginByHashModel;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.achievement.§7"&§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import alternativa.tanks.service.dailyquest.§finally set switch§;
   import alternativa.tanks.service.dialogs.IDialogsService;
   import alternativa.tanks.service.fps.§get for import§;
   import alternativa.tanks.service.money.§6i§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.notificationcategories.§include for return§;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.panel.§default var const§;
   import alternativa.tanks.service.settings.§@+§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.service.settings.keybinding.§catch for include§;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.view.forms.freeuids.FreeUidsForm;
   import alternativa.types.Long;
   import §each var class§.§package for try§;
   import §final const dynamic§.§4d§;
   import §final const dynamic§.§82§;
   import §final const dynamic§.§set for dynamic§;
   import §finally for else§.§continue const default§;
   import §for continue§.§super const extends§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadPostListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.service.address.AddressService;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import projects.tanks.client.panel.model.bonus.showing.image.IBonusImageShowingModelBase;
   import projects.tanks.client.panel.model.bonus.showing.info.IBonusInfoModelBase;
   import projects.tanks.client.panel.model.bonus.showing.items.IBonusItemModelBase;
   import projects.tanks.client.panel.model.bonus.showing.items.IBonusItemsShowingModelBase;
   import projects.tanks.client.panel.model.dailyquest.§72§;
   import projects.tanks.client.panel.model.garage.rankupsupplybonus.IRankUpSupplyBonusModelBase;
   import projects.tanks.client.panel.model.news.item.INewsItemModelBase;
   import projects.tanks.client.panel.model.news.showing.INewsShowingModelBase;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §return set if§.§set final§;
   import services.contextmenu.IContextMenuService;
   import utils.TimeFormatter;
   import §while set false§.§%!+§;
   import §while set false§.§2h§;
   
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
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PremiumAccountWelcomeAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return PremiumAccountWelcomeAlert.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PremiumCompleteNotification.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return PremiumCompleteNotification.localeService;
         });
         osgi.injectService(INotificationService,function(param1:Object):void
         {
            PremiumAccountAlertModel.notificationService = INotificationService(param1);
         },function():INotificationService
         {
            return PremiumAccountAlertModel.notificationService;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            PremiumAccountAlertModel.premiumService = PremiumService(param1);
         },function():PremiumService
         {
            return PremiumAccountAlertModel.premiumService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PremiumAccountAlertModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return PremiumAccountAlertModel.localeService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            AcceptedList.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return AcceptedList.contextMenuService;
         });
         osgi.injectService(IOnlineNotifierService,function(param1:Object):void
         {
            AcceptedList.onlineNotifierService = IOnlineNotifierService(param1);
         },function():IOnlineNotifierService
         {
            return AcceptedList.onlineNotifierService;
         });
         osgi.injectService(IBattleNotifierService,function(param1:Object):void
         {
            AcceptedList.battleNotifierService = IBattleNotifierService(param1);
         },function():IBattleNotifierService
         {
            return AcceptedList.battleNotifierService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            AcceptedList.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return AcceptedList.battleInfoService;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            AcceptedList.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return AcceptedList.battleInviteService;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            BattleInviteModel.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return BattleInviteModel.battleInviteService;
         });
         osgi.injectService(INotificationService,function(param1:Object):void
         {
            BattleInviteModel.notificationService = INotificationService(param1);
         },function():INotificationService
         {
            return BattleInviteModel.notificationService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            BattleInviteModel.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return BattleInviteModel.battleInfoService;
         });
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            BattleInviteModel.battleLinkActivatorService = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return BattleInviteModel.battleLinkActivatorService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleInviteModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return BattleInviteModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleInviteModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleInviteModel.localeService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleInviteModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleInviteModel.lobbyLayoutService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            BattleInviteModel.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return BattleInviteModel.userInfoService;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            BattleInviteModel.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return BattleInviteModel.blurService;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            BattleInviteModel.friendInfoService = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return BattleInviteModel.friendInfoService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            BattleInviteModel.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return BattleInviteModel.dialogWindowsDispatcherService;
         });
         osgi.injectService(INotificationSoundService,function(param1:Object):void
         {
            BattleInviteModel.§+#§ = INotificationSoundService(param1);
         },function():INotificationSoundService
         {
            return BattleInviteModel.§+#§;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            BattleInviteNotification.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return BattleInviteNotification.battleInviteService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleInviteNotification.battleAlertService = IAlertService(param1);
         },function():IAlertService
         {
            return BattleInviteNotification.battleAlertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleInviteNotification.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleInviteNotification.localeService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleInviteNotification.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return BattleInviteNotification.storageService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            BattleLink.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return BattleLink.userInfoService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLink.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLink.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLink.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLink.localeService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLink.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLink.userPropertiesService;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            UserPropertiesModel.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return UserPropertiesModel.panelView;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            UserPropertiesModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return UserPropertiesModel.display;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            UserPropertiesModel.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return UserPropertiesModel.helpService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            UserPropertiesModel.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return UserPropertiesModel.userPropertiesService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            UserPropertiesModel.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return UserPropertiesModel.moneyService;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            §6i§.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return §6i§.panelView;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §default var const§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §default var const§.display;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            AvailableItemsModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return AvailableItemsModel.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            AvailableItemsModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return AvailableItemsModel.localeService;
         });
         osgi.injectService(INotificationGarageCategoriesService,function(param1:Object):void
         {
            AvailableItemsModel.notificationGarageCategoriesService = INotificationGarageCategoriesService(param1);
         },function():INotificationGarageCategoriesService
         {
            return AvailableItemsModel.notificationGarageCategoriesService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §include for return§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §include for return§.storageService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RepatriateBonusWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return RepatriateBonusWindow.localeService;
         });
         osgi.injectService(IEntranceClientFacade,function(param1:Object):void
         {
            LoginByHashModel.clientFacade = IEntranceClientFacade(param1);
         },function():IEntranceClientFacade
         {
            return LoginByHashModel.clientFacade;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            LoginByHashModel.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return LoginByHashModel.storageService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            NewsShowingModel.dialogsService = IDialogsService(param1);
         },function():IDialogsService
         {
            return NewsShowingModel.dialogsService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            NewsShowingModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return NewsShowingModel.display;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §7"&§.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return §7"&§.helpService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            §7"&§.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return §7"&§.clientLog;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            §7"&§.modelRegister = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return §7"&§.modelRegister;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §7"&§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §7"&§.display;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §7"&§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §7"&§.settingsService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §7"&§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §7"&§.lobbyLayoutService;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            §7"&§.partnersService = IPartnerService(param1);
         },function():IPartnerService
         {
            return §7"&§.partnersService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            CongratulationsWindowPresent.display = IDisplay(param1);
         },function():IDisplay
         {
            return CongratulationsWindowPresent.display;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            CongratulationsWindowPresent.dialogsService = IDialogsService(param1);
         },function():IDialogsService
         {
            return CongratulationsWindowPresent.dialogsService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            CongratulationsWindowPresent.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return CongratulationsWindowPresent.localeService;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            AchievementModel.achievementService = IAchievementService(param1);
         },function():IAchievementService
         {
            return AchievementModel.achievementService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RankUpSupplyBonusAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return RankUpSupplyBonusAlert.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleFinishNotification.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleFinishNotification.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ErrorNotification.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ErrorNotification.localeService;
         });
         osgi.injectService(AddressService,function(param1:Object):void
         {
            ErrorNotification.addressService = AddressService(param1);
         },function():AddressService
         {
            return ErrorNotification.addressService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleLinkActivatorService.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return BattleLinkActivatorService.storageService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            BattleLinkActivatorService.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return BattleLinkActivatorService.battleInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkActivatorService.userPropertyService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkActivatorService.userPropertyService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleLinkActivatorService.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return BattleLinkActivatorService.alertService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLinkActivatorService.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLinkActivatorService.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLinkActivatorService.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLinkActivatorService.localeService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            BattleLinkActivatorService.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return BattleLinkActivatorService.dialogWindowsDispatcherService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BuyCrystalsAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BuyCrystalsAlert.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BonusItemsShowingModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BonusItemsShowingModel.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BonusItemsShowingModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return BonusItemsShowingModel.display;
         });
         osgi.injectService(ResourceRegistry,function(param1:Object):void
         {
            BonusItemsShowingModel.resourceRegistry = ResourceRegistry(param1);
         },function():ResourceRegistry
         {
            return BonusItemsShowingModel.resourceRegistry;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            BonusItemsShowingModel.modelRegister = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return BonusItemsShowingModel.modelRegister;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            BonusItemsShowingModel.dialogsService = IDialogsService(param1);
         },function():IDialogsService
         {
            return BonusItemsShowingModel.dialogsService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            CongratulationsWindowWithBanner.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return CongratulationsWindowWithBanner.localeService;
         });
         osgi.injectService(AddressService,function(param1:Object):void
         {
            ErrorForm.addressService = AddressService(param1);
         },function():AddressService
         {
            return ErrorForm.addressService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleLinkActivatorService.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return BattleLinkActivatorService.storageService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            BattleLinkActivatorService.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return BattleLinkActivatorService.battleInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkActivatorService.userPropertyService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkActivatorService.userPropertyService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleLinkActivatorService.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return BattleLinkActivatorService.alertService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLinkActivatorService.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLinkActivatorService.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLinkActivatorService.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLinkActivatorService.localeService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            BattleLinkActivatorService.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return BattleLinkActivatorService.dialogWindowsDispatcherService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            DonationAlertModel.dialogsService = IDialogsService(param1);
         },function():IDialogsService
         {
            return DonationAlertModel.dialogsService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            DonationAlertModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return DonationAlertModel.alertService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            DonationAlertModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return DonationAlertModel.display;
         });
         osgi.injectService(ITrackerService,function(param1:Object):void
         {
            DonationAlertModel.trackerService = ITrackerService(param1);
         },function():ITrackerService
         {
            return DonationAlertModel.trackerService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §get for import§.§&"P§ = IDisplay(param1);
         },function():IDisplay
         {
            return §get for import§.§&"P§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            FreeUidsForm.display = IDisplay(param1);
         },function():IDisplay
         {
            return FreeUidsForm.display;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FreeUidsForm.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return FreeUidsForm.localeService;
         });
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            FriendsAcceptedListRenderer.battleLinkActivatorService = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return FriendsAcceptedListRenderer.battleLinkActivatorService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FriendsAcceptedListRenderer.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return FriendsAcceptedListRenderer.localeService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            FriendsAcceptedListRenderer.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return FriendsAcceptedListRenderer.contextMenuService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            FriendsAcceptedListRenderer.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return FriendsAcceptedListRenderer.userPropertiesService;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsDataProvider.friendInfoService = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsDataProvider.friendInfoService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            FriendsDataProvider.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return FriendsDataProvider.userInfoService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            FriendsDataProvider.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return FriendsDataProvider.battleInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            FriendsDataProvider.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return FriendsDataProvider.userPropertiesService;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            FriendsDataProvider.partnerService = IPartnerService(param1);
         },function():IPartnerService
         {
            return FriendsDataProvider.partnerService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            FriendsIncomingListRenderer.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return FriendsIncomingListRenderer.contextMenuService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FriendsIncomingListRenderer.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return FriendsIncomingListRenderer.localeService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            SettingsModel.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return SettingsModel.settingsService;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            SettingsModel.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return SettingsModel.panelView;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SettingsModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return SettingsModel.localeService;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            SettingsModel.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return SettingsModel.battleInviteService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            SettingsModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return SettingsModel.alertService;
         });
         osgi.injectService(FullscreenService,function(param1:Object):void
         {
            SettingsModel.fullscreenService = FullscreenService(param1);
         },function():FullscreenService
         {
            return SettingsModel.fullscreenService;
         });
         osgi.injectService(PasswordService,function(param1:Object):void
         {
            SettingsModel.§5!M§ = PasswordService(param1);
         },function():PasswordService
         {
            return SettingsModel.§5!M§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §@+§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §@+§.storageService;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            §@+§.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return §@+§.battleInviteService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §for var with§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §for var with§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SettingsWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return SettingsWindow.localeService;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            SettingsWindow.helperService = IHelpService(param1);
         },function():IHelpService
         {
            return SettingsWindow.helperService;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            SettingsWindow.partnersService = IPartnerService(param1);
         },function():IPartnerService
         {
            return SettingsWindow.partnersService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §'"T§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §'"T§.display;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            §'"T§.partnersService = IPartnerService(param1);
         },function():IPartnerService
         {
            return §'"T§.partnersService;
         });
         osgi.injectService(ISocialNetworkPanelService,function(param1:Object):void
         {
            §'"T§.socialNetworkService = ISocialNetworkPanelService(param1);
         },function():ISocialNetworkPanelService
         {
            return §'"T§.socialNetworkService;
         });
         osgi.injectService(IValidateService,function(param1:Object):void
         {
            §'"T§.validateService = IValidateService(param1);
         },function():IValidateService
         {
            return §'"T§.validateService;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §'"T§.helperService = IHelpService(param1);
         },function():IHelpService
         {
            return §'"T§.helperService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §2h§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §2h§.settingsService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §2h§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §2h§.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §%!+§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §%!+§.display;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §set for dynamic§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §set for dynamic§.§>!Y§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §set for dynamic§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §set for dynamic§.localeService;
         });
         osgi.injectService(FullscreenService,function(param1:Object):void
         {
            §82§.§in const§ = FullscreenService(param1);
         },function():FullscreenService
         {
            return §82§.§in const§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §82§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §82§.display;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §4d§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §4d§.§>!Y§;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            §?S§.battleInviteService = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return §?S§.battleInviteService;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            PanelModel.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return PanelModel.panelView;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            PanelModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return PanelModel.display;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            PanelModel.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return PanelModel.helpService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            PanelModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return PanelModel.lobbyLayoutService;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            PanelModel.achievementService = IAchievementService(param1);
         },function():IAchievementService
         {
            return PanelModel.achievementService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            PanelModel.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return PanelModel.battleInfoService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            PanelModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return PanelModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            PanelModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return PanelModel.localeService;
         });
         osgi.injectService(DailyQuestNotifierService,function(param1:Object):void
         {
            §super const extends§.§9"5§ = DailyQuestNotifierService(param1);
         },function():DailyQuestNotifierService
         {
            return §super const extends§.§9"5§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §native const native§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §native const native§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §use for var§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §use for var§.localeService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            §use for var§.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return §use for var§.moneyService;
         });
         osgi.injectService(DailyQuestNotifierService,function(param1:Object):void
         {
            §use for var§.§+!$§ = DailyQuestNotifierService(param1);
         },function():DailyQuestNotifierService
         {
            return §use for var§.§+!$§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §0?§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §0?§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §function const implements§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §function const implements§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §<?§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §<?§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §final const break§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §final const break§.localeService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            §final const break§.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return §final const break§.moneyService;
         });
         osgi.injectService(DailyQuestNotifierService,function(param1:Object):void
         {
            §finally set switch§.§+!$§ = DailyQuestNotifierService(param1);
         },function():DailyQuestNotifierService
         {
            return §finally set switch§.§+!$§;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            §5"a§.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return §5"a§.panelView;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §package const extends§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §package const extends§.localeService;
         });
         osgi.injectService(IFriendActionService,function(param1:Object):void
         {
            AddRequestView.friendsActionService = IFriendActionService(param1);
         },function():IFriendActionService
         {
            return AddRequestView.friendsActionService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            AddRequestView.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return AddRequestView.localeService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            AddRequestView.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return AddRequestView.alertService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            AddRequestView.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return AddRequestView.dialogWindowsDispatcherService;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            AddRequestView.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return AddRequestView.blurService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            AddRequestView.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return AddRequestView.userPropertiesService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            FriendsOutgoingListRenderer.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return FriendsOutgoingListRenderer.contextMenuService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FriendsWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return FriendsWindow.localeService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            FriendsWindow.dialogService = IDialogsService(param1);
         },function():IDialogsService
         {
            return FriendsWindow.dialogService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            FriendsWindow.display = IDisplay(param1);
         },function():IDisplay
         {
            return FriendsWindow.display;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            FriendsWindow.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return FriendsWindow.dialogWindowsDispatcherService;
         });
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            FriendsWindow.battleLinkActivatorService = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return FriendsWindow.battleLinkActivatorService;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsWindow.friendInfoService = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsWindow.friendInfoService;
         });
         osgi.injectService(IFriendActionService,function(param1:Object):void
         {
            FriendsWindow.friendsActionService = IFriendActionService(param1);
         },function():IFriendActionService
         {
            return FriendsWindow.friendsActionService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            FriendsWindow.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return FriendsWindow.alertService;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            FriendsWindow.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return FriendsWindow.blurService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            HeaderAcceptedList.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return HeaderAcceptedList.localeService;
         });
         osgi.injectService(IPartnerService,function(param1:Object):void
         {
            HeaderAcceptedList.partnersService = IPartnerService(param1);
         },function():IPartnerService
         {
            return HeaderAcceptedList.partnersService;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            IncomingList.friendInfoService = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return IncomingList.friendInfoService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            IncomingList.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return IncomingList.contextMenuService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemsAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemsAlert.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §catch for include§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §catch for include§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            NewPresentsAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return NewPresentsAlert.localeService;
         });
         osgi.injectService(INotificationGarageCategoriesService,function(param1:Object):void
         {
            NewPresentsShowingModel.notificationGarageCategoriesService = INotificationGarageCategoriesService(param1);
         },function():INotificationGarageCategoriesService
         {
            return NewPresentsShowingModel.notificationGarageCategoriesService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            NewsAlertWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return NewsAlertWindow.localeService;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            OutgoingList.friendInfoService = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return OutgoingList.friendInfoService;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            OutgoingList.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return OutgoingList.contextMenuService;
         });
         osgi.injectService(ResourceRegistry,function(param1:Object):void
         {
            RepatriateBonusWindow.resourceService = ResourceRegistry(param1);
         },function():ResourceRegistry
         {
            return RepatriateBonusWindow.resourceService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            RepatriateBonusWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return RepatriateBonusWindow.localeService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            RepatriateBonusWindow.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return RepatriateBonusWindow.clientLog;
         });
         osgi.injectService(ISocialNetworkPanelService,function(param1:Object):void
         {
            SocialNetworkPanelModel.socialNetworkService = ISocialNetworkPanelService(param1);
         },function():ISocialNetworkPanelService
         {
            return SocialNetworkPanelModel.socialNetworkService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SocialNetworkPanelModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return SocialNetworkPanelModel.localeService;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            SocialNetworkPanelModel.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return SocialNetworkPanelModel.alertService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ThanksForPurchaseWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ThanksForPurchaseWindow.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            TimeFormatter.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return TimeFormatter.localeService;
         });
         modelRegister = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegister.add(new NewsShowingModel(),Vector.<Class>([INewsShowingModelBase,IObjectLoadListener]));
         modelRegisterAdapt.registerAdapt(News,NewsAdapt);
         modelRegisterAdapt.registerEvents(News,NewsEvents);
         modelRegister.add(new NewsItemModel(),Vector.<Class>([INewsItemModelBase,News]));
         modelRegister.register(Long.getLong(0,300050051),Long.getLong(0,300050031));
         modelRegister.add(new AchievementModel(),Vector.<Class>([§finally true§,IAchievement,IObjectLoadListener]));
         modelRegister.add(new RankUpSupplyBonusModel(),Vector.<Class>([IRankUpSupplyBonusModelBase]));
         modelRegister.add(new BonusInfoModel(),Vector.<Class>([IBonusInfoModelBase,BonusInfo]));
         modelRegisterAdapt.registerAdapt(BonusInfo,BonusInfoAdapt);
         modelRegisterAdapt.registerEvents(BonusInfo,BonusInfoEvents);
         modelRegister.add(new BonusItemsShowingModel(),Vector.<Class>([IBonusItemsShowingModelBase,IObjectLoadListener]));
         modelRegister.add(new BonusItemModel(),Vector.<Class>([IBonusItemModelBase,BonusItem]));
         modelRegisterAdapt.registerAdapt(BonusItem,BonusItemAdapt);
         modelRegisterAdapt.registerEvents(BonusItem,BonusItemEvents);
         modelRegister.add(new BonusImageShowingModel(),Vector.<Class>([IBonusImageShowingModelBase,IObjectLoadListener]));
         modelRegister.add(new §finally set switch§(),Vector.<Class>([§set final§,ObjectLoadPostListener,ObjectUnloadPostListener]));
         modelRegisterAdapt.registerAdapt(§super for final§,§return default§);
         modelRegisterAdapt.registerEvents(§super for final§,§[!y§);
         modelRegister.add(new §do var static§(),Vector.<Class>([§72§,§super for final§]));
         modelRegister.add(new §5"a§(),Vector.<Class>([§continue const default§,ObjectLoadPostListener,ObjectUnloadPostListener]));
         modelRegister.add(new §for for static§(),Vector.<Class>([§package for try§]));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

