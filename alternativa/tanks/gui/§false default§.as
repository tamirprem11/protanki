package alternativa.tanks.gui
{
   import flash.events.IEventDispatcher;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   
   public interface §false default§ extends IEventDispatcher
   {
      function mountItem(param1:IGameObject) : void;
      
      function unmountItem(param1:IGameObject) : void;
      
      function updateDiscount(param1:IGameObject) : void;
      
      function §@"F§() : IGameObject;
      
      function §<`§() : ItemInfoPanel;
      
      function addItemToMarket(param1:IGameObject) : void;
      
      function §package set package§(param1:IGameObject) : void;
      
      function removeItemFromStore(param1:IGameObject) : void;
      
      function removeItemFromDepot(param1:IGameObject) : void;
      
      function §&!l§() : Vector.<§-u§>;
      
      function showCategory(param1:ItemViewCategoryEnum) : void;
   }
}

