package scpacker.server.models.inventory
{
   import §>P§.§class var return§;
   import §@!p§.§'O§;
   import §@!p§.§'_§;
   import §@!p§.§case var class§;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import flash.utils.Dictionary;
   
   public class ServerInventoryModel
   {
      private var inventoryModel:§'O§;
      
      private var inventoryItemModel:§'_§;
      
      private var modelsService:IModelService;
      
      private var _objects:Dictionary;
      
      public function ServerInventoryModel()
      {
         super();
      }
      
      public function init() : void
      {
         this.modelsService = IModelService(OSGi.getInstance().getService(IModelService));
         this.inventoryModel = §'O§(this.modelsService.getModelsByInterface(§class var return§)[0]);
         this.inventoryItemModel = §'_§(this.modelsService.getModelsByInterface(§case var class§)[0]);
         this._objects = new Dictionary();
      }
      
      public function initInventory(param1:Array) : void
      {
         var _loc2_:ServerInventoryData = null;
         var _loc3_:ClientObject = null;
         this.inventoryModel.objectLoaded(null);
         for each(_loc2_ in param1)
         {
            _loc3_ = this.getClientObject(_loc2_.id);
            this.inventoryItemModel.initObject(_loc3_,null,_loc2_.count,_loc2_.itemEffectTime,_loc2_.slotId,_loc2_.itemRestSec);
            this._objects[_loc2_.id] = _loc3_;
         }
      }
      
      public function updateCount(param1:String, param2:int) : void
      {
         this.inventoryItemModel.updateCount(this._objects[param1],param2);
      }
      
      public function activateItem(param1:String, param2:int, param3:Boolean = false) : void
      {
         this.inventoryItemModel.activated(this._objects[param1],param2,param3);
      }
      
      private function getClientObject(param1:String) : ClientObject
      {
         return new ClientObject(param1,null,param1,null);
      }
   }
}

