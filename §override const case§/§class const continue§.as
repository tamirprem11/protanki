package §override const case§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.item.kit.GarageKit;
   import alternativa.tanks.service.item.ItemService;
   import assets.Diamond;
   import controls.Money;
   import controls.base.LabelBase;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.text.TextFormatAlign;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   import projects.tanks.client.garage.models.item.kit.KitItem;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §class const continue§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var itemService:ItemService;
      
      private static const upgradeSelectionLeftClass:Class = §"!+§;
      
      private static const upgradeSelectionCenterClass:Class = §[!#§;
      
      private const §?"V§:int = 12;
      
      private const §6!?§:int = 13;
      
      private const §while var throw§:int = 4;
      
      private const §null var use§:int = 17;
      
      private var selection:Shape = new Shape();
      
      private var _width:int;
      
      private var §+!w§:int;
      
      private var §@>§:int;
      
      private var §,"Q§:IGameObject;
      
      private var kit:GarageKit;
      
      public function §class const continue§(param1:int)
      {
         super();
         this._width = param1;
         this.§+!w§ = 0;
      }
      
      public function show(param1:IGameObject) : void
      {
         this.§,"Q§ = param1;
         this.kit = GarageKit(param1.adapt(GarageKit));
         var _loc2_:int = int(this.kit.getItems().length);
         this.§+!w§ = this.§?"V§ + (_loc2_ + 2) * this.§null var use§;
         this.§switch with§();
         this.§""X§();
         this.§const class§();
         this.§6"=§();
         this.§;B§();
      }
      
      public function §switch with§() : void
      {
         while(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
      }
      
      private function §""X§() : void
      {
         var _loc1_:LabelBase = new LabelBase();
         _loc1_.color = 5898034;
         _loc1_.align = TextFormatAlign.LEFT;
         _loc1_.text = localeService.getText(TanksLocale.TEXT_ITEMS_IN_KIT);
         _loc1_.x = this.§?"V§;
         _loc1_.y = this.§?"V§;
         addChild(_loc1_);
         var _loc2_:LabelBase = new LabelBase();
         _loc2_.color = 5898034;
         _loc2_.align = TextFormatAlign.RIGHT;
         _loc2_.text = localeService.getText(TanksLocale.TEXT_GARAGE_PRICE);
         _loc2_.x = this._width - _loc2_.width - _loc1_.x;
         _loc2_.y = _loc1_.y;
         addChild(_loc2_);
      }
      
      private function §const class§() : void
      {
         var _loc1_:KitItem = null;
         var _loc2_:§#!7§ = null;
         this.kit.getItems().sort(this.§finally else§);
         var _loc3_:int = this.§?"V§ + this.§null var use§;
         for each(_loc1_ in this.kit.getItems())
         {
            _loc2_ = new §#!7§(_loc3_,this._width,_loc1_,this.§?"V§,this.§while var throw§);
            addChild(_loc2_);
            _loc3_ += this.§null var use§;
         }
      }
      
      private function §6"=§() : void
      {
         var _loc1_:LabelBase = new LabelBase();
         _loc1_.color = 5898034;
         _loc1_.align = TextFormatAlign.LEFT;
         _loc1_.text = localeService.getText(TanksLocale.TEXT_TOTAL_PRICE_KIT);
         _loc1_.x = this.§?"V§;
         _loc1_.y = this.§?"V§ + (this.kit.getItems().length + 1) * this.§null var use§;
         addChild(_loc1_);
         var _loc2_:Diamond = new Diamond();
         _loc2_.x = this._width - _loc1_.x - _loc2_.width;
         addChild(_loc2_);
         _loc2_.y = _loc1_.y + this.§while var throw§;
         var _loc3_:LabelBase = new LabelBase();
         _loc3_.color = 5898034;
         _loc3_.align = TextFormatAlign.RIGHT;
         _loc3_.text = Money.numToString(this.kit.getPriceWithoutDiscount(),false);
         _loc3_.x = _loc2_.x - _loc3_.width - 1;
         _loc3_.y = _loc1_.y;
         addChild(_loc3_);
      }
      
      private function §;B§() : void
      {
         addChild(this.selection);
         this.selection.y = this.§6!?§ + this.§+!w§;
         this.resizeSelection();
         var _loc1_:int = itemService.getDiscount(this.§,"Q§);
         var _loc2_:int = itemService.getPrice(this.§,"Q§);
         var _loc3_:String = localeService.getText(TanksLocale.TEXT_DISCOUNTED_AT_KIT);
         _loc3_ = _loc3_.replace("{0}",_loc1_ + "%");
         this.§4!B§(_loc3_,_loc2_,0,16777215);
         var _loc4_:int = this.kit.§include var get§();
         var _loc5_:int = 1;
         if(_loc4_ > 0)
         {
            this.§4!B§(localeService.getText(TanksLocale.TEXT_ALREADY_BOUGHT_KIT),_loc4_,1,9539985);
            _loc5_++;
         }
         this.§4!B§(localeService.getText(TanksLocale.TEXT_YOU_SAVE_KIT),this.kit.§break var implements§(),_loc5_,16777215);
         this.§@>§ = (_loc5_ + 1) * this.§null var use§;
      }
      
      private function §4!B§(param1:String, param2:int, param3:int, param4:uint) : void
      {
         var _loc5_:LabelBase = new LabelBase();
         _loc5_.color = param4;
         _loc5_.align = TextFormatAlign.LEFT;
         _loc5_.text = param1;
         _loc5_.x = this.§?"V§;
         _loc5_.y = this.§6!?§ + this.§+!w§ + this.§null var use§ * param3;
         addChild(_loc5_);
         var _loc6_:Diamond = new Diamond();
         _loc6_.x = this._width - _loc5_.x - _loc6_.width;
         addChild(_loc6_);
         _loc6_.y = _loc5_.y + this.§while var throw§;
         var _loc7_:LabelBase = new LabelBase();
         _loc7_.color = param2 >= 0 ? uint(param4) : uint(16727340);
         _loc7_.align = TextFormatAlign.RIGHT;
         _loc7_.text = Money.numToString(param2,false);
         _loc7_.x = _loc6_.x - _loc7_.width - 1;
         _loc7_.y = _loc5_.y;
         addChild(_loc7_);
      }
      
      private function resizeSelection() : void
      {
         var _loc1_:int = this._width - 18;
         var _loc2_:BitmapData = new upgradeSelectionLeftClass().bitmapData;
         this.selection.x = 9;
         this.selection.graphics.clear();
         this.selection.graphics.beginBitmapFill(_loc2_);
         this.selection.graphics.drawRect(0,0,_loc2_.width,_loc2_.height);
         var _loc3_:BitmapData = new upgradeSelectionCenterClass().bitmapData;
         this.selection.graphics.beginBitmapFill(_loc3_);
         this.selection.graphics.drawRect(_loc2_.width,0,_loc1_ - _loc2_.width * 2,_loc3_.height);
         var _loc4_:Matrix = new Matrix(-1,0,0,1,_loc1_,0);
         this.selection.graphics.beginBitmapFill(_loc2_,_loc4_);
         this.selection.graphics.drawRect(_loc1_ - _loc2_.width,0,_loc2_.width,_loc2_.height);
         this.selection.graphics.endFill();
      }
      
      private function §finally else§(param1:KitItem, param2:KitItem) : Number
      {
         var _loc3_:int = this.§if for if§(param1);
         var _loc4_:int = this.§if for if§(param2);
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         var _loc5_:int = itemService.getPrice(param1.item) * param1.count;
         var _loc6_:int = itemService.getPrice(param2.item) * param2.count;
         if(_loc5_ < _loc6_)
         {
            return 1;
         }
         if(_loc5_ > _loc6_)
         {
            return -1;
         }
         return 0;
      }
      
      private function §if for if§(param1:KitItem) : int
      {
         switch(itemService.getCategory(param1.item))
         {
            case ItemCategoryEnum.WEAPON:
               return 0;
            case ItemCategoryEnum.ARMOR:
               return 1;
            case ItemCategoryEnum.INVENTORY:
               return 3;
            case ItemCategoryEnum.PLUGIN:
               return 4;
            case ItemCategoryEnum.COLOR:
               return 5;
            default:
               return 6;
         }
      }
      
      public function §`>§() : int
      {
         return this.§+!w§;
      }
      
      public function §final const native§() : int
      {
         return this.§6!?§ + this.§+!w§ + this.§@>§;
      }
      
      public function §"!l§() : int
      {
         return this.§@>§;
      }
   }
}

