package alternativa.tanks.gui
{
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.category.CategoryButtonsList;
   import alternativa.tanks.gui.garagelist.GarageList;
   import alternativa.tanks.gui.garagelist.GarageListController;
   import alternativa.tanks.gui.tankpreview.TankPreviewWindow;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.utils.removeDisplayObject;
   import controls.TankWindow;
   import controls.TankWindowInner;
   import controls.buttons.ButtonStates;
   import controls.timer.CountDownTimer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import forms.events.PartsListEvent;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.alertservice.§if const finally§;
   
   public class GarageWindow extends Sprite implements §false default§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var itemService:ItemService;
      
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var moneyService:IMoneyService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var trackerService:ITrackerService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var tank3DViewer:ITank3DViewer;
      
      private var localeService:ILocaleService;
      
      private var windowSize:Point;
      
      private const windowMargin:int = 11;
      
      private const buttonSize:Point = new Point(104,33);
      
      private var myItemsWindow:TankWindow;
      
      private var myItemsInner:TankWindowInner;
      
      private var shopItemsWindow:TankWindow;
      
      private var shopItemsInner:TankWindowInner;
      
      public var itemInfoPanel:ItemInfoPanel;
      
      public var inventorySelected:Boolean;
      
      public var storeItemSelected:Boolean;
      
      public var selectedItemId:String;
      
      public var selectedItem:IGameObject;
      
      private var _itemsInWarehouse:Vector.<IGameObject>;
      
      private var _itemsInStore:Vector.<IGameObject>;
      
      public var tankPreview:TankPreviewWindow;
      
      public const itemInfoPanelWidth:int = 412;
      
      private var _garageListWindow:TankWindow;
      
      private var _garageListInner:TankWindowInner;
      
      private var _garageList:GarageList;
      
      private var _categoryButtons:CategoryButtonsList;
      
      private var _garageListController:GarageListController;
      
      public var §set var package§:Vector.<§-u§>;
      
      public function GarageWindow(param1:Tanks3DSResource, param2:Boolean)
      {
         super();
         this.§set var package§ = new Vector.<§-u§>();
         this._itemsInWarehouse = new Vector.<IGameObject>();
         this._itemsInStore = new Vector.<IGameObject>();
         this.windowSize = new Point(880,737);
         if(!battleInfoService.isInBattle())
         {
            this.tankPreview = new TankPreviewWindow(param1);
            addChild(this.tankPreview);
            tank3DViewer.setView(this.tankPreview);
         }
         this.itemInfoPanel = new ItemInfoPanel(param2,this.itemInfoPanelWidth);
         addChild(this.itemInfoPanel);
         this._garageListWindow = new TankWindow();
         addChild(this._garageListWindow);
         this._garageListInner = new TankWindowInner(0,0,TankWindowInner.GREEN);
         this._garageListInner.showBlink = true;
         addChild(this._garageListInner);
         this._garageList = new GarageList();
         addChild(this._garageList);
         this._categoryButtons = new CategoryButtonsList();
         addChild(this._categoryButtons);
         this._garageListController = new GarageListController(this._garageList,this._categoryButtons);
         this.setEvents();
         this.setEvents();
      }
      
      public function destroy() : void
      {
         if(this.tankPreview != null)
         {
            removeDisplayObject(this.tankPreview);
            this.tankPreview.destroy();
            this.tankPreview = null;
         }
         this.itemInfoPanel.destroy();
         this.itemInfoPanel = null;
         this.myItemsWindow = null;
         this.myItemsInner = null;
         this.shopItemsWindow = null;
         this.shopItemsInner = null;
         this.selectedItemId = null;
         this._itemsInWarehouse = null;
         this._itemsInStore = null;
         removeDisplayObject(this._garageListWindow);
         this._garageListWindow = null;
         removeDisplayObject(this._garageListInner);
         this._garageListInner = null;
         this._garageListController.destroy();
         this._garageListController = null;
         this._garageList = null;
         this._categoryButtons = null;
         this.§for false§();
      }
      
      private function setEvents() : void
      {
         this._garageList.addEventListener(PartsListEvent.SELECT_PARTS_LIST_ITEM,this.onSelectGarageListItem);
         this._garageList.addEventListener(PartsListEvent.ITEM_DOUBLE_CLICK,this.onGarageItemDoubleClick);
         this.itemInfoPanel.buyButton.addEventListener(MouseEvent.CLICK,this.onButtonBuyClick);
         this.itemInfoPanel.equipButton.addEventListener(MouseEvent.CLICK,this.onButtonEquipClick);
         this.itemInfoPanel.§package for class§.addEventListener(MouseEvent.CLICK,this.§]!D§);
      }
      
      private function §for false§() : void
      {
         var _loc1_:§-u§ = null;
         for each(_loc1_ in this.§set var package§)
         {
            _loc1_.removeListener();
         }
      }
      
      public function initDepot(param1:Vector.<IGameObject>) : void
      {
         this._garageListController.initDepot(param1);
      }
      
      public function resize(param1:int, param2:int) : void
      {
         this.windowSize = new Point(param1,param2);
         this._garageListWindow.width = param1;
         this._garageListWindow.height = 205;
         this._garageListWindow.x = 0;
         this._garageListWindow.y = param2 - this._garageListWindow.height;
         this._garageListInner.width = param1 - this.windowMargin * 2;
         this._garageListInner.height = 169 - this.windowMargin * 2;
         this._garageListInner.x = this.windowMargin;
         this._garageListInner.y = this._garageListWindow.y + this.windowMargin;
         this._garageList.width = this._garageListWindow.width - this.windowMargin * 2 - 8;
         this._garageList.height = 169 - this.windowMargin * 2 + 1;
         this._garageList.x = this.windowMargin + 4;
         this._garageList.y = this._garageListWindow.y + this.windowMargin + 4;
         this._categoryButtons.width = param1 - this.windowMargin * 2 - 8;
         this._categoryButtons.x = this.windowMargin;
         this._categoryButtons.y = this._garageList.y + this._garageList.height;
         if(this.tankPreview != null)
         {
            this.tankPreview.resize(param1 - this.itemInfoPanelWidth,param2 - this._garageListWindow.height);
         }
         this.itemInfoPanel.resize(this.itemInfoPanelWidth,param2 - this._garageListWindow.height);
         this.itemInfoPanel.x = param1 - this.itemInfoPanelWidth;
      }
      
      public function updateDiscount(param1:IGameObject) : void
      {
         if(this.selectedItem == param1)
         {
            this.showItemInfo(this.selectedItem,this.isItemInStore(this.selectedItem));
         }
         this._garageListController.updateDiscount(param1);
      }
      
      public function §@"F§() : IGameObject
      {
         return this.selectedItem;
      }
      
      public function §<`§() : ItemInfoPanel
      {
         return this.itemInfoPanel;
      }
      
      private function onGarageItemDoubleClick(param1:PartsListEvent) : void
      {
         this.onSelectGarageListItem(param1);
         if(this.itemInfoPanel.equipButton.visible && this.itemInfoPanel.equipButton.getState() == ButtonStates.UP)
         {
            this.equip();
         }
         else if(this.itemInfoPanel.buyButton.visible && this.itemInfoPanel.buyButton.getState() == ButtonStates.UP)
         {
            this.onButtonBuyClickInternal();
         }
         else if(this.itemInfoPanel.§package for class§.visible && this.itemInfoPanel.§package for class§.getState() == ButtonStates.UP)
         {
            this.§<!D§();
         }
      }
      
      private function §<!D§() : void
      {
         alertService.showAlert(this.localeService.getText(TanksLocale.TEXT_PRESENT_WILL_BE_REMOVED_ALERT),Vector.<String>([§if const finally§.OK,§if const finally§.CANCEL]));
         alertService.addEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,this.§+l§);
      }
      
      private function §]!D§(param1:MouseEvent) : void
      {
         this.§<!D§();
      }
      
      private function §+l§(param1:AlertServiceEvent) : void
      {
         alertService.removeEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,this.§+l§);
         if(param1.typeButton == §if const finally§.OK)
         {
            dispatchEvent(new GarageWindowEvent(GarageWindowEvent.DELETE_PRESENT,this.selectedItem));
            this.removeItemFromDepot(this.selectedItem);
            if(this._garageListController.getCurrentCategoryItemsCount() > 0)
            {
               this.updateSelection();
            }
            else
            {
               this._categoryButtons.setCategoryButtonVisibility(ItemViewCategoryEnum.GIVEN_PRESENTS,false);
               this.showDefaultCategory();
            }
         }
      }
      
      private function onButtonBuyClickInternal() : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.BUY_ITEM,this.selectedItem));
      }
      
      private function equip() : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.SETUP_ITEM,this.selectedItem));
      }
      
      public function selectFirstItemInWarehouse() : void
      {
         this.showDefaultCategory();
      }
      
      public function selectItemInWarehouse(param1:IGameObject) : void
      {
      }
      
      public function unselectInWarehouse() : void
      {
      }
      
      public function selectItemInStore(param1:IGameObject) : void
      {
      }
      
      public function unselectInStore() : void
      {
      }
      
      public function isItemInStore(param1:IGameObject) : Boolean
      {
         return this._garageListController.isItemInStore(param1);
      }
      
      public function isItemInDepot(param1:IGameObject) : Boolean
      {
         return this._garageListController.isItemInDepot(param1);
      }
      
      private function onSelectGarageListItem(param1:PartsListEvent) : void
      {
         this.selectedItem = this._garageList.selectedItem;
         var _loc2_:Boolean = this._garageListController.isItemInDepot(this.selectedItem);
         if(_loc2_)
         {
            dispatchEvent(new GarageWindowEvent(GarageWindowEvent.WAREHOUSE_ITEM_SELECTED,this.selectedItem));
         }
         else
         {
            dispatchEvent(new GarageWindowEvent(GarageWindowEvent.STORE_ITEM_SELECTED,this.selectedItem));
         }
      }
      
      public function initStore(param1:Vector.<IGameObject>) : void
      {
         this.§each const for§(param1);
         this._garageListController.initStore(param1);
      }
      
      private function §each const for§(param1:Vector.<IGameObject>) : void
      {
         var _loc2_:IGameObject = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:CountDownTimer = null;
         var _loc7_:int = int(param1.length);
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc2_ = param1[_loc8_];
            if(itemService.§"I§(_loc2_) && itemService.canBuy(_loc2_) && itemService.§override var§(_loc2_))
            {
               _loc3_ = itemService.getTimeLeftInSeconds(_loc2_);
               _loc4_ = 2592000;
               if(!itemService.§'!I§(_loc2_) && _loc3_ > 0 && _loc3_ <= _loc4_)
               {
                  _loc5_ = uint(_loc3_ * 1000);
                  _loc6_ = new CountDownTimer();
                  _loc6_.start(_loc5_ + getTimer());
                  this.§set var package§.push(new §-u§(_loc2_,_loc6_,this));
               }
            }
            _loc8_++;
         }
      }
      
      public function §package set package§(param1:IGameObject) : void
      {
         var _loc2_:IGameObject = null;
         if(itemService.§else for case§(this.selectedItem))
         {
            _loc2_ = itemService.§"s§(param1);
            if(_loc2_ != null)
            {
               this.updateDiscount(_loc2_);
            }
         }
      }
      
      public function addItemToMarket(param1:IGameObject) : void
      {
         this._itemsInStore.push(param1);
         this._garageListController.addItemToStore(param1);
      }
      
      public function updateKitsContainsItem(param1:IGameObject) : void
      {
         this._garageListController.updateKitsContainsItem(param1);
      }
      
      public function removeItemFromStore(param1:IGameObject) : void
      {
         this._garageListController.removeItemFromStore(param1);
      }
      
      public function removeAllModifications(param1:IGameObject) : void
      {
         var _loc2_:IGameObject = null;
         var _loc3_:Vector.<IGameObject> = itemService.§;h§(param1);
         for each(_loc2_ in _loc3_)
         {
            if(this.isItemInDepot(_loc2_))
            {
               this.removeItemFromDepot(_loc2_);
            }
            if(this.isItemInStore(_loc2_))
            {
               this.removeItemFromStore(_loc2_);
            }
         }
      }
      
      public function get itemsInWarehouse() : Vector.<IGameObject>
      {
         return this._itemsInWarehouse;
      }
      
      public function get itemsInStore() : Vector.<IGameObject>
      {
         return this._itemsInStore;
      }
      
      public function lockItemInWarehouse(param1:String) : void
      {
      }
      
      public function unlockItemInWarehouse(param1:String) : void
      {
      }
      
      public function lockItemInStore(param1:String) : void
      {
      }
      
      public function unlockItemInStore(param1:String) : void
      {
      }
      
      public function unmountItem(param1:IGameObject) : void
      {
         this._garageList.unmount(param1);
      }
      
      public function mountItem(param1:IGameObject) : void
      {
         this._garageList.mount(param1);
      }
      
      public function showItemInfo(param1:IGameObject, param2:Boolean) : void
      {
         this.storeItemSelected = param2;
         this.inventorySelected = itemService.getCategory(param1) == ItemCategoryEnum.INVENTORY;
         if(itemService.getCategory(param1) == ItemCategoryEnum.INVENTORY && !param2)
         {
            this._garageList.updateCount(param1,itemService.getCount(param1));
         }
         this.itemInfoPanel.showItemInfo(param1,param2);
         this.itemInfoPanel.resize(this.itemInfoPanelWidth,this.windowSize.y - this._garageListWindow.height);
      }
      
      public function addItemToDepot(param1:IGameObject) : void
      {
         this._garageListController.addItemToDepot(param1);
      }
      
      public function removeItemFromDepot(param1:IGameObject) : void
      {
         this._garageListController.removeItemFromDepot(param1);
      }
      
      public function scrollToItemInWarehouse(param1:IGameObject) : void
      {
      }
      
      public function scrollToItemInStore(param1:IGameObject) : void
      {
      }
      
      public function updateStore() : void
      {
         this._garageListController.updateSelection();
      }
      
      public function lockMountButton() : void
      {
         if(!this.storeItemSelected && !this.inventorySelected)
         {
            this.itemInfoPanel.equipButton.enabled = false;
         }
      }
      
      public function unlockBuyButton() : void
      {
      }
      
      public function unlockUpgradeButton() : void
      {
      }
      
      public function unlockMountButton() : void
      {
         if(!this.storeItemSelected && !this.inventorySelected)
         {
            this.itemInfoPanel.equipButton.enabled = true;
         }
      }
      
      public function setBuyButtonInfo(param1:Boolean, param2:int = 0, param3:int = 0) : void
      {
         if(param1)
         {
            this.itemInfoPanel.buyButton.icon = null;
         }
         else
         {
            this.itemInfoPanel.buyButton.setInfo(param2,param3);
         }
      }
      
      private function onWarehouseItemSelect(param1:Event) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.WAREHOUSE_ITEM_SELECTED,this.selectedItem));
      }
      
      private function onStoreItemSelect(param1:Event) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.STORE_ITEM_SELECTED,this.selectedItem));
      }
      
      private function onButtonBuyClick(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.BUY_ITEM,this.selectedItem));
      }
      
      private function onButtonBuyCrystalsClick(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.ADD_CRYSTALS,this.selectedItem));
      }
      
      private function onButtonEquipClick(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.SETUP_ITEM,this.selectedItem));
      }
      
      private function onModButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new GarageWindowEvent(GarageWindowEvent.UPGRADE_ITEM,this.selectedItem));
      }
      
      public function showDefaultCategory() : void
      {
         this._garageListController.showDefaultCategory();
      }
      
      public function showCategory(param1:ItemViewCategoryEnum) : void
      {
         this._garageListController.showCategory(param1);
      }
      
      public function showItemInCategory(param1:IGameObject) : void
      {
         this._garageListController.showItemInCategory(param1);
      }
      
      public function updateSelection() : void
      {
         this._garageListController.updateSelection();
      }
      
      public function §&!l§() : Vector.<§-u§>
      {
         return this.§set var package§;
      }
      
      public function updateCount(param1:IGameObject) : void
      {
         this._garageList.updateCount(param1,itemService.getCount(param1));
      }
      
      public function setCategoryButtonVisibility(param1:ItemViewCategoryEnum, param2:Boolean) : void
      {
         this._categoryButtons.setCategoryButtonVisibility(param1,param2);
      }
   }
}

