package alternativa.tanks.service.notificationcategories
{
   import flash.events.EventDispatcher;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import projects.tanks.client.panel.model.garage.GarageItemInfo;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class §include for return§ extends EventDispatcher implements INotificationGarageCategoriesService
   {
      [Inject]
      public static var storageService:IStorageService;
      
      private static const §break const while§:String = "NEW_ITEM_NOTIFICATION_IN_CATEGORY";
      
      public function §include for return§()
      {
         super();
      }
      
      public function §null import§(param1:Vector.<GarageItemInfo>) : void
      {
         var _loc2_:ItemViewCategoryEnum = null;
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1[_loc4_].itemViewCategory;
            if(!this.§const const implements§(_loc2_))
            {
               this.§>V§(_loc2_);
            }
            _loc4_++;
         }
         dispatchEvent(new NotificationGarageCategoriesEvent(NotificationGarageCategoriesEvent.NOTIFICATION_CHANGE));
      }
      
      private function §>V§(param1:ItemViewCategoryEnum) : void
      {
         storageService.getStorage().data[this.§true null§(param1)] = true;
      }
      
      public function §final for get§(param1:ItemViewCategoryEnum) : void
      {
         storageService.getStorage().data[this.§true null§(param1)] = false;
      }
      
      public function §const const implements§(param1:ItemViewCategoryEnum) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = this.§true null§(param1);
         if(storageService.getStorage().data.hasOwnProperty(_loc3_))
         {
            _loc2_ = Boolean(storageService.getStorage().data[_loc3_]);
         }
         return _loc2_;
      }
      
      private function §true null§(param1:ItemViewCategoryEnum) : String
      {
         return §break const while§ + param1.value;
      }
      
      public function §class case§(param1:ItemViewCategoryEnum) : void
      {
         this.§>V§(param1);
      }
   }
}

