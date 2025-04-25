package alternativa.tanks.service.delaymountcategory
{
   import §4"P§.§false const dynamic§;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.service.item.ItemService;
   import controls.timer.CountDownTimer;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   
   public class §0"e§ implements IDelayMountCategoryService
   {
      [Inject]
      public static var itemService:ItemService;
      
      [Inject]
      public static var logService:LogService;
      
      private var timers:Dictionary = new Dictionary();
      
      public function §0"e§()
      {
         super();
      }
      
      public function §function return§(param1:IGameObject) : CountDownTimer
      {
         var _loc2_:ItemCategoryEnum = itemService.getCategory(param1);
         return this.timers[_loc2_];
      }
      
      public function §#!=§(param1:§false const dynamic§) : void
      {
         this.§2b§(ItemCategoryEnum.ARMOR,param1.delayMountArmorInSec);
         this.§2b§(ItemCategoryEnum.WEAPON,param1.delayMountWeaponInSec);
         this.§2b§(ItemCategoryEnum.COLOR,param1.delayMountColorInSec);
      }
      
      private function §2b§(param1:ItemCategoryEnum, param2:int) : void
      {
         var _loc3_:CountDownTimer = new CountDownTimer();
         _loc3_.start(param2 * 1000 + getTimer());
         this.timers[param1] = _loc3_;
      }
      
      public function §static set dynamic§() : void
      {
         var _loc1_:CountDownTimer = null;
         for each(_loc1_ in this.timers)
         {
            if(_loc1_ != null)
            {
               _loc1_.destroy();
            }
         }
         delete this.timers[ItemCategoryEnum.ARMOR];
         delete this.timers[ItemCategoryEnum.COLOR];
         delete this.timers[ItemCategoryEnum.WEAPON];
      }
      
      public function §var const if§() : void
      {
         var _loc1_:CountDownTimer = null;
         for each(_loc1_ in this.timers)
         {
            if(_loc1_ != null)
            {
               _loc1_.stop();
            }
         }
      }
   }
}

