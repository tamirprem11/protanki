package alternativa.tanks.service.notificationcategories
{
   import flash.events.IEventDispatcher;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import projects.tanks.client.panel.model.garage.GarageItemInfo;
   
   public interface INotificationGarageCategoriesService extends IEventDispatcher
   {
      function §null import§(param1:Vector.<GarageItemInfo>) : void;
      
      function §class case§(param1:ItemViewCategoryEnum) : void;
      
      function §const const implements§(param1:ItemViewCategoryEnum) : Boolean;
      
      function §final for get§(param1:ItemViewCategoryEnum) : void;
   }
}

