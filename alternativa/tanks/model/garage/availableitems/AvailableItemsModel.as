package alternativa.tanks.model.garage.availableitems
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.AvailableItemsAlert;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import flash.events.Event;
   import forms.events.PartsListEvent;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.client.panel.model.garage.GarageItemInfo;
   import projects.tanks.clients.flash.commons.services.layout.LobbyLayoutServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class AvailableItemsModel
   {
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var notificationGarageCategoriesService:INotificationGarageCategoriesService;
      
      public static const CHANNEL:String = "available";
      
      private var items:Vector.<GarageItemInfo> = new Vector.<GarageItemInfo>();
      
      private var alert:AvailableItemsAlert;
      
      public function AvailableItemsModel()
      {
         super();
      }
      
      public function showAvailableItems(param1:Vector.<GarageItemInfo>) : void
      {
         if(lobbyLayoutService.getCurrentState() == LayoutState.GARAGE)
         {
            this.showAlert(param1);
         }
         else
         {
            this.items = new Vector.<GarageItemInfo>();
            this.items = param1;
            if(!lobbyLayoutService.inBattle())
            {
            }
            lobbyLayoutService.addEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitch);
         }
         notificationGarageCategoriesService.§null import§(param1);
      }
      
      private function onEndLayoutSwitch(param1:LobbyLayoutServiceEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector.<GarageItemInfo> = null;
         if(param1.state != LayoutState.BATTLE)
         {
            _loc2_ = true;
            if(_loc2_)
            {
               if(this.items != null)
               {
                  _loc3_ = this.items;
                  this.showAlert(_loc3_);
               }
            }
         }
      }
      
      private function showAlert(param1:Vector.<GarageItemInfo>) : void
      {
         var _loc2_:AvailableItemsAlert = this.alert;
         if(_loc2_ != null)
         {
            this.destroyAlert();
         }
         var _loc3_:AvailableItemsAlert = new AvailableItemsAlert(param1,null,TextConst.TEXT_GARAGE_NEW_ITEMS_ALERT);
         _loc3_.addEventListener(Event.CANCEL,this.onClickCloseButton);
         _loc3_.addEventListener(PartsListEvent.SELECT_PARTS_LIST_ITEM,this.onItemSelect);
         this.alert = _loc3_;
      }
      
      private function onItemSelect(param1:PartsListEvent) : void
      {
         var _loc2_:AvailableItemsAlert = this.alert;
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;show_item_info;" + _loc2_.partsList.selectedItem.name);
         this.destroyAlert();
      }
      
      private function onClickCloseButton(param1:Event) : void
      {
         this.destroyAlert();
      }
      
      private function destroyAlert() : void
      {
         if(lobbyLayoutService.hasEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH))
         {
            lobbyLayoutService.removeEventListener(LobbyLayoutServiceEvent.END_LAYOUT_SWITCH,this.onEndLayoutSwitch);
         }
         var _loc1_:AvailableItemsAlert = this.alert;
         _loc1_.removeEventListener(Event.CANCEL,this.onClickCloseButton);
         _loc1_.removeEventListener(PartsListEvent.SELECT_PARTS_LIST_ITEM,this.onItemSelect);
         this.items = null;
         this.alert = null;
      }
   }
}

