package alternativa.tanks.gui
{
   import §8!M§.§finally switch§;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.buttons.§9!$§;
   import alternativa.tanks.gui.buttons.GarageButton;
   import alternativa.tanks.gui.buttons.§override const override§;
   import alternativa.tanks.gui.effects.BlinkEffect;
   import alternativa.tanks.gui.effects.GlowEffect;
   import alternativa.tanks.gui.upgrade.ItemPropertyUpgradeEvent;
   import alternativa.tanks.gui.upgrade.SelectUpgradeWindow;
   import alternativa.tanks.gui.upgrade.UpgradeButton;
   import alternativa.tanks.gui.upgrade.UpgradeColors;
   import alternativa.tanks.model.item.kit.GarageKit;
   import alternativa.tanks.model.item.present.PresentItem;
   import alternativa.tanks.model.item.properties.ItemPropertyValue;
   import alternativa.tanks.model.item.temporary.ITemporaryItem;
   import alternativa.tanks.model.item.upgradable.UpgradableItem;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.dialogs.IDialogsService;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.§do set function§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.types.Long;
   import alternativa.utils.removeDisplayObject;
   import assets.scroller.color.ScrollThumbSkinGreen;
   import assets.scroller.color.ScrollTrackGreen;
   import base.DiscreteSprite;
   import controls.Money;
   import controls.NumStepper;
   import controls.TankWindow;
   import controls.TankWindowHeader;
   import controls.TankWindowInner;
   import controls.base.LabelBase;
   import controls.buttons.h50px.GreyBigButton;
   import controls.timer.CountDownTimer;
   import fl.containers.ScrollPane;
   import fl.controls.ScrollPolicy;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import §override const case§.§class const continue§;
   import platform.client.fp10.core.resource.Resource;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   import projects.tanks.client.garage.models.item.properties.ItemGarageProperty;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.removeChildrenFrom;
   import utils.resource.IResourceLoadingComplete;
   import utils.resource.ResourceLoadingWrapper;
   
   public class ItemInfoPanel extends Sprite implements IResourceLoadingComplete
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var itemService:ItemService;
      
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var moneyService:IMoneyService;
      
      [Inject]
      public static var panelView:IPanelView;
      
      [Inject]
      public static var propertyService:ItemPropertyParamsService;
      
      [Inject]
      public static var dialogService:IDialogsService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var § !9§:ITank3DViewer;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var §+"i§:IDelayMountCategoryService;
      
      public static const INVENTORY_MAX_VALUE:int = 9999;
      
      private static const TOP_PREVIEW_WITH_NAME_PENETRATION_SIZE:int = 15;
      
      private static const BOTTOM_MARGIN:int = 64;
      
      private static const BUTTON_SIZE:Point = new Point(120,50);
      
      private static const ICON_SPACING_H:int = 10;
      
      private static const HORIZONTAL_MARGIN:int = 12;
      
      private static const VERTICAL_MARGIN:int = 9;
      
      private static const MODULE_SPACING:int = 3;
      
      private static const PREVIEW_OFFSET_X:int = 0;
      
      private static const §6"<§:int = 10;
      
      public const margin:int = 11;
      
      public var size:Point;
      
      public var inventoryNumStepper:NumStepper;
      
      public var buyButton:GarageButton;
      
      public var equipButton:§9!$§;
      
      public var upgradeButton:UpgradeButton;
      
      public var §package for class§:GreyBigButton;
      
      private var §+!!§:GreyBigButton;
      
      private var itemNameLabel:LabelBase;
      
      private var itemDescriptionLabel:LabelBase;
      
      private var window:TankWindow;
      
      private var inner:TankWindowInner;
      
      private var §with const dynamic§:Bitmap;
      
      private var § "?§:DiscreteSprite;
      
      private var §>e§:Bitmap;
      
      private var §catch for§:Bitmap;
      
      private var leftPreview:Bitmap;
      
      private var _leftPreviewEnabled:Boolean = true;
      
      private var topPreview:Bitmap;
      
      private var propertiesParams:Vector.<§do set function§>;
      
      private var scrollPane:ScrollPane;
      
      private var scrollContainer:Sprite;
      
      private var propertiesPanel:Sprite;
      
      private var propertiesPanelLeft:Bitmap;
      
      private var propertiesPanelCenter:Bitmap;
      
      private var propertiesPanelRight:Bitmap;
      
      private var area:Shape;
      
      private var areaRect:Rectangle;
      
      private var areaRect2:Rectangle;
      
      private var timeIndicator:LabelBase;
      
      private var modTable:ModTable;
      
      private var §extends set import§:§class const continue§;
      
      private var §]!O§:Sprite;
      
      private var §dynamic for const§:Bitmap;
      
      private var §else set finally§:Bitmap;
      
      private var §in var super§:Bitmap;
      
      private var §^"2§:Bitmap;
      
      private var §@x§:Bitmap;
      
      private var §&!a§:Bitmap;
      
      private var §do for package§:Bitmap;
      
      private var §true var each§:Bitmap;
      
      private var §5"7§:Bitmap;
      
      private var §catch set super§:Bitmap;
      
      private var §50§:Bitmap;
      
      private var §?t§:Bitmap;
      
      private var §`!^§:Bitmap;
      
      private var §@!=§:Shape;
      
      private var §case var use§:Shape;
      
      private var §"I§:Boolean;
      
      private var §null var include§:LabelBase;
      
      private var item:IGameObject;
      
      private var itemCategory:ItemCategoryEnum;
      
      private var itemPrice:int;
      
      private var isCountable:Boolean = false;
      
      private var previewResource:ImageResource;
      
      private var maxRankIndex:int;
      
      private var minRankIndex:int;
      
      private var §while for else§:Long;
      
      private var _topPreviewLoadingId:Long;
      
      private var §set set while§:Long;
      
      private var §8y§:Long;
      
      private var selectWindow:SelectUpgradeWindow;
      
      private var blinkEffect:BlinkEffect;
      
      private var enabledUpgrades:Boolean;
      
      private var §function include§:§;6§;
      
      public function ItemInfoPanel(param1:Boolean, param2:int)
      {
         var _loc3_:TextFormat = null;
         this.propertiesParams = new Vector.<§do set function§>();
         this.blinkEffect = new BlinkEffect();
         super();
         this.enabledUpgrades = param1;
         this.size = new Point(400,300);
         this.window = new TankWindow(this.size.x,this.size.y);
         addChild(this.window);
         this.window.headerLang = localeService.getText(TanksLocale.TEXT_GUI_LANG);
         this.window.header = TankWindowHeader.INFORMATION;
         this.inner = new TankWindowInner(164,106,TankWindowInner.GREEN);
         this.inner.showBlink = true;
         addChild(this.inner);
         this.inner.x = this.margin;
         this.inner.y = this.margin;
         this.area = new Shape();
         this.areaRect = new Rectangle();
         this.areaRect2 = new Rectangle(HORIZONTAL_MARGIN,VERTICAL_MARGIN,0,0);
         this.areaRect.width = param2 - this.margin * 2 - 2;
         this.areaRect2.width = this.areaRect.width - HORIZONTAL_MARGIN * 2;
         this.scrollContainer = new Sprite();
         this.scrollContainer.x = this.margin + 1;
         this.scrollContainer.y = this.margin + 1;
         this.scrollContainer.addChild(this.area);
         this.scrollPane = new ScrollPane();
         addChild(this.scrollPane);
         this.confScroll();
         this.scrollPane.horizontalScrollPolicy = ScrollPolicy.OFF;
         this.scrollPane.verticalScrollPolicy = ScrollPolicy.AUTO;
         this.scrollPane.source = this.scrollContainer;
         this.scrollPane.focusEnabled = false;
         this.scrollPane.x = this.margin + 1;
         this.scrollPane.y = this.margin + 1 + MODULE_SPACING;
         var _loc4_:String = userPropertiesService.userName;
         this.itemNameLabel = new LabelBase();
         this.itemNameLabel.type = TextFieldType.DYNAMIC;
         this.itemNameLabel.text = "Hello, " + _loc4_ + "!";
         this.itemNameLabel.size = 18;
         this.itemNameLabel.color = 381208;
         this.scrollContainer.addChild(this.itemNameLabel);
         this.itemNameLabel.x = HORIZONTAL_MARGIN - 3;
         this.itemNameLabel.y = VERTICAL_MARGIN - 7;
         this.itemDescriptionLabel = new LabelBase();
         var _loc5_:String = localeService.language;
         if(_loc5_ == "cn")
         {
            _loc3_ = this.itemDescriptionLabel.getTextFormat();
            _loc3_.leading = 3;
            this.itemDescriptionLabel.defaultTextFormat = _loc3_;
         }
         this.itemDescriptionLabel.multiline = true;
         this.itemDescriptionLabel.wordWrap = true;
         this.itemDescriptionLabel.color = 381208;
         this.itemDescriptionLabel.text = "Description";
         this.itemDescriptionLabel.mouseWheelEnabled = false;
         this.scrollContainer.addChild(this.itemDescriptionLabel);
         this.itemDescriptionLabel.x = HORIZONTAL_MARGIN - 3;
         this.§ "?§ = new DiscreteSprite();
         this.scrollContainer.addChild(this.§ "?§);
         this.§function include§ = new §;6§(this.areaRect2.width);
         this.§function include§.x = 9;
         this.§with const dynamic§ = new Bitmap();
         this.§>e§ = new Bitmap();
         this.§catch for§ = new Bitmap();
         this.leftPreview = new Bitmap();
         this.topPreview = new Bitmap();
         this.buyButton = new GarageButton();
         this.upgradeButton = new UpgradeButton();
         this.upgradeButton.addEventListener(MouseEvent.CLICK,this.onButtonUpgradeClick);
         this.equipButton = new §9!$§();
         this.equipButton.label = localeService.getText(TanksLocale.TEXT_GARAGE_INFO_PANEL_BUTTON_EQUIP_TEXT);
         this.§+!!§ = new GreyBigButton();
         this.§+!!§.label = localeService.getText(TanksLocale.TEXT_FITTING_BUTTON_TEXT);
         this.§+!!§.visible = false;
         this.§+!!§.addEventListener(MouseEvent.CLICK,this.§7!§);
         this.§package for class§ = new GreyBigButton();
         this.§package for class§.label = localeService.getText(TanksLocale.TEXT_DELETE_PRESENT_BUTTON);
         this.§package for class§.visible = false;
         this.buyButton.visible = false;
         this.upgradeButton.visible = false;
         this.equipButton.visible = false;
         addChild(this.buyButton);
         addChild(this.upgradeButton);
         addChild(this.equipButton);
         addChild(this.§+!!§);
         addChild(this.§package for class§);
         this.inventoryNumStepper = new NumStepper();
         addChild(this.inventoryNumStepper);
         this.inventoryNumStepper.value = 1;
         this.inventoryNumStepper.minValue = 1;
         this.inventoryNumStepper.maxValue = INVENTORY_MAX_VALUE;
         this.inventoryNumStepper.visible = false;
         this.inventoryNumStepper.mouseEnabled = false;
         this.inventoryNumStepper.addEventListener(Event.CHANGE,this.inventoryNumChanged);
         this.propertiesPanel = new Sprite();
         this.propertiesPanelLeft = new Bitmap(ItemInfoPanelBitmaps.propertiesLeft);
         this.propertiesPanel.addChild(this.propertiesPanelLeft);
         this.propertiesPanelCenter = new Bitmap(ItemInfoPanelBitmaps.propertiesCenter);
         this.propertiesPanel.addChild(this.propertiesPanelCenter);
         this.propertiesPanelRight = new Bitmap(ItemInfoPanelBitmaps.propertiesRight);
         this.propertiesPanel.addChild(this.propertiesPanelRight);
         this.propertiesPanelCenter.x = this.propertiesPanelLeft.width;
         this.propertiesPanel.x = HORIZONTAL_MARGIN;
         this.propertiesPanel.y = Math.round(VERTICAL_MARGIN * 2 + this.itemNameLabel.textHeight - 7);
         this.§var var continue§();
         this.timeIndicator = new LabelBase();
         this.timeIndicator.size = 18;
         this.timeIndicator.color = 381208;
         this.modTable = new ModTable(this.areaRect2.width);
         this.modTable.x = HORIZONTAL_MARGIN;
         this.§null var include§ = new LabelBase();
         this.§null var include§.color = 16777215;
         this.§null var include§.align = TextFormatAlign.CENTER;
         this.§null var include§.size = 23;
         this.§null var include§.bold = true;
         if(_loc5_ == "cn")
         {
            this.§null var include§.size = 20;
         }
      }
      
      private static function getRequiredRank(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = param2;
         if(param1 < param2)
         {
            _loc4_ = -param2;
         }
         else if(param1 > param3)
         {
            _loc4_ = -param3;
         }
         return _loc4_;
      }
      
      private function §var var continue§() : void
      {
         this.§]!O§ = new Sprite();
         this.§dynamic for const§ = new Bitmap(ItemInfoPanelBitmaps.§8![§);
         this.§]!O§.addChild(this.§dynamic for const§);
         this.§else set finally§ = new Bitmap(ItemInfoPanelBitmaps.§function var if§);
         this.§]!O§.addChild(this.§else set finally§);
         this.§in var super§ = new Bitmap(ItemInfoPanelBitmaps.§3W§);
         this.§]!O§.addChild(this.§in var super§);
         this.§else set finally§.x = this.§dynamic for const§.width;
         this.§^"2§ = new Bitmap(ItemInfoPanelBitmaps.§@!f§);
         this.§]!O§.addChild(this.§^"2§);
         this.§@x§ = new Bitmap(ItemInfoPanelBitmaps.§else static§);
         this.§]!O§.addChild(this.§@x§);
         this.§?t§ = new Bitmap(ItemInfoPanelBitmaps.§[!§);
         this.§]!O§.addChild(this.§?t§);
         this.§`!^§ = new Bitmap(ItemInfoPanelBitmaps.§>T§);
         this.§]!O§.addChild(this.§`!^§);
         this.§catch set super§ = new Bitmap(ItemInfoPanelBitmaps.§function var if§);
         this.§]!O§.addChild(this.§catch set super§);
         this.§&!a§ = new Bitmap(ItemInfoPanelBitmaps.§,!H§);
         this.§]!O§.addChild(this.§&!a§);
         this.§do for package§ = new Bitmap(ItemInfoPanelBitmaps.§function do§);
         this.§]!O§.addChild(this.§do for package§);
         this.§50§ = new Bitmap(ItemInfoPanelBitmaps.§`!%§);
         this.§]!O§.addChild(this.§50§);
         this.§true var each§ = new Bitmap(ItemInfoPanelBitmaps.§@!f§);
         this.§]!O§.addChild(this.§true var each§);
         this.§5"7§ = new Bitmap(ItemInfoPanelBitmaps.§else static§);
         this.§]!O§.addChild(this.§5"7§);
         this.§@!=§ = new Shape();
         this.§]!O§.addChild(this.§@!=§);
         this.§case var use§ = new Shape();
         this.§]!O§.addChild(this.§case var use§);
         this.§]!O§.x = HORIZONTAL_MARGIN;
         this.§extends set import§ = new §class const continue§(this.areaRect2.width);
         this.§extends set import§.x = HORIZONTAL_MARGIN;
      }
      
      public function destroy() : void
      {
         this.window = null;
         this.inner = null;
         this.leftPreview = null;
         this.topPreview = null;
         this.§>e§ = null;
         this.§ "?§ = null;
         this.§with const dynamic§ = null;
         this.§catch for§ = null;
         this.item = null;
         this.itemNameLabel = null;
         this.itemDescriptionLabel = null;
         this.scrollPane = null;
         this.scrollContainer = null;
         this.propertiesPanel = null;
         this.propertiesPanelLeft = null;
         this.propertiesPanelCenter = null;
         this.propertiesPanelRight = null;
         this.§]!O§ = null;
         this.§dynamic for const§ = null;
         this.§else set finally§ = null;
         this.§in var super§ = null;
         this.§^"2§ = null;
         this.area = null;
         this.areaRect = null;
         this.areaRect2 = null;
         this.buyButton = null;
         this.§+!!§.removeEventListener(MouseEvent.CLICK,this.§7!§);
         this.§+!!§ = null;
         if(this.equipButton != null)
         {
            this.equipButton.removeEventListener(§override const override§.§[z§,this.§continue set finally§);
            this.equipButton.hideTime();
            this.equipButton = null;
         }
         if(this.upgradeButton != null)
         {
            this.upgradeButton.removeEventListener(MouseEvent.CLICK,this.onButtonUpgradeClick);
         }
         this.upgradeButton = null;
         this.§while for else§ = null;
         this.blinkEffect.stop();
         if(this.selectWindow)
         {
            dialogService.removeDialog(this.selectWindow);
            this.selectWindow = null;
         }
         this.§function include§.destroy();
         this.§function include§ = null;
      }
      
      private function §7!§(param1:MouseEvent) : void
      {
         §finally switch§(this.item.adapt(§finally switch§)).fit();
         this.§+!!§.enabled = false;
      }
      
      private function confScroll() : void
      {
         this.scrollPane.setStyle("downArrowUpSkin",ScrollArrowDownGreen);
         this.scrollPane.setStyle("downArrowDownSkin",ScrollArrowDownGreen);
         this.scrollPane.setStyle("downArrowOverSkin",ScrollArrowDownGreen);
         this.scrollPane.setStyle("downArrowDisabledSkin",ScrollArrowDownGreen);
         this.scrollPane.setStyle("upArrowUpSkin",ScrollArrowUpGreen);
         this.scrollPane.setStyle("upArrowDownSkin",ScrollArrowUpGreen);
         this.scrollPane.setStyle("upArrowOverSkin",ScrollArrowUpGreen);
         this.scrollPane.setStyle("upArrowDisabledSkin",ScrollArrowUpGreen);
         this.scrollPane.setStyle("trackUpSkin",ScrollTrackGreen);
         this.scrollPane.setStyle("trackDownSkin",ScrollTrackGreen);
         this.scrollPane.setStyle("trackOverSkin",ScrollTrackGreen);
         this.scrollPane.setStyle("trackDisabledSkin",ScrollTrackGreen);
         this.scrollPane.setStyle("thumbUpSkin",ScrollThumbSkinGreen);
         this.scrollPane.setStyle("thumbDownSkin",ScrollThumbSkinGreen);
         this.scrollPane.setStyle("thumbOverSkin",ScrollThumbSkinGreen);
         this.scrollPane.setStyle("thumbDisabledSkin",ScrollThumbSkinGreen);
      }
      
      private function hideIcons() : void
      {
         var _loc1_:§do set function§ = null;
         for each(_loc1_ in this.propertiesParams)
         {
            if(this.propertiesPanel.contains(_loc1_.icon))
            {
               this.propertiesPanel.removeChild(_loc1_.icon);
            }
         }
      }
      
      private function showIcons() : void
      {
         var _loc1_:§do set function§ = null;
         for each(_loc1_ in this.propertiesParams)
         {
            if(!this.propertiesPanel.contains(_loc1_.icon))
            {
               this.propertiesPanel.addChild(_loc1_.icon);
            }
         }
      }
      
      public function onLoadingComplete(param1:Resource) : void
      {
         if(this.§while for else§ == param1.id)
         {
            if(!this.§"I§ && !itemService.§implements var throw§(this.item))
            {
               this.§with const dynamic§.bitmapData = ImageResource(param1).data;
               this.resize(this.size.x,this.size.y);
            }
         }
         if(this._topPreviewLoadingId == param1.id)
         {
            this.topPreview.bitmapData = ImageResource(param1).data;
            this.showBitmap(this.topPreview);
            this.resize(this.size.x,this.size.y);
         }
         if(this.§set set while§ == param1.id)
         {
            if(this.§"I§)
            {
               this.§>e§.bitmapData = ImageResource(param1).data;
               this.showBitmap(this.§>e§);
               this.resize(this.size.x,this.size.y);
            }
         }
         if(this.§8y§ == param1.id)
         {
            if(itemService.§implements var throw§(this.item))
            {
               this.§catch for§.bitmapData = ImageResource(param1).data;
               this.showBitmap(this.§catch for§);
               this.resize(this.size.x,this.size.y);
            }
         }
      }
      
      public function showItemInfo(param1:IGameObject, param2:Boolean) : void
      {
         var _loc3_:ImageResource = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:ItemPropertyValue = null;
         var _loc7_:§do set function§ = null;
         var _loc8_:int = 0;
         var _loc9_:Vector.<IGameObject> = null;
         var _loc10_:Vector.<String> = null;
         var _loc11_:int = 0;
         var _loc12_:IGameObject = null;
         var _loc13_:ModInfoRow = null;
         var _loc14_:int = 0;
         var _loc15_:Vector.<UpgradableItemPropertyValue> = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:int = 0;
         var _loc21_:IGameObject = null;
         var _loc22_:int = 0;
         var _loc23_:PresentItem = null;
         var _loc24_:ImageResource = null;
         var _loc25_:ImageResource = null;
         this.§>e§.bitmapData = null;
         this.§catch for§.bitmapData = null;
         this.§with const dynamic§.bitmapData = null;
         if(!param2 && !itemService.§implements var throw§(param1))
         {
            this.updateUpgradeButton(param1);
         }
         removeChildrenFrom(this.§ "?§);
         this.§7!R§(param2,this.item,param1);
         if(this.item != param1)
         {
            § !9§.§2">§();
            this.item = param1;
         }
         if(param2 || !itemService.§else for case§(param1))
         {
            this.buyButton.setText(localeService.getText(TanksLocale.TEXT_GARAGE_INFO_PANEL_BUTTON_BUY_TEXT));
         }
         else
         {
            this.buyButton.setText(localeService.getText(TanksLocale.TEXT_GARAGE_INFO_PANEL_BUTTON_BUY_TEXT) + " M" + (itemService.getModificationIndex(param1) + 1));
         }
         this.itemNameLabel.text = itemService.getName(param1);
         this.itemDescriptionLabel.visible = !itemService.§implements var throw§(param1);
         this.itemDescriptionLabel.htmlText = itemService.getDescription(param1);
         this.previewResource = itemService.getPreviewResource(param1);
         if(itemService.§"I§(param1))
         {
            _loc3_ = GarageKit(param1.adapt(GarageKit)).getImage();
            this.§set set while§ = _loc3_.id;
            if(_loc3_.isLazy && !_loc3_.isLoaded)
            {
               _loc3_.loadLazyResource(new ResourceLoadingWrapper(this));
            }
            this.§>e§.bitmapData = _loc3_.data;
            if(this.§>e§.bitmapData != null)
            {
               this.showBitmap(this.§>e§);
            }
            else
            {
               removeDisplayObject(this.§>e§);
            }
         }
         else if(itemService.§implements var throw§(param1))
         {
            this.leftPreviewEnabled = false;
            _loc24_ = PresentItem(param1.adapt(PresentItem)).getImage();
            this.§8y§ = _loc24_.id;
            if(_loc24_.isLazy && !_loc24_.isLoaded)
            {
               _loc24_.loadLazyResource(new ResourceLoadingWrapper(this));
            }
            this.§catch for§.bitmapData = _loc24_.data;
            if(this.§catch for§.bitmapData != null)
            {
               this.showBitmap(this.§catch for§);
            }
            else
            {
               removeDisplayObject(this.§catch for§);
            }
         }
         else
         {
            _loc25_ = itemService.getPreviewResource(param1);
            this.§while for else§ = _loc25_.id;
            if(_loc25_.isLazy && !_loc25_.isLoaded)
            {
               _loc25_.loadLazyResource(new ResourceLoadingWrapper(this));
            }
            this.§with const dynamic§.bitmapData = _loc25_.data;
         }
         this.maxRankIndex = itemService.§each var true§(param1);
         this.minRankIndex = itemService.§extends include§(param1);
         this.hideIcons();
         this.itemCategory = itemService.getCategory(param1);
         this.itemPrice = itemService.getPrice(param1);
         this.isCountable = itemService.isCountable(param1);
         var _loc26_:Boolean = this.itemCategory != ItemCategoryEnum.ARMOR && this.itemCategory != ItemCategoryEnum.WEAPON;
         var _loc27_:Vector.<ItemPropertyValue> = itemService.getProperties(param1);
         if(_loc27_ != null && _loc27_.length > 0)
         {
            this.propertiesParams.length = _loc27_.length;
            _loc4_ = false;
            _loc5_ = 0;
            while(_loc5_ < _loc27_.length)
            {
               _loc6_ = _loc27_[_loc5_];
               _loc7_ = propertyService.getParams(_loc6_.getProperty());
               this.propertiesParams[_loc5_] = _loc7_;
               if(_loc6_.isUpgradable() && _loc6_.getUpgradableValue().getMaxLevel() > 0)
               {
                  _loc4_ = true;
               }
               if(_loc26_)
               {
                  _loc8_ = UpgradeColors.getColorForValue(_loc6_);
                  _loc7_.icon.setValue(_loc6_.getValue(),_loc8_);
               }
               else
               {
                  _loc7_.icon.removeValue();
               }
               _loc5_++;
            }
            this.upgradeButton.visible = this.enabledUpgrades && !param2 && _loc4_;
            this.showIcons();
            if(!this.scrollContainer.contains(this.propertiesPanel))
            {
               this.scrollContainer.addChild(this.propertiesPanel);
            }
         }
         else
         {
            this.upgradeButton.visible = false;
            this.propertiesParams.length = 0;
            if(this.scrollContainer.contains(this.propertiesPanel))
            {
               this.scrollContainer.removeChild(this.propertiesPanel);
            }
         }
         if(itemService.§implements var throw§(param1))
         {
            _loc23_ = PresentItem(param1.adapt(PresentItem));
            this.§function include§.update(_loc23_.getPresenterId(),_loc23_.getDate(),_loc23_.getText());
            this.§ "?§.addChild(this.§function include§);
         }
         else
         {
            this.§function include§.§+;§();
         }
         if(itemService.§"I§(param1))
         {
            this.§"I§ = true;
            this.§#!p§(param1);
         }
         else
         {
            this.§"I§ = false;
            this.§9b§();
            if(this.scrollContainer.contains(this.§null var include§))
            {
               this.scrollContainer.removeChild(this.§null var include§);
            }
         }
         if(this.itemCategory == ItemCategoryEnum.ARMOR || this.itemCategory == ItemCategoryEnum.WEAPON)
         {
            this.propertiesPanelLeft.bitmapData = ItemInfoPanelBitmaps.upgradeTableLeft;
            this.propertiesPanelCenter.bitmapData = ItemInfoPanelBitmaps.upgradeTableCenter;
            this.propertiesPanelRight.bitmapData = ItemInfoPanelBitmaps.upgradeTableRight;
            this.showModTable();
            this.modTable.select(itemService.getModificationIndex(param1));
            _loc9_ = itemService.§;h§(param1);
            _loc10_ = new Vector.<String>(this.propertiesParams.length);
            if(_loc9_.length == 1)
            {
               _loc11_ = 0;
               while(_loc11_ < this.modTable.rows.length)
               {
                  _loc13_ = ModInfoRow(this.modTable.rows[_loc11_]);
                  if(_loc11_ > 0)
                  {
                     _loc13_.visible = false;
                  }
                  _loc11_++;
               }
            }
            else
            {
               _loc11_ = 0;
               while(_loc11_ < this.modTable.rows.length)
               {
                  _loc13_ = ModInfoRow(this.modTable.rows[_loc11_]);
                  _loc13_.visible = true;
                  _loc11_++;
               }
            }
            _loc11_ = 0;
            while(_loc11_ < _loc9_.length)
            {
               _loc12_ = _loc9_[_loc11_];
               _loc13_ = ModInfoRow(this.modTable.rows[_loc11_]);
               _loc13_.upgradeIndicator.visible = _loc9_.length != 1;
               _loc13_.costLabel.text = Money.numToString(itemService.getPriceWithoutDiscount(_loc12_),false);
               if(_loc14_ < _loc13_.costLabel.width)
               {
                  _loc14_ = _loc13_.costLabel.width;
               }
               this.modTable.maxCostWidth = _loc14_;
               _loc13_.rankIcon.setRank(itemService.§extends include§(_loc12_));
               _loc15_ = itemService.getUpgradableProperties(_loc12_);
               _loc5_ = 0;
               while(_loc5_ < _loc15_.length)
               {
                  _loc6_ = UpgradableItemPropertyValue(_loc15_[_loc5_]);
                  _loc7_ = propertyService.getParams(_loc6_.getProperty());
                  if(_loc7_ != null)
                  {
                     _loc10_[_loc5_] = _loc6_.getValue();
                  }
                  _loc5_++;
               }
               _loc13_.setLabelsNum(_loc15_.length);
               _loc13_.setLabelsText(_loc15_);
               _loc11_++;
            }
            this.modTable.correctNonintegralValues();
         }
         else
         {
            this.propertiesPanelLeft.bitmapData = ItemInfoPanelBitmaps.propertiesLeft;
            this.propertiesPanelCenter.bitmapData = ItemInfoPanelBitmaps.propertiesCenter;
            this.propertiesPanelRight.bitmapData = ItemInfoPanelBitmaps.propertiesRight;
            this.hideModTable();
         }
         if(itemService.§implements var throw§(param1))
         {
            this.§package for class§.visible = true;
            this.§package for class§.enabled = true;
            this.buyButton.visible = false;
            this.equipButton.visible = false;
         }
         else
         {
            this.§package for class§.visible = false;
            if(param2)
            {
               this.buyButton.visible = true;
               this.equipButton.visible = false;
            }
            else if(this.itemCategory == ItemCategoryEnum.INVENTORY)
            {
               this.buyButton.visible = true;
               this.equipButton.visible = false;
            }
            else
            {
               this.buyButton.visible = false;
               if(this.itemCategory == ItemCategoryEnum.PLUGIN || this.itemCategory == ItemCategoryEnum.EMBLEM)
               {
                  this.equipButton.visible = false;
               }
               else
               {
                  this.equipButton.visible = true;
                  if(this.itemCategory == ItemCategoryEnum.ARMOR || this.itemCategory == ItemCategoryEnum.WEAPON)
                  {
                     this.buyButton.visible = itemService.getModificationIndex(param1) < 3 && _loc9_.length > 1;
                  }
               }
            }
         }
         if(this.buyButton.visible)
         {
            _loc16_ = getRequiredRank(userPropertiesService.rank,itemService.§extends include§(param1),itemService.§each var true§(param1));
            _loc17_ = 1;
            if(this.isCountable)
            {
               this.inventoryNumStepper.visible = true;
               _loc20_ = Math.min(INVENTORY_MAX_VALUE,Math.floor(moneyService.crystal / this.itemPrice));
               if(_loc16_ > 0)
               {
                  if(_loc20_ > 0)
                  {
                     this.inventoryNumStepper.enabled = true;
                     this.inventoryNumStepper.alpha = 1;
                  }
                  else
                  {
                     this.inventoryNumStepper.enabled = false;
                     this.inventoryNumStepper.alpha = 0.7;
                  }
               }
               else
               {
                  this.inventoryNumStepper.enabled = false;
                  this.inventoryNumStepper.alpha = 0.7;
                  this.inventoryNumStepper.value = 1;
               }
               _loc18_ = itemService.getPrice(param1);
               _loc19_ = itemService.getDiscount(param1);
               _loc17_ = this.inventoryNumStepper.value;
            }
            else if(!param2 && itemService.§else for case§(param1))
            {
               this.inventoryNumStepper.visible = false;
               this.inventoryNumStepper.enabled = false;
               _loc21_ = itemService.§"s§(param1);
               _loc18_ = itemService.getPrice(_loc21_);
               _loc19_ = itemService.getDiscount(_loc21_);
               _loc22_ = itemService.§extends include§(_loc21_);
               _loc16_ = userPropertiesService.rank >= _loc22_ ? int(_loc22_) : int(-_loc22_);
            }
            else
            {
               _loc18_ = itemService.getPrice(param1);
               _loc19_ = itemService.getDiscount(param1);
               this.inventoryNumStepper.visible = false;
               this.inventoryNumStepper.enabled = false;
            }
            this.buyButton.setInfo(_loc18_,_loc17_,_loc16_,itemService.§in extends§(param1));
         }
         else
         {
            this.inventoryNumStepper.visible = false;
         }
         this.updateBlinkEffect();
         this.setButtonsPosition();
         this.updateEquipButton();
         if(this.itemCategory == ItemCategoryEnum.PLUGIN && !param2)
         {
            if(!this.scrollContainer.contains(this.timeIndicator))
            {
               this.scrollContainer.addChild(this.timeIndicator);
            }
            this.setTimeRemaining(ITemporaryItem(param1.adapt(ITemporaryItem)).getStopDate());
         }
         else if(this.scrollContainer.contains(this.timeIndicator))
         {
            this.scrollContainer.removeChild(this.timeIndicator);
         }
      }
      
      private function §#!p§(param1:IGameObject) : void
      {
         if(!this.scrollContainer.contains(this.§]!O§))
         {
            this.scrollContainer.addChild(this.§]!O§);
         }
         if(!this.scrollContainer.contains(this.§extends set import§))
         {
            this.scrollContainer.addChild(this.§extends set import§);
         }
         this.§extends set import§.show(param1);
      }
      
      private function §9b§() : void
      {
         if(this.scrollContainer.contains(this.§]!O§))
         {
            this.scrollContainer.removeChild(this.§]!O§);
         }
         if(this.scrollContainer.contains(this.§extends set import§))
         {
            this.scrollContainer.removeChild(this.§extends set import§);
         }
      }
      
      public function updateEquipButton() : void
      {
         this.§override var package§();
         if(Boolean(lobbyLayoutService.inBattle()) && !battleInfoService.reArmorEnabled)
         {
            this.equipButton.enabled = false;
            return;
         }
         if(this.§finally implements§())
         {
            this.§5"6§();
         }
         else
         {
            this.equipButton.enabled = false;
            this.equipButton.hideTime();
         }
      }
      
      private function §finally implements§() : Boolean
      {
         return itemService.§break for do§(this.item) && itemService.§false const case§(this.item) && !itemService.§ I§(this.item);
      }
      
      private function §5"6§() : void
      {
         var _loc1_:CountDownTimer = §+"i§.§function return§(this.item);
         if(Boolean(lobbyLayoutService.inBattle()) && _loc1_.getRemainingSeconds() > 0 && !itemService.§ I§(this.item))
         {
            this.equipButton.startTimer(_loc1_);
            this.equipButton.addEventListener(§override const override§.§[z§,this.§continue set finally§);
         }
         else
         {
            this.equipButton.hideTime();
            this.equipButton.enabled = true;
         }
      }
      
      private function §override var package§() : void
      {
         if(this.§finally implements§())
         {
            this.equipButton.label = localeService.getText(TanksLocale.TEXT_GARAGE_INFO_PANEL_BUTTON_EQUIP_TEXT);
         }
         else
         {
            this.equipButton.label = localeService.getText(TanksLocale.TEXT_GARAGE_EQUIPPED_TEXT);
         }
      }
      
      private function §continue set finally§(param1:§override const override§) : void
      {
         this.equipButton.enabled = true;
         this.equipButton.removeEventListener(§override const override§.§[z§,this.§continue set finally§);
      }
      
      private function §7!R§(param1:Boolean, param2:IGameObject, param3:IGameObject) : void
      {
         if(param1 && itemService.getCategory(param3) == ItemCategoryEnum.COLOR && !battleInfoService.isInBattle())
         {
            this.§+!!§.visible = true;
            if(param2 != param3)
            {
               this.§+!!§.enabled = true;
            }
         }
         else
         {
            this.§+!!§.visible = false;
         }
      }
      
      private function onButtonUpgradeClick(param1:MouseEvent) : void
      {
         var _loc2_:UpgradableItemPropertyValue = null;
         var _loc3_:UpgradableItem = UpgradableItem(this.item.adapt(UpgradableItem));
         var _loc4_:Vector.<UpgradableItemPropertyValue> = itemService.getUpgradableProperties(this.item);
         if(_loc3_.isUpgrading())
         {
            _loc2_ = _loc3_.getUpgradingValue();
            if(moneyService.§",§(_loc2_.getSpeedUpCost()))
            {
               dispatchEvent(new ItemPropertyUpgradeEvent(ItemPropertyUpgradeEvent.SPEED_UP,_loc2_));
            }
         }
         else
         {
            this.showSelectUpgradeWindow(_loc4_);
         }
      }
      
      private function showSelectUpgradeWindow(param1:Vector.<UpgradableItemPropertyValue>) : void
      {
         if(itemService.§else for case§(this.item))
         {
            this.selectWindow = new SelectUpgradeWindow(param1,itemService.getModificationIndex(this.item),itemService.hasNextModification(this.item));
         }
         else
         {
            this.selectWindow = new SelectUpgradeWindow(param1);
         }
         this.selectWindow.addEventListener(ItemPropertyUpgradeEvent.SELECT_WINDOW_CLOSED,this.onSelectWindowClosed);
         this.selectWindow.addEventListener(ItemPropertyUpgradeEvent.SPEED_UP,this.onSpeedUp);
         this.selectWindow.addEventListener(ItemPropertyUpgradeEvent.UPGRADE_STARTED,this.onUpgradeStarted);
         this.selectWindow.addEventListener(ItemPropertyUpgradeEvent.FLUSH_UPGRADES,this.onFlushUpgrades);
         dialogService.addDialog(this.selectWindow);
      }
      
      private function onSelectWindowClosed(param1:Event) : void
      {
         this.selectWindow.removeEventListener(ItemPropertyUpgradeEvent.SELECT_WINDOW_CLOSED,this.onSelectWindowClosed);
         this.selectWindow.removeEventListener(ItemPropertyUpgradeEvent.SPEED_UP,this.onSpeedUp);
         this.selectWindow.removeEventListener(ItemPropertyUpgradeEvent.UPGRADE_STARTED,this.onUpgradeStarted);
         this.selectWindow.removeEventListener(ItemPropertyUpgradeEvent.FLUSH_UPGRADES,this.onFlushUpgrades);
         dialogService.removeDialog(this.selectWindow);
         this.selectWindow = null;
      }
      
      private function updateUpgradeButton(param1:IGameObject) : void
      {
         var _loc2_:UpgradableItem = null;
         var _loc3_:UpgradableItemPropertyValue = null;
         if(param1.hasModel(UpgradableItem))
         {
            _loc2_ = UpgradableItem(param1.adapt(UpgradableItem));
            if(_loc2_.isUpgrading())
            {
               _loc3_ = _loc2_.getUpgradingValue();
               this.upgradeButton.setUpgradingButton(_loc2_.getCountDownTimer(),_loc3_);
            }
            else if(itemService.isFullUpgraded(param1))
            {
               this.upgradeButton.setUpgradedButton();
            }
            else
            {
               this.upgradeButton.setUpgradeButton();
            }
         }
      }
      
      private function onFlushUpgrades(param1:ItemPropertyUpgradeEvent) : void
      {
         dispatchEvent(new ItemPropertyUpgradeEvent(param1.type));
      }
      
      private function onSpeedUp(param1:ItemPropertyUpgradeEvent) : void
      {
         dispatchEvent(new ItemPropertyUpgradeEvent(param1.type,param1.getPropertyValue()));
      }
      
      private function onUpgradeStarted(param1:ItemPropertyUpgradeEvent) : void
      {
         this.upgradeButton.setUpgradingButton(param1.getTimer(),param1.getPropertyValue());
         dispatchEvent(new ItemPropertyUpgradeEvent(param1.type,param1.getPropertyValue(),param1.getTimer()));
         this.startBlinkEffect(param1.getPropertyValue().getProperty());
      }
      
      private function setButtonsPosition() : void
      {
         var _loc1_:int = this.size.y - this.margin - BUTTON_SIZE.y + 1;
         if(this.buyButton.visible)
         {
            this.buyButton.y = _loc1_;
            if(this.isCountable)
            {
               this.inventoryNumStepper.x = -7;
               this.inventoryNumStepper.y = this.buyButton.y + Math.round((BUTTON_SIZE.y - this.inventoryNumStepper.height) * 0.5);
               this.buyButton.x = this.inventoryNumStepper.x + this.inventoryNumStepper.width + 10;
            }
            else
            {
               this.buyButton.x = this.margin;
            }
         }
         if(this.equipButton.visible)
         {
            this.equipButton.y = _loc1_;
            this.equipButton.x = this.size.x - this.margin - BUTTON_SIZE.x;
         }
         if(this.§+!!§.visible)
         {
            this.§+!!§.y = _loc1_;
            this.§+!!§.x = this.size.x - this.margin - BUTTON_SIZE.x;
         }
         this.upgradeButton.y = _loc1_;
         this.upgradeButton.x = this.margin + BUTTON_SIZE.x + 15;
         this.§package for class§.x = this.margin;
         this.§package for class§.y = _loc1_;
      }
      
      public function resize(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:ItemPropertyIcon = null;
         var _loc10_:ModInfoRow = null;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:BitmapData = null;
         this.scrollPane.update();
         this.size.x = param1;
         this.size.y = param2;
         this.window.width = param1;
         this.window.height = param2;
         this.inner.width = param1 - this.margin * 2;
         this.inner.height = param2 - this.margin - BOTTOM_MARGIN;
         this.areaRect.width = param1 - this.margin * 2 - 2;
         this.areaRect2.width = this.areaRect.width - HORIZONTAL_MARGIN * 2;
         this.itemDescriptionLabel.x = HORIZONTAL_MARGIN - 3;
         this.itemDescriptionLabel.width = this.areaRect2.width;
         var _loc13_:int = int(this.propertiesParams.length);
         if(_loc13_ > 0)
         {
            _loc3_ = this.propertiesPanel.y + this.propertiesPanel.height + VERTICAL_MARGIN;
            this.propertiesPanelRight.x = this.areaRect2.width - this.propertiesPanelRight.width;
            this.propertiesPanelCenter.width = this.propertiesPanelRight.x - this.propertiesPanelCenter.x;
            _loc4_ = 6;
            _loc6_ = _loc5_ = ItemInfoPanelBitmaps.armor.width * _loc13_ + ICON_SPACING_H * (_loc13_ - 1);
            if(this.scrollContainer.contains(this.modTable))
            {
               _loc6_ += this.modTable.constWidth;
            }
            _loc7_ = Math.round((this.propertiesPanel.width - _loc6_) * 0.5);
            if(this.itemCategory == ItemCategoryEnum.COLOR || this.itemCategory == ItemCategoryEnum.INVENTORY)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc13_)
               {
                  _loc9_ = this.propertiesParams[_loc8_].icon;
                  _loc9_.x = _loc7_ + _loc8_ * (ItemInfoPanelBitmaps.armor.width + ICON_SPACING_H);
                  _loc9_.y = _loc4_;
                  _loc8_++;
               }
            }
            else
            {
               for each(_loc10_ in this.modTable.rows)
               {
                  _loc10_.updatePositions();
               }
               _loc11_ = _loc10_.getPositions();
               _loc8_ = 0;
               while(_loc8_ < _loc11_.length)
               {
                  _loc9_ = this.propertiesParams[_loc8_].icon;
                  _loc9_.x = _loc11_[_loc8_] - _loc9_.width / 2;
                  _loc9_.y = _loc4_;
                  _loc8_++;
               }
               this.modTable.y = this.propertiesPanel.y + _loc9_.height + 2;
            }
            this.itemDescriptionLabel.y = this.propertiesPanel.y + this.propertiesPanel.height + VERTICAL_MARGIN - 4;
         }
         else
         {
            this.itemDescriptionLabel.y = this.areaRect2.y + 24 - 7;
         }
         if(this.§>e§.bitmapData != null)
         {
            this.§>e§.y = this.itemNameLabel.y + this.itemNameLabel.height + VERTICAL_MARGIN - TOP_PREVIEW_WITH_NAME_PENETRATION_SIZE;
            this.§>e§.x = this.scrollContainer.width - this.§>e§.width >> 1;
            this.itemDescriptionLabel.y += this.§>e§.bitmapData.height + VERTICAL_MARGIN - TOP_PREVIEW_WITH_NAME_PENETRATION_SIZE;
         }
         if(this.§catch for§.bitmapData != null)
         {
            this.§catch for§.y = this.itemNameLabel.y + this.itemNameLabel.height + VERTICAL_MARGIN - TOP_PREVIEW_WITH_NAME_PENETRATION_SIZE;
            this.§catch for§.x = this.scrollContainer.width - this.§catch for§.width >> 1;
            this.itemDescriptionLabel.y += this.§catch for§.bitmapData.height + VERTICAL_MARGIN - TOP_PREVIEW_WITH_NAME_PENETRATION_SIZE;
         }
         _loc3_ += VERTICAL_MARGIN + this.itemDescriptionLabel.textHeight - 4;
         var _loc14_:int = _loc3_;
         var _loc15_:* = this.§with const dynamic§.bitmapData != null;
         if(_loc15_)
         {
            this.§with const dynamic§.x = PREVIEW_OFFSET_X;
            if(_loc13_ > 0)
            {
               this.§with const dynamic§.y = this.propertiesPanel.y + this.propertiesPanel.height + VERTICAL_MARGIN;
            }
            else
            {
               this.§with const dynamic§.y = this.areaRect2.y + 24;
            }
            this.itemDescriptionLabel.x = this.§with const dynamic§.x + this.§with const dynamic§.width + PREVIEW_OFFSET_X - 3;
            this.itemDescriptionLabel.width = this.areaRect2.width - this.itemDescriptionLabel.x - 3;
            _loc3_ = Math.max(this.itemDescriptionLabel.y + 3 + this.itemDescriptionLabel.textHeight + VERTICAL_MARGIN,this.§with const dynamic§.y + this.§with const dynamic§.height + VERTICAL_MARGIN);
         }
         else
         {
            _loc3_ = this.itemDescriptionLabel.y + 3 + this.itemDescriptionLabel.textHeight + VERTICAL_MARGIN;
         }
         var _loc16_:int = Math.max(_loc3_,param2 - this.margin - BOTTOM_MARGIN - 2 - MODULE_SPACING * 2);
         this.areaRect.height = _loc16_;
         this.areaRect2.height = this.area.height - VERTICAL_MARGIN * 2;
         if(_loc16_ > param2 - this.margin - BOTTOM_MARGIN - 2 - MODULE_SPACING * 2)
         {
            _loc15_ = false;
            this.itemDescriptionLabel.x = HORIZONTAL_MARGIN - 3;
            this.itemDescriptionLabel.width = this.areaRect2.width;
            _loc3_ = _loc14_;
            _loc16_ = Math.max(_loc3_,param2 - this.margin - BOTTOM_MARGIN - 2 - MODULE_SPACING * 2);
            this.areaRect.height = _loc16_;
            this.areaRect2.height = this.area.height - VERTICAL_MARGIN * 2;
         }
         if(this.§"I§)
         {
            this.§ !#§(this.§>e§);
            this.§]!O§.y = this.§>e§.bitmapData != null && this.scrollContainer.contains(this.§>e§) ? Number(int(this.§>e§.height + this.itemNameLabel.height + §6"<§ * 2)) : Number(int(this.itemNameLabel.height) + §6"<§);
            this.§extends set import§.y = this.§]!O§.y;
            this.itemDescriptionLabel.y = this.§]!O§.y + this.§extends set import§.§final const native§() + 10;
            this.§in var super§.x = this.areaRect2.width - this.§in var super§.width;
            this.§else set finally§.width = this.§in var super§.x - this.§else set finally§.x;
            this.§^"2§.y = this.§dynamic for const§.height;
            this.§^"2§.height = this.§extends set import§.§`>§();
            this.§@x§.y = this.§in var super§.height;
            this.§@x§.height = this.§^"2§.height;
            this.§@x§.x = this.areaRect2.width - this.§@x§.width;
            this.§?t§.y = this.§^"2§.height + this.§dynamic for const§.height;
            this.§`!^§.y = this.§?t§.y;
            this.§`!^§.x = this.§@x§.x;
            this.§catch set super§.x = this.§?t§.width;
            this.§catch set super§.y = this.§`!^§.y;
            this.§catch set super§.width = this.§`!^§.x - this.§catch set super§.x;
            this.§true var each§.y = this.§catch set super§.y + this.§catch set super§.height;
            this.§true var each§.height = this.§extends set import§.§"!l§();
            this.§5"7§.y = this.§true var each§.y;
            this.§5"7§.height = this.§true var each§.height;
            this.§5"7§.x = this.§@x§.x;
            this.§&!a§.y = this.§true var each§.y + this.§true var each§.height;
            this.§do for package§.y = this.§&!a§.y;
            this.§do for package§.x = this.§`!^§.x;
            this.§50§.y = this.§&!a§.y + this.§&!a§.height - this.§50§.height;
            this.§50§.x = this.§&!a§.width;
            this.§50§.width = this.§else set finally§.width;
            _loc12_ = ItemInfoPanelBitmaps.§!"W§;
            this.§@!=§.graphics.clear();
            this.§@!=§.graphics.beginBitmapFill(_loc12_);
            this.§@!=§.graphics.drawRect(this.§dynamic for const§.width,this.§dynamic for const§.height,this.§else set finally§.width,this.§^"2§.height);
            this.§case var use§.graphics.clear();
            this.§case var use§.graphics.beginBitmapFill(_loc12_);
            this.§case var use§.graphics.drawRect(this.§?t§.width,this.§?t§.y + this.§?t§.height,this.§50§.width,this.§true var each§.height);
         }
         if(Boolean(this.item) && itemService.§implements var throw§(this.item))
         {
            this.§function include§.y = this.§catch for§.bitmapData != null && this.scrollContainer.contains(this.§catch for§) ? Number(this.§catch for§.height + this.itemNameLabel.height + 20) : Number(this.itemNameLabel.height + 10);
            this.§function include§.§continue for true§(this.areaRect2.width);
         }
         this.area.graphics.clear();
         this.area.graphics.beginFill(16711680,0);
         this.area.graphics.drawRect(this.areaRect.x,this.areaRect.y,this.areaRect.width,this.areaRect.height);
         if(_loc15_)
         {
            if(this.item != null && this.§with const dynamic§ != null && this.§with const dynamic§.parent == null)
            {
               this.showBitmap(this.§with const dynamic§);
            }
         }
         else
         {
            removeDisplayObject(this.§with const dynamic§);
         }
         this.setButtonsPosition();
         this.scrollPane.setSize(param1 - this.margin * 2 - 2 + 6,param2 - this.margin - BOTTOM_MARGIN - 2 - MODULE_SPACING * 2);
         this.scrollPane.update();
         if(this.scrollContainer.contains(this.timeIndicator))
         {
            this.timeIndicator.x = this.areaRect2.x + this.areaRect2.width - this.timeIndicator.width + 3;
            this.timeIndicator.y = this.areaRect2.y - 7;
         }
      }
      
      public function hideModTable() : void
      {
         if(this.scrollContainer.contains(this.modTable))
         {
            this.scrollContainer.removeChild(this.modTable);
         }
      }
      
      public function showModTable() : void
      {
         if(!this.scrollContainer.contains(this.modTable))
         {
            this.scrollContainer.addChild(this.modTable);
         }
      }
      
      private function § !#§(param1:Bitmap) : void
      {
         if(this.§>e§.height > 0)
         {
            param1.y += §6"<§;
            this.§null var include§.text = "-" + String(itemService.getDiscount(this.item)) + "%";
            this.§null var include§.filters = [new DropShadowFilter(1,45,0,0.7,1,1,1)];
            this.§null var include§.x = 302;
            this.§null var include§.y = int(this.itemNameLabel.height + §6"<§) + 168;
            if(localeService.language == "cn")
            {
               this.§null var include§.x = 300;
            }
            if(!this.scrollContainer.contains(this.§null var include§))
            {
               this.scrollContainer.addChild(this.§null var include§);
            }
            else
            {
               this.scrollContainer.removeChild(this.§null var include§);
               this.scrollContainer.addChild(this.§null var include§);
            }
         }
      }
      
      private function §get var override§(param1:Bitmap) : void
      {
         this.hideBitmap(param1);
         if(this.scrollContainer.contains(this.§null var include§))
         {
            this.scrollContainer.removeChild(this.§null var include§);
         }
      }
      
      private function showBitmap(param1:Bitmap) : void
      {
         if(param1.bitmapData != null && !this.§ "?§.contains(param1))
         {
            this.§ "?§.addChild(param1);
         }
      }
      
      private function hideBitmap(param1:Bitmap) : void
      {
         if(this.scrollContainer.contains(param1))
         {
            this.scrollContainer.removeChild(param1);
         }
      }
      
      public function get leftPreviewEnabled() : Boolean
      {
         return this._leftPreviewEnabled;
      }
      
      public function set leftPreviewEnabled(param1:Boolean) : void
      {
         this._leftPreviewEnabled = param1;
      }
      
      private function setTimeRemaining(param1:Date) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(isNaN(param1.date))
         {
            this.timeIndicator.text = " ";
         }
         else
         {
            _loc2_ = (param1.hours < 10 ? "0" + String(param1.hours) : String(param1.hours)) + ":" + (param1.minutes < 10 ? "0" + String(param1.minutes) : String(param1.minutes));
            _loc3_ = param1.month + 1 < 10 ? "0" + String(param1.month + 1) : String(param1.month + 1);
            _loc4_ = param1.date < 10 ? "0" + String(param1.date) : String(param1.date);
            if(localeService.getText(TanksLocale.TEXT_GUI_LANG) == "ru")
            {
               _loc5_ = _loc4_ + "-" + _loc3_ + "-" + String(param1.fullYear);
            }
            else
            {
               _loc5_ = _loc3_ + "-" + _loc4_ + "-" + String(param1.fullYear);
            }
            this.timeIndicator.text = _loc2_ + "  " + _loc5_;
         }
         this.resize(this.size.x,this.size.y);
      }
      
      private function inventoryNumChanged(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = getRequiredRank(userPropertiesService.rank,this.minRankIndex,this.maxRankIndex);
         var _loc4_:int = this.isCountable ? int(this.inventoryNumStepper.value) : int(1);
         if(moneyService.crystal >= this.itemPrice * _loc4_)
         {
            _loc2_ = this.itemPrice * _loc4_;
         }
         else
         {
            _loc2_ = -this.itemPrice * _loc4_;
         }
         this.buyButton.setInfo(itemService.getPrice(this.item),_loc4_,_loc3_,itemService.§in extends§(this.item));
         this.setButtonsPosition();
      }
      
      public function propertyUpgraded(param1:UpgradableItemPropertyValue) : void
      {
         if(this.selectWindow != null)
         {
            this.selectWindow.propertyUpgraded(param1);
         }
         this.showItemInfo(this.item,false);
         this.resize(this.size.x,this.size.y);
         GlowEffect.glow(this.getLabelByProperty(param1.getProperty()),UpgradeColors.getColorForValue(param1));
         this.blinkEffect.stop();
      }
      
      private function updateBlinkEffect() : void
      {
         if(itemService.isUpgrading(this.item))
         {
            this.startBlinkEffect(itemService.getUpgradingProperty(this.item));
         }
         else
         {
            this.blinkEffect.stop();
         }
      }
      
      private function startBlinkEffect(param1:ItemGarageProperty) : void
      {
         this.blinkEffect.start(this.getLabelByProperty(param1));
      }
      
      private function getLabelByProperty(param1:ItemGarageProperty) : DisplayObject
      {
         var _loc2_:int = 0;
         var _loc3_:ModInfoRow = null;
         var _loc4_:Vector.<ItemPropertyValue> = null;
         var _loc5_:int = 0;
         if(itemService.§else for case§(this.item))
         {
            _loc2_ = itemService.getModificationIndex(this.item);
            _loc3_ = this.modTable.rows[_loc2_];
            _loc4_ = itemService.getProperties(this.item);
            _loc5_ = 0;
            return _loc3_.labels[_loc5_];
         }
         return propertyService.getParams(param1).icon.getLabel();
      }
   }
}

