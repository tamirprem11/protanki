package projects.tanks.clients.fp10.models.tanksgaragemodelflash
{
   import §'!j§.§""G§;
   import §'!j§.§-b§;
   import §'!j§.§3!H§;
   import §'!j§.§6o§;
   import §'!j§.§]v§;
   import §'!j§.§catch var do§;
   import §'!j§.§class set var§;
   import §'!j§.§try function§;
   import §4"P§.§else var set§;
   import §8!M§.§+!Z§;
   import §8!M§.§=0§;
   import §8!M§.§finally switch§;
   import §8!M§.§import for try§;
   import §<h§.§6w§;
   import §<h§.§use switch§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.dump.IDumpService;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.blur.IBlurService;
   import alternativa.tanks.gui.§;6§;
   import alternativa.tanks.gui.ConfirmAlert;
   import alternativa.tanks.gui.GarageWindow;
   import alternativa.tanks.gui.ItemInfoPanel;
   import alternativa.tanks.gui.buttons.CrystalButton;
   import alternativa.tanks.gui.buttons.GarageButton;
   import alternativa.tanks.gui.effects.BlinkEffect;
   import alternativa.tanks.gui.effects.FlashEffect;
   import alternativa.tanks.gui.effects.GlowEffect;
   import alternativa.tanks.gui.garagelist.GarageListController;
   import alternativa.tanks.gui.tankpreview.TankPreviewWindow;
   import alternativa.tanks.gui.upgrade.SelectUpgradeWindow;
   import alternativa.tanks.gui.upgrade.UpgradeButton;
   import alternativa.tanks.gui.upgrade.UpgradeInfoForm;
   import alternativa.tanks.gui.upgrade.UpgradeWindowBase;
   import alternativa.tanks.help.FirstMoneyHelper;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.model.garage.§8!a§;
   import alternativa.tanks.model.garage.GarageModel;
   import alternativa.tanks.model.garage.§if const§;
   import alternativa.tanks.model.garage.§super const default§;
   import alternativa.tanks.model.item.buyable.BuyableModel;
   import alternativa.tanks.model.item.buyable.IBuyable;
   import alternativa.tanks.model.item.buyable.IBuyableAdapt;
   import alternativa.tanks.model.item.buyable.IBuyableEvents;
   import alternativa.tanks.model.item.category.IItemCategory;
   import alternativa.tanks.model.item.category.IItemCategoryAdapt;
   import alternativa.tanks.model.item.category.IItemCategoryEvents;
   import alternativa.tanks.model.item.category.IItemViewCategory;
   import alternativa.tanks.model.item.category.IItemViewCategoryAdapt;
   import alternativa.tanks.model.item.category.IItemViewCategoryEvents;
   import alternativa.tanks.model.item.category.ItemCategoryModel;
   import alternativa.tanks.model.item.category.ItemViewCategoryModel;
   import alternativa.tanks.model.item.countable.CountableItemModel;
   import alternativa.tanks.model.item.countable.ICountableItem;
   import alternativa.tanks.model.item.countable.ICountableItemAdapt;
   import alternativa.tanks.model.item.countable.ICountableItemEvents;
   import alternativa.tanks.model.item.discount.DiscountCollectorModel;
   import alternativa.tanks.model.item.discount.DiscountModel;
   import alternativa.tanks.model.item.discount.ICollectDiscount;
   import alternativa.tanks.model.item.discount.ICollectDiscountAdapt;
   import alternativa.tanks.model.item.discount.ICollectDiscountEvents;
   import alternativa.tanks.model.item.discount.IDiscount;
   import alternativa.tanks.model.item.discount.IDiscountAdapt;
   import alternativa.tanks.model.item.discount.IDiscountEvents;
   import alternativa.tanks.model.item.item.IItem;
   import alternativa.tanks.model.item.item.IItemAdapt;
   import alternativa.tanks.model.item.item.IItemEvents;
   import alternativa.tanks.model.item.item.ItemModel;
   import alternativa.tanks.model.item.kit.§0"h§;
   import alternativa.tanks.model.item.kit.§6!`§;
   import alternativa.tanks.model.item.kit.GarageKit;
   import alternativa.tanks.model.item.kit.§for const final§;
   import alternativa.tanks.model.item.modification.IModification;
   import alternativa.tanks.model.item.modification.IModificationAdapt;
   import alternativa.tanks.model.item.modification.IModificationEvents;
   import alternativa.tanks.model.item.modification.ModificationModel;
   import alternativa.tanks.model.item.present.PresentItem;
   import alternativa.tanks.model.item.present.PresentItemAdapt;
   import alternativa.tanks.model.item.present.PresentItemEvents;
   import alternativa.tanks.model.item.present.PresentItemModel;
   import alternativa.tanks.model.item.properties.ItemProperties;
   import alternativa.tanks.model.item.properties.ItemPropertiesAdapt;
   import alternativa.tanks.model.item.properties.ItemPropertiesEvents;
   import alternativa.tanks.model.item.properties.ItemPropertiesModel;
   import alternativa.tanks.model.item.temporary.ITemporaryItem;
   import alternativa.tanks.model.item.temporary.ITemporaryItemAdapt;
   import alternativa.tanks.model.item.temporary.ITemporaryItemEvents;
   import alternativa.tanks.model.item.temporary.TemporaryItemModel;
   import alternativa.tanks.model.item.upgradable.UpgradableItem;
   import alternativa.tanks.model.item.upgradable.UpgradableItemAdapt;
   import alternativa.tanks.model.item.upgradable.UpgradableItemEvents;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.model.item.upgradable.UpgradableParamsModel;
   import alternativa.tanks.model.item3d.Item3DModel;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.delaymountcategory.§0"e§;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.dialogs.IDialogsService;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.item.§6!^§;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item.upgradable.speedup.SpeedUpCostCalculatorService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.§include false§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.temporaryitem.§ L§;
   import alternativa.tanks.service.temporaryitem.ITemporaryItemService;
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import alternativa.tanks.service.temporaryitemnotify.§static var switch§;
   import alternativa.tanks.tracker.ITrackerService;
   import §const for import§.§if for try§;
   import controls.timer.CountDownTimerOnCompleteBefore;
   import §else set if§.§var const switch§;
   import §override const case§.§#!7§;
   import §override const case§.§class const continue§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import projects.tanks.client.garage.models.garage.IGarageModelBase;
   import projects.tanks.client.garage.models.item.buyable.IBuyableModelBase;
   import projects.tanks.client.garage.models.item.category.IItemCategoryModelBase;
   import projects.tanks.client.garage.models.item.countable.ICountableItemModelBase;
   import projects.tanks.client.garage.models.item.discount.IDiscountCollectorModelBase;
   import projects.tanks.client.garage.models.item.discount.IDiscountModelBase;
   import projects.tanks.client.garage.models.item.item.IItemModelBase;
   import projects.tanks.client.garage.models.item.item3d.IItem3DModelBase;
   import projects.tanks.client.garage.models.item.kit.§;"]§;
   import projects.tanks.client.garage.models.item.modification.IModificationModelBase;
   import projects.tanks.client.garage.models.item.present.IPresentItemModelBase;
   import projects.tanks.client.garage.models.item.properties.IItemPropertiesModelBase;
   import projects.tanks.client.garage.models.item.temporary.ITemporaryItemModelBase;
   import projects.tanks.client.garage.models.item.upgradeable.IUpgradeableParamsConstructorModelBase;
   import projects.tanks.client.garage.models.item.view.IItemViewCategoryModelBase;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import utils.resource.IResourceLoadingComplete;
   import §while const switch§.§;!Q§;
   
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
            §if for try§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §if for try§.localeService;
         });
         osgi.injectService(UidCheckService,function(param1:Object):void
         {
            §if for try§.§@!u§ = UidCheckService(param1);
         },function():UidCheckService
         {
            return §if for try§.§@!u§;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageListController.itemService = ItemService(param1);
         },function():ItemService
         {
            return GarageListController.itemService;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            GarageListController.premiumService = PremiumService(param1);
         },function():PremiumService
         {
            return GarageListController.premiumService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageListController.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageListController.userPropertiesService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            GarageListController.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return GarageListController.storageService;
         });
         osgi.injectService(INotificationGarageCategoriesService,function(param1:Object):void
         {
            GarageListController.notificationGarageCategoriesService = INotificationGarageCategoriesService(param1);
         },function():INotificationGarageCategoriesService
         {
            return GarageListController.notificationGarageCategoriesService;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            GarageListController.garageService = GarageService(param1);
         },function():GarageService
         {
            return GarageListController.garageService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ConfirmAlert.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ConfirmAlert.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ItemInfoPanel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ItemInfoPanel.localeService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            ItemInfoPanel.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return ItemInfoPanel.userPropertiesService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            ItemInfoPanel.itemService = ItemService(param1);
         },function():ItemService
         {
            return ItemInfoPanel.itemService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            ItemInfoPanel.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return ItemInfoPanel.clientLog;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            ItemInfoPanel.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return ItemInfoPanel.moneyService;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            ItemInfoPanel.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return ItemInfoPanel.panelView;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            ItemInfoPanel.propertyService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return ItemInfoPanel.propertyService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            ItemInfoPanel.dialogService = IDialogsService(param1);
         },function():IDialogsService
         {
            return ItemInfoPanel.dialogService;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            ItemInfoPanel.§ !9§ = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return ItemInfoPanel.§ !9§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            UpgradeButton.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return UpgradeButton.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            UpgradeWindowBase.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return UpgradeWindowBase.localeService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            SelectUpgradeWindow.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return SelectUpgradeWindow.moneyService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            SelectUpgradeWindow.dialogService = IDialogsService(param1);
         },function():IDialogsService
         {
            return SelectUpgradeWindow.dialogService;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            SelectUpgradeWindow.propertyService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return SelectUpgradeWindow.propertyService;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            UpgradeInfoForm.propertyService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return UpgradeInfoForm.propertyService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            UpgradeInfoForm.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return UpgradeInfoForm.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageWindow.localeService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageWindow.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageWindow.userPropertiesService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            GarageWindow.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return GarageWindow.clientLog;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            GarageWindow.alertService = IAlertService(param1);
         },function():IAlertService
         {
            return GarageWindow.alertService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageWindow.itemService = ItemService(param1);
         },function():ItemService
         {
            return GarageWindow.itemService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            GarageWindow.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return GarageWindow.moneyService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            GarageWindow.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return GarageWindow.lobbyLayoutService;
         });
         osgi.injectService(ITrackerService,function(param1:Object):void
         {
            GarageWindow.trackerService = ITrackerService(param1);
         },function():ITrackerService
         {
            return GarageWindow.trackerService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            GarageWindow.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return GarageWindow.battleInfoService;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            GarageWindow.tank3DViewer = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return GarageWindow.tank3DViewer;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageButton.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageButton.localeService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            GarageButton.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return GarageButton.moneyService;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            GarageButton.premiumService = PremiumService(param1);
         },function():PremiumService
         {
            return GarageButton.premiumService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            CrystalButton.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return CrystalButton.moneyService;
         });
         osgi.injectService(FPSService,function(param1:Object):void
         {
            GlowEffect.fpsService = FPSService(param1);
         },function():FPSService
         {
            return GlowEffect.fpsService;
         });
         osgi.injectService(FPSService,function(param1:Object):void
         {
            FlashEffect.fpsService = FPSService(param1);
         },function():FPSService
         {
            return FlashEffect.fpsService;
         });
         osgi.injectService(FPSService,function(param1:Object):void
         {
            BlinkEffect.fpsService = FPSService(param1);
         },function():FPSService
         {
            return BlinkEffect.fpsService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §include false§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §include false§.localeService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            §include false§.logger = IClientLog(param1);
         },function():IClientLog
         {
            return §include false§.logger;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            UpgradableItemPropertyValue.propertyParamsService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return UpgradableItemPropertyValue.propertyParamsService;
         });
         osgi.injectService(SpeedUpCostCalculatorService,function(param1:Object):void
         {
            UpgradableItemPropertyValue.speedUpCostCalculator = SpeedUpCostCalculatorService(param1);
         },function():SpeedUpCostCalculatorService
         {
            return UpgradableItemPropertyValue.speedUpCostCalculator;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            UpgradableItemPropertyValue.itemService = ItemService(param1);
         },function():ItemService
         {
            return UpgradableItemPropertyValue.itemService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            FirstMoneyHelper.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return FirstMoneyHelper.localeService;
         });
         osgi.injectService(ITrackerService,function(param1:Object):void
         {
            GarageModel.trackerService = ITrackerService(param1);
         },function():ITrackerService
         {
            return GarageModel.trackerService;
         });
         osgi.injectService(IDumpService,function(param1:Object):void
         {
            GarageModel.dumpService = IDumpService(param1);
         },function():IDumpService
         {
            return GarageModel.dumpService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            GarageModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return GarageModel.display;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            GarageModel.modelRegistry = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return GarageModel.modelRegistry;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            GarageModel.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return GarageModel.helpService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            GarageModel.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return GarageModel.userPropertiesService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            GarageModel.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return GarageModel.clientLog;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            GarageModel.itemService = ItemService(param1);
         },function():ItemService
         {
            return GarageModel.itemService;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            GarageModel.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return GarageModel.blurService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            GarageModel.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return GarageModel.localeService;
         });
         osgi.injectService(ITemporaryItemService,function(param1:Object):void
         {
            GarageModel.temporaryItemService = ITemporaryItemService(param1);
         },function():ITemporaryItemService
         {
            return GarageModel.temporaryItemService;
         });
         osgi.injectService(ITemporaryItemNotifyService,function(param1:Object):void
         {
            GarageModel.temporaryItemNotifyService = ITemporaryItemNotifyService(param1);
         },function():ITemporaryItemNotifyService
         {
            return GarageModel.temporaryItemNotifyService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            GarageModel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return GarageModel.lobbyLayoutService;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            GarageModel.tank3DViewer = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return GarageModel.tank3DViewer;
         });
         osgi.injectService(IAchievementService,function(param1:Object):void
         {
            GarageModel.achievementService = IAchievementService(param1);
         },function():IAchievementService
         {
            return GarageModel.achievementService;
         });
         osgi.injectService(IMoneyService,function(param1:Object):void
         {
            GarageModel.moneyService = IMoneyService(param1);
         },function():IMoneyService
         {
            return GarageModel.moneyService;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            GarageModel.loaderWindowService = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return GarageModel.loaderWindowService;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            GarageModel.garageService = GarageService(param1);
         },function():GarageService
         {
            return GarageModel.garageService;
         });
         osgi.injectService(CommandService,function(param1:Object):void
         {
            GarageModel.commandService = CommandService(param1);
         },function():CommandService
         {
            return GarageModel.commandService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            GarageModel.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return GarageModel.battleInfoService;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            GarageModel.§+"i§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return GarageModel.§+"i§;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            UpgradableParamsModel.propertyService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return UpgradableParamsModel.propertyService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            UpgradableParamsModel.itemService = ItemService(param1);
         },function():ItemService
         {
            return UpgradableParamsModel.itemService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            UpgradableParamsModel.logger = IClientLog(param1);
         },function():IClientLog
         {
            return UpgradableParamsModel.logger;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            Item3DModel.itemService = ItemService(param1);
         },function():ItemService
         {
            return Item3DModel.itemService;
         });
         osgi.injectService(ITank3DViewer,function(param1:Object):void
         {
            Item3DModel.tank3DViewer = ITank3DViewer(param1);
         },function():ITank3DViewer
         {
            return Item3DModel.tank3DViewer;
         });
         osgi.injectService(ResourceRegistry,function(param1:Object):void
         {
            Item3DModel.resourceRegistry = ResourceRegistry(param1);
         },function():ResourceRegistry
         {
            return Item3DModel.resourceRegistry;
         });
         osgi.injectService(ITemporaryItemService,function(param1:Object):void
         {
            TemporaryItemModel.temporaryItemService = ITemporaryItemService(param1);
         },function():ITemporaryItemService
         {
            return TemporaryItemModel.temporaryItemService;
         });
         osgi.injectService(ITemporaryItemNotifyService,function(param1:Object):void
         {
            TemporaryItemModel.temporaryItemNotifyService = ITemporaryItemNotifyService(param1);
         },function():ITemporaryItemNotifyService
         {
            return TemporaryItemModel.temporaryItemNotifyService;
         });
         osgi.injectService(ITemporaryItemNotifyService,function(param1:Object):void
         {
            § L§.temporaryItemNotifyService = ITemporaryItemNotifyService(param1);
         },function():ITemporaryItemNotifyService
         {
            return § L§.temporaryItemNotifyService;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            DiscountModel.garageService = GarageService(param1);
         },function():GarageService
         {
            return DiscountModel.garageService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            §0"h§.itemService = ItemService(param1);
         },function():ItemService
         {
            return §0"h§.itemService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §0"h§.userPropertyService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §0"h§.userPropertyService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §class const continue§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §class const continue§.localeService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            §class const continue§.itemService = ItemService(param1);
         },function():ItemService
         {
            return §class const continue§.itemService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            §#!7§.itemService = ItemService(param1);
         },function():ItemService
         {
            return §#!7§.itemService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §#!7§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §#!7§.localeService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §;6§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §;6§.localeService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            §3!H§.itemService = ItemService(param1);
         },function():ItemService
         {
            return §3!H§.itemService;
         });
         osgi.injectService(ItemService,function(param1:Object):void
         {
            §0"e§.itemService = ItemService(param1);
         },function():ItemService
         {
            return §0"e§.itemService;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            §0"e§.logService = LogService(param1);
         },function():LogService
         {
            return §0"e§.logService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            ItemInfoPanel.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return ItemInfoPanel.lobbyLayoutService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            ItemInfoPanel.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return ItemInfoPanel.battleInfoService;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            ItemInfoPanel.§+"i§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return ItemInfoPanel.§+"i§;
         });
         osgi.injectService(IDelayMountCategoryService,function(param1:Object):void
         {
            §;!Q§.§+"i§ = IDelayMountCategoryService(param1);
         },function():IDelayMountCategoryService
         {
            return §;!Q§.§+"i§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §;!Q§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §;!Q§.lobbyLayoutService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §;!Q§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §;!Q§.battleInfoService;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            §;!Q§.logService = LogService(param1);
         },function():LogService
         {
            return §;!Q§.logService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            TankPreviewWindow.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return TankPreviewWindow.localeService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            TankPreviewWindow.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return TankPreviewWindow.lobbyLayoutService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §6!^§.userPropertyService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §6!^§.userPropertyService;
         });
         osgi.injectService(ItemPropertyParamsService,function(param1:Object):void
         {
            §6!^§.propertyService = ItemPropertyParamsService(param1);
         },function():ItemPropertyParamsService
         {
            return §6!^§.propertyService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §6!^§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §6!^§.localeService;
         });
         osgi.injectService(GarageService,function(param1:Object):void
         {
            §6!^§.garageService = GarageService(param1);
         },function():GarageService
         {
            return §6!^§.garageService;
         });
         modelRegister = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt.registerAdapt(PresentItem,PresentItemAdapt);
         modelRegisterAdapt.registerEvents(PresentItem,PresentItemEvents);
         modelRegister.add(new PresentItemModel(),Vector.<Class>([IPresentItemModelBase,PresentItem]));
         modelRegister.add(new ItemModel(),Vector.<Class>([IItemModelBase,IItem]));
         modelRegisterAdapt.registerAdapt(IItem,IItemAdapt);
         modelRegisterAdapt.registerEvents(IItem,IItemEvents);
         modelRegisterAdapt.registerAdapt(IItemViewCategory,IItemViewCategoryAdapt);
         modelRegisterAdapt.registerEvents(IItemViewCategory,IItemViewCategoryEvents);
         modelRegisterAdapt.registerAdapt(IItemCategory,IItemCategoryAdapt);
         modelRegisterAdapt.registerEvents(IItemCategory,IItemCategoryEvents);
         modelRegister.add(new ItemCategoryModel(),Vector.<Class>([IItemCategoryModelBase,IItemCategory]));
         modelRegister.add(new ItemViewCategoryModel(),Vector.<Class>([IItemViewCategoryModelBase,IItemViewCategory]));
         modelRegister.add(new BuyableModel(),Vector.<Class>([IBuyableModelBase,IBuyable]));
         modelRegisterAdapt.registerAdapt(IBuyable,IBuyableAdapt);
         modelRegisterAdapt.registerEvents(IBuyable,IBuyableEvents);
         modelRegisterAdapt.registerAdapt(IModification,IModificationAdapt);
         modelRegisterAdapt.registerEvents(IModification,IModificationEvents);
         modelRegister.add(new ModificationModel(),Vector.<Class>([IModificationModelBase,IModification]));
         modelRegisterAdapt.registerAdapt(ItemProperties,ItemPropertiesAdapt);
         modelRegisterAdapt.registerEvents(ItemProperties,ItemPropertiesEvents);
         modelRegister.add(new ItemPropertiesModel(),Vector.<Class>([IItemPropertiesModelBase,ItemProperties]));
         modelRegister.add(new UpgradableParamsModel(),Vector.<Class>([IUpgradeableParamsConstructorModelBase,ObjectLoadPostListener,UpgradableItem,ObjectUnloadListener]));
         modelRegisterAdapt.registerAdapt(UpgradableItem,UpgradableItemAdapt);
         modelRegisterAdapt.registerEvents(UpgradableItem,UpgradableItemEvents);
         modelRegister.add(new CountableItemModel(),Vector.<Class>([ICountableItemModelBase,ICountableItem,IObjectLoadListener]));
         modelRegisterAdapt.registerAdapt(ICountableItem,ICountableItemAdapt);
         modelRegisterAdapt.registerEvents(ICountableItem,ICountableItemEvents);
         modelRegister.add(new Item3DModel(),Vector.<Class>([IItem3DModelBase,IObjectLoadListener]));
         modelRegister.add(new TemporaryItemModel(),Vector.<Class>([ITemporaryItemModelBase,ITemporaryItem,IObjectLoadListener]));
         modelRegisterAdapt.registerAdapt(ITemporaryItem,ITemporaryItemAdapt);
         modelRegisterAdapt.registerEvents(ITemporaryItem,ITemporaryItemEvents);
         modelRegister.add(new DiscountModel(),Vector.<Class>([IDiscountModelBase,ICollectDiscount,ObjectLoadPostListener,ObjectUnloadListener,CountDownTimerOnCompleteBefore]));
         modelRegister.add(new DiscountCollectorModel(),Vector.<Class>([IDiscountCollectorModelBase,IDiscount]));
         modelRegisterAdapt.registerAdapt(IDiscount,IDiscountAdapt);
         modelRegisterAdapt.registerEvents(IDiscount,IDiscountEvents);
         modelRegisterAdapt.registerAdapt(ICollectDiscount,ICollectDiscountAdapt);
         modelRegisterAdapt.registerEvents(ICollectDiscount,ICollectDiscountEvents);
         modelRegisterAdapt.registerAdapt(GarageKit,§for const final§);
         modelRegisterAdapt.registerEvents(GarageKit,§6!`§);
         modelRegister.add(new §0"h§(),Vector.<Class>([§;"]§,GarageKit,ICollectDiscount]));
         modelRegister.add(new §=0§(),Vector.<Class>([§var const switch§,§finally switch§]));
         modelRegisterAdapt.registerAdapt(§finally switch§,§+!Z§);
         modelRegisterAdapt.registerEvents(§finally switch§,§import for try§);
         modelRegister.add(new §""G§(),Vector.<Class>([§6w§,§class set var§]));
         modelRegisterAdapt.registerAdapt(§-b§,§try function§);
         modelRegisterAdapt.registerEvents(§-b§,§]v§);
         modelRegister.add(new §3!H§(),Vector.<Class>([§use switch§,§-b§]));
         modelRegisterAdapt.registerAdapt(§class set var§,§6o§);
         modelRegisterAdapt.registerEvents(§class set var§,§catch var do§);
         modelRegister.add(new GarageModel(),Vector.<Class>([IGarageModelBase,ObjectLoadListener,§static var switch§,§super const default§,IResourceLoadingComplete]));
         modelRegisterAdapt.registerAdapt(§super const default§,§if const§);
         modelRegisterAdapt.registerEvents(§super const default§,§8!a§);
         modelRegister.add(new §;!Q§(),Vector.<Class>([§else var set§,ObjectLoadPostListener,ObjectUnloadListener]));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

