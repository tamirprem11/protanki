package alternativa.tanks.model.shop
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.shop.event.ShopItemChosen;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class ShopModel
   {
      private var localeService:ILocaleService;
      
      private var dialogsService:IDialogsService;
      
      private var window:ShopWindow;
      
      public function ShopModel()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         this.localeService = OSGi.getInstance().getService(ILocaleService) as ILocaleService;
         this.dialogsService = OSGi.getInstance().getService(IDialogsService) as IDialogsService;
         ShopWindow.haveDoubleCrystalls = param1.have_double_crystals;
         this.window = new ShopWindow();
         var _loc2_:Object = JSON.parse(param1.data);
         var _loc3_:String = this.§function final§(this.localeService.language);
         var _loc4_:Array = _loc2_.categories;
         for each(_loc5_ in _loc4_)
         {
            this.window.addCategory(_loc5_.header_text[_loc3_],_loc5_.description[_loc3_],_loc5_.category_id);
         }
         _loc6_ = _loc2_.items;
         for each(_loc7_ in _loc6_)
         {
            this.window.addItem(_loc7_.category_id,_loc7_.item_id,_loc7_.additional_data);
         }
         this.window.addEventListener(ShopItemChosen.EVENT_TYPE,this.onSelectItem);
         this.window.addEventListener(Event.CLOSE,this.onClose);
      }
      
      private function §function final§(param1:String) : String
      {
         switch(param1)
         {
            case "ru":
            case "en":
               return param1.toUpperCase();
            case "pt_BR":
               return param1;
            default:
               return param1.toUpperCase();
         }
      }
      
      private function onClose(param1:Event) : void
      {
         this.dialogsService.removeDialog(this.window);
         this.window = null;
      }
      
      private function onSelectItem(param1:ShopItemChosen) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;shop_try_buy_item;" + param1.itemId + ";" + this.window.header.chooseCountryComboBox.selectedItem.code);
      }
   }
}

