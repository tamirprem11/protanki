package alternativa.tanks.service.item
{
   import alternativa.model.description.IDescription;
   import alternativa.model.timeperiod.TimePeriod;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.GarageWindow;
   import alternativa.tanks.model.item.buyable.IBuyable;
   import alternativa.tanks.model.item.category.IItemCategory;
   import alternativa.tanks.model.item.category.IItemViewCategory;
   import alternativa.tanks.model.item.countable.ICountableItem;
   import alternativa.tanks.model.item.discount.IDiscount;
   import alternativa.tanks.model.item.item.IItem;
   import alternativa.tanks.model.item.kit.GarageKit;
   import alternativa.tanks.model.item.modification.IModification;
   import alternativa.tanks.model.item.properties.ItemProperties;
   import alternativa.tanks.model.item.properties.ItemPropertyValue;
   import alternativa.tanks.model.item.upgradable.UpgradableItem;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.types.Long;
   import controls.timer.CountDownTimer;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import projects.tanks.client.garage.models.item.properties.ItemGarageProperty;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §6!^§ extends EventDispatcher implements ItemService
   {
      [Inject]
      public static var userPropertyService:IUserPropertiesService;
      
      [Inject]
      public static var propertyService:ItemPropertyParamsService;
      
      [Inject]
      public static var garageService:GarageService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §null var import§:Dictionary;
      
      private var §else for else§:Dictionary;
      
      private var §else§:Dictionary;
      
      private var §implements const case§:Vector.<IGameObject>;
      
      private var §4!o§:Dictionary;
      
      private var §override for const§:Dictionary;
      
      private const §!!G§:int = 5;
      
      public function §6!^§()
      {
         super();
         this.§implements const case§ = new Vector.<IGameObject>();
         this.§null var import§ = new Dictionary();
         this.§else for else§ = new Dictionary();
         this.§else§ = new Dictionary();
         this.§override for const§ = new Dictionary();
         this.§4!o§ = new Dictionary();
         this.§4!o§[ItemGarageProperty.FIREBIRD_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_FIREBIRD;
         this.§4!o§[ItemGarageProperty.FREEZE_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_FREEZE;
         this.§4!o§[ItemGarageProperty.ISIS_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_ISIDA;
         this.§4!o§[ItemGarageProperty.RAILGUN_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_RAILGUN;
         this.§4!o§[ItemGarageProperty.RICOCHET_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_RICOCHET;
         this.§4!o§[ItemGarageProperty.SHAFT_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_SHAFT;
         this.§4!o§[ItemGarageProperty.SMOKY_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_SMOKY;
         this.§4!o§[ItemGarageProperty.THUNDER_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_THUNDER;
         this.§4!o§[ItemGarageProperty.TWINS_RESISTANCE] = TanksLocale.TEXT_REDUCE_DAMAGE_TWINS;
      }
      
      public function addItem(param1:IGameObject) : void
      {
         if(param1 in this.§null var import§)
         {
            return;
         }
         this.§null var import§[param1] = true;
         dispatchEvent(new §8"X§(§8"X§.§var var else§,param1));
      }
      
      public function §-"Y§(param1:IGameObject) : ItemViewCategoryEnum
      {
         return IItemViewCategory(param1.adapt(IItemViewCategory)).getCategory();
      }
      
      public function isBuyable(param1:IGameObject) : Boolean
      {
         return IBuyable(param1.adapt(IBuyable)).isBuyable();
      }
      
      public function setCount(param1:IGameObject, param2:int) : void
      {
         if(param1.hasModel(ICountableItem))
         {
            ICountableItem(param1.adapt(ICountableItem)).setCount(param2);
         }
      }
      
      public function §in var throw§(param1:IGameObject) : IGameObject
      {
         var _loc2_:int = this.getModificationIndex(param1);
         var _loc3_:Vector.<IGameObject> = this.§;h§(param1);
         if(_loc2_ > 0)
         {
            return _loc3_[_loc2_ - 1];
         }
         return null;
      }
      
      public function getDescription(param1:IGameObject) : String
      {
         var _loc2_:Vector.<ItemPropertyValue> = null;
         var _loc3_:ItemPropertyValue = null;
         var _loc4_:* = "";
         var _loc5_:String = null;
         if(this.getCategory(param1) == ItemCategoryEnum.COLOR)
         {
            _loc2_ = this.getProperties(param1);
            if(_loc2_.length > 0)
            {
               _loc4_ = localeService.getText(TanksLocale.TEXT_GARAGE_RESISTANCE_DESCRIPTION_PREFIX) + "\n";
               if(_loc2_.length == 1 && _loc2_[0].getProperty() == ItemGarageProperty.ALL_RESISTANCE)
               {
                  for each(_loc5_ in this.§4!o§)
                  {
                     _loc4_ += localeService.getText(_loc5_) + "\n";
                  }
               }
               else
               {
                  for each(_loc3_ in _loc2_)
                  {
                     _loc4_ += localeService.getText(this.§4!o§[_loc3_.getProperty()]) + "\n";
                  }
               }
               _loc4_ += "\n";
            }
         }
         return _loc4_ + IDescription(param1.adapt(IDescription)).getDescription();
      }
      
      public function §function const import§(param1:ItemCategoryEnum) : void
      {
         this.§override for const§[param1] = true;
      }
      
      public function getUpgradableProperties(param1:IGameObject) : Vector.<UpgradableItemPropertyValue>
      {
         if(param1.hasModel(UpgradableItem))
         {
            return this.§;8§(param1).getUpgradableProperties();
         }
         return null;
      }
      
      private function §;8§(param1:IGameObject) : UpgradableItem
      {
         return UpgradableItem(param1.adapt(UpgradableItem));
      }
      
      public function §break for do§(param1:IGameObject) : Boolean
      {
         return this.§override for const§[this.getCategory(param1)] == true;
      }
      
      public function §false const case§(param1:IGameObject) : Boolean
      {
         return param1 in this.§null var import§;
      }
      
      public function reset() : void
      {
         this.§else for else§ = new Dictionary();
         this.§null var import§ = new Dictionary();
         this.§override for const§ = new Dictionary();
         this.§implements const case§.length = 0;
      }
      
      public function getName(param1:IGameObject) : String
      {
         var _loc2_:String = IDescription(param1.adapt(IDescription)).getName();
         if(this.§else for case§(param1))
         {
            _loc2_ += (localeService.language == "cn" ? "" : " ") + "M" + this.getModificationIndex(param1);
         }
         return _loc2_;
      }
      
      public function getPrice(param1:IGameObject) : int
      {
         if(this.§"I§(param1))
         {
            return GarageKit(param1.adapt(GarageKit)).getPrice();
         }
         return IBuyable(param1.adapt(IBuyable)).getPrice();
      }
      
      public function getTimeLeftInSeconds(param1:IGameObject) : int
      {
         var _loc2_:int = TimePeriod(param1.adapt(TimePeriod)).getTimeLeftInSeconds();
         return _loc2_ > this.§!!G§ ? int(_loc2_ - this.§!!G§) : int(0);
      }
      
      public function §'!I§(param1:IGameObject) : Boolean
      {
         return TimePeriod(param1.adapt(TimePeriod)).isTimeless();
      }
      
      public function getTimeToStartInSeconds(param1:IGameObject) : int
      {
         var _loc2_:int = TimePeriod(param1.adapt(TimePeriod)).getTimeToStartInSeconds();
         return _loc2_ > 0 ? int(_loc2_ + this.§!!G§) : int(0);
      }
      
      private function §do var break§(param1:IGameObject) : Boolean
      {
         var _loc2_:int = TimePeriod(param1.adapt(TimePeriod)).getModelLoadingTimeInMillis();
         return getTimer() > _loc2_ + this.getTimeToStartInSeconds(param1) * 1000;
      }
      
      private function §catch const switch§(param1:IGameObject) : Boolean
      {
         var _loc2_:int = TimePeriod(param1.adapt(TimePeriod)).getTimeLeftInSeconds();
         return _loc2_ > 0 && _loc2_ <= this.§!!G§;
      }
      
      public function §override var§(param1:IGameObject) : Boolean
      {
         var _loc2_:Boolean = TimePeriod(param1.adapt(TimePeriod)).isEnabled();
         return _loc2_ && !this.§catch const switch§(param1) || this.getTimeToStartInSeconds(param1) > 0 && this.§do var break§(param1);
      }
      
      public function isCountable(param1:IGameObject) : Boolean
      {
         if(param1.hasModel(ICountableItem))
         {
            if(ICountableItem(param1.adapt(ICountableItem)).getCount() >= 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §else for case§(param1:IGameObject) : Boolean
      {
         return param1.hasModel(IModification) && IModification(param1.adapt(IModification)).getModificationIndex() >= 0;
      }
      
      public function §in extends§(param1:IGameObject) : Boolean
      {
         return false;
      }
      
      public function §1?§(param1:IGameObject) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.PRESENT;
      }
      
      public function §implements var throw§(param1:IGameObject) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.GIVEN_PRESENT;
      }
      
      public function getCategory(param1:IGameObject) : ItemCategoryEnum
      {
         return IItemCategory(param1.adapt(IItemCategory)).getCategory();
      }
      
      public function canBuy(param1:IGameObject) : Boolean
      {
         if(this.§"I§(param1))
         {
            return GarageKit(param1.adapt(GarageKit)).canBuy();
         }
         return this.isCountable(param1) || !this.§false const case§(param1);
      }
      
      public function getCount(param1:IGameObject) : int
      {
         if(param1.hasModel(ICountableItem))
         {
            return ICountableItem(param1.adapt(ICountableItem)).getCount();
         }
         return 0;
      }
      
      public function §"s§(param1:IGameObject) : IGameObject
      {
         var _loc2_:int = this.getModificationIndex(param1);
         var _loc3_:Vector.<IGameObject> = this.§;h§(param1);
         if(_loc2_ < _loc3_.length - 1)
         {
            return _loc3_[_loc2_ + 1];
         }
         return param1;
      }
      
      public function getModificationIndex(param1:IGameObject) : int
      {
         if(this.§else for case§(param1))
         {
            return IModification(param1.adapt(IModification)).getModificationIndex();
         }
         return -1;
      }
      
      public function §;h§(param1:IGameObject) : Vector.<IGameObject>
      {
         var _loc2_:Vector.<IGameObject> = null;
         var _loc3_:Dictionary = null;
         var _loc4_:int = 0;
         var _loc5_:Long = null;
         var _loc6_:int = 0;
         var _loc7_:IGameObject = null;
         var _loc8_:int = 0;
         var _loc9_:Vector.<IGameObject> = this.§else for else§[param1];
         _loc2_ = param1.space.objects;
         _loc3_ = new Dictionary();
         _loc4_ = 0;
         _loc5_ = IModification(param1.adapt(IModification)).getBaseItemId();
         _loc6_ = 0;
         while(_loc6_ < _loc2_.length)
         {
            _loc7_ = _loc2_[_loc6_];
            if(_loc7_.hasModel(IModification))
            {
               if(this.§finally set if§(IModification(_loc7_.adapt(IModification)).getBaseItemId(),_loc5_))
               {
                  _loc8_ = this.getModificationIndex(_loc7_);
                  _loc3_[_loc8_] = _loc7_;
                  _loc4_++;
               }
            }
            _loc6_++;
         }
         _loc9_ = new Vector.<IGameObject>();
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc9_[_loc6_] = _loc3_[_loc6_];
            _loc6_++;
         }
         this.§else for else§[param1] = _loc9_;
         return _loc9_;
      }
      
      private function §finally set if§(param1:Long, param2:Long) : Boolean
      {
         return param1.high == param2.high && param1.low == param2.low;
      }
      
      private function §use for false§(param1:Vector.<IGameObject>) : void
      {
         var §8!V§:Vector.<IGameObject> = param1;
         var §,R§:Vector.<IGameObject> = null;
         var §`!A§:IGameObject = null;
         var § M§:Function = null;
         var §'!c§:int = 0;
         var §finally const package§:int = 0;
         var §[!$§:Vector.<IGameObject> = null;
         var §7!]§:IGameObject = null;
         var §each var final§:Vector.<IGameObject> = §8!V§;
         if(this.§else for else§ == null)
         {
            this.§else for else§ = new Dictionary();
            §,R§ = new Vector.<IGameObject>();
            for each(§`!A§ in §each var final§)
            {
               if(§`!A§.hasModel(IModification))
               {
                  §,R§.push(§`!A§);
               }
            }
            § M§ = function(param1:IGameObject, param2:IGameObject):int
            {
               var _loc3_:Long = IModification(param1.adapt(IModification)).getBaseItemId();
               var _loc4_:Long = IModification(param2.adapt(IModification)).getBaseItemId();
               return Long.comparator(_loc3_,_loc4_);
            };
            §,R§.sort(§ M§);
            §'!c§ = 0;
            while(§'!c§ < §,R§.length)
            {
               §finally const package§ = §'!c§ + 1;
               while(§finally const package§ < §,R§.length && § M§(§,R§[§'!c§],§,R§[§finally const package§]) == 0)
               {
                  §finally const package§++;
               }
               §[!$§ = new Vector.<IGameObject>(§finally const package§ - §'!c§);
               while(§'!c§ < §finally const package§)
               {
                  §7!]§ = §,R§[§'!c§];
                  §[!$§[IModification(§7!]§.adapt(IModification)).getModificationIndex()] = §7!]§;
                  this.§else for else§[§7!]§] = §[!$§;
                  §'!c§++;
               }
            }
         }
      }
      
      public function §throw set throw§(param1:IGameObject) : int
      {
         return this.§;h§(param1).length;
      }
      
      public function §'2§(param1:IGameObject) : IGameObject
      {
         var _loc2_:IGameObject = null;
         var _loc3_:Vector.<IGameObject> = this.§;h§(param1);
         var _loc4_:int = int(_loc3_.length - 1);
         while(_loc4_ >= 0)
         {
            _loc2_ = _loc3_[_loc4_];
            if(this.§false const case§(_loc2_))
            {
               return _loc2_;
            }
            _loc4_--;
         }
         return null;
      }
      
      public function getPreviewResource(param1:IGameObject) : ImageResource
      {
         return IItem(param1.adapt(IItem)).getPreviewResource();
      }
      
      public function §extends include§(param1:IGameObject) : int
      {
         return IItem(param1.adapt(IItem)).getMinRank();
      }
      
      public function §each var true§(param1:IGameObject) : int
      {
         return IItem(param1.adapt(IItem)).getMaxRank();
      }
      
      public function §false for dynamic§(param1:IGameObject) : IGameObject
      {
         var _loc2_:IGameObject = this.§>!1§(param1);
         if(_loc2_ == param1)
         {
            _loc2_ = this.§"s§(param1);
         }
         return _loc2_;
      }
      
      public function §>!1§(param1:IGameObject) : IGameObject
      {
         var _loc2_:IGameObject = null;
         var _loc3_:IGameObject = null;
         if(userPropertyService.rank < this.§extends include§(param1))
         {
            return param1;
         }
         var _loc4_:Vector.<IGameObject> = this.§;h§(param1);
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:int = _loc5_ - 1;
         while(_loc6_ >= 0)
         {
            _loc3_ = _loc4_[_loc6_];
            if(userPropertyService.rank >= this.§extends include§(_loc3_))
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc6_--;
         }
         return _loc2_;
      }
      
      public function removeItem(param1:IGameObject) : void
      {
         if(this.§false const case§(param1))
         {
            delete this.§null var import§[param1];
         }
      }
      
      public function §"I§(param1:IGameObject) : Boolean
      {
         return this.getCategory(param1) == ItemCategoryEnum.KIT && param1.hasModel(GarageKit) && GarageKit(param1.adapt(GarageKit)).getImage != null;
      }
      
      public function getDiscount(param1:IGameObject) : int
      {
         return IDiscount(param1.adapt(IDiscount)).getDiscountInPercent();
      }
      
      public function getEndDiscountTimer(param1:IGameObject) : CountDownTimer
      {
         return IDiscount(param1.adapt(IDiscount)).getEndDiscountTimer();
      }
      
      public function getPriceWithoutDiscount(param1:IGameObject) : int
      {
         return IBuyable(param1.adapt(IBuyable)).getPriceWithoutDiscount();
      }
      
      public function getPosition(param1:IGameObject) : int
      {
         return IItem(param1.adapt(IItem)).getPosition();
      }
      
      public function mountItem(param1:IGameObject) : void
      {
         var _loc2_:IGameObject = this.§finally const for§(this.getCategory(param1));
         if(_loc2_ == param1)
         {
            return;
         }
         var _loc3_:GarageWindow = garageService.§const set break§();
         if(_loc2_ != null)
         {
            _loc3_.unmountItem(_loc2_);
            this.§implements const case§.splice(this.§implements const case§.indexOf(_loc2_),1);
         }
         _loc3_.mountItem(param1);
         this.§implements const case§.push(param1);
         if(_loc3_.selectedItem == param1)
         {
            _loc3_.itemInfoPanel.updateEquipButton();
         }
      }
      
      public function getProperties(param1:IGameObject) : Vector.<ItemPropertyValue>
      {
         if(param1.hasModel(ItemProperties))
         {
            return ItemProperties(param1.adapt(ItemProperties)).getProperties();
         }
         return null;
      }
      
      public function isUpgrading(param1:IGameObject) : Boolean
      {
         return param1.hasModel(UpgradableItem) && this.§;8§(param1).isUpgrading();
      }
      
      public function getUpgradingProperty(param1:IGameObject) : ItemGarageProperty
      {
         return this.§;8§(param1).getUpgradingProperty();
      }
      
      public function § I§(param1:IGameObject) : Boolean
      {
         return this.§finally const for§(this.getCategory(param1)) == param1;
      }
      
      public function isFullUpgraded(param1:IGameObject) : Boolean
      {
         var _loc2_:ItemPropertyValue = null;
         for each(_loc2_ in this.getProperties(param1))
         {
            if(_loc2_.isUpgradable() && !_loc2_.getUpgradableValue().isFullUpgraded())
            {
               return false;
            }
         }
         return true;
      }
      
      public function hasNextModification(param1:IGameObject) : Boolean
      {
         var _loc2_:Vector.<IGameObject> = this.§;h§(param1);
         return param1 != _loc2_[_loc2_.length - 1];
      }
      
      public function §finally const for§(param1:ItemCategoryEnum) : IGameObject
      {
         var _loc2_:IGameObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§implements const case§.length)
         {
            _loc2_ = this.§implements const case§[_loc3_];
            if(this.getCategory(_loc2_) == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
   }
}

