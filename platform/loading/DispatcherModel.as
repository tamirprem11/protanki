package platform.loading
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.Logger;
   import alternativa.types.Long;
   import platform.client.core.general.spaces.loading.dispatcher.DispatcherModelBase;
   import platform.client.core.general.spaces.loading.dispatcher.IDispatcherModelBase;
   import platform.client.core.general.spaces.loading.dispatcher.types.ObjectsData;
   import platform.client.core.general.spaces.loading.dispatcher.types.ObjectsDependencies;
   import platform.client.core.general.spaces.loading.modelconstructors.ModelData;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.resource.BatchResourceLoader;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.errormessage.errors.UnclassifyedError;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import platform.client.fp10.core.type.impl.Space;
   import platform.loading.errors.ModelNotFoundError;
   import platform.loading.errors.ObjectLoadListenerError;
   
   public class DispatcherModel extends DispatcherModelBase implements IDispatcherModelBase
   {
      [Inject]
      public static var logService:LogService;
      
      private static var logger:Logger;
      
      private var modelRegister:ModelRegistry;
      
      private var resourceRegistry:ResourceRegistry;
      
      private var spaceRegistry:SpaceRegistry;
      
      public function DispatcherModel()
      {
         super();
         var _loc1_:OSGi = OSGi.getInstance();
         this.modelRegister = _loc1_.getService(ModelRegistry) as ModelRegistry;
         this.resourceRegistry = _loc1_.getService(ResourceRegistry) as ResourceRegistry;
         this.spaceRegistry = _loc1_.getService(SpaceRegistry) as SpaceRegistry;
         logger = logger || logService.getLogger("dispatcher");
      }
      
      private static function logError(param1:Error) : void
      {
         var _loc2_:String = param1.getStackTrace();
         logger.error(_loc2_);
         showErrorMessage(_loc2_);
      }
      
      private static function showErrorMessage(param1:String) : void
      {
         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new UnclassifyedError(param1));
      }
      
      public function loadDependencies(param1:ObjectsDependencies) : void
      {
         var _loc2_:BatchResourceLoader = null;
         if(param1.callbackId > 0)
         {
            putData(ObjectsDependencies,param1);
         }
         if(param1.resources.length > 0)
         {
            _loc2_ = this.getOrCreateBatchLoader();
            _loc2_.load(param1.resources);
         }
         else if(param1.callbackId > 0)
         {
            if(getData(BatchResourceLoader) == null)
            {
               this.onBatchLoadingComplete();
            }
         }
      }
      
      private function getOrCreateBatchLoader() : BatchResourceLoader
      {
         var _loc1_:BatchResourceLoader = BatchResourceLoader(getData(BatchResourceLoader));
         if(_loc1_ == null)
         {
            _loc1_ = new BatchResourceLoader(getFunctionWrapper(this.onBatchLoadingComplete));
            putData(BatchResourceLoader,_loc1_);
         }
         return _loc1_;
      }
      
      public function loadObjectsData(param1:ObjectsData) : void
      {
         this.loadModelData(param1);
         this.notifyLoadListeners(param1.objects);
      }
      
      private function loadModelData(param1:ObjectsData) : void
      {
         var _loc2_:IGameObject = null;
         var _loc3_:int = 0;
         var _loc4_:ModelData = null;
         var _loc5_:IModel = null;
         var _loc6_:Object = null;
         var _loc7_:Vector.<ModelData> = param1.modelsData;
         var _loc8_:ISpace = this.spaceRegistry.currentSpace;
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_.length)
         {
            _loc2_ = _loc8_.getObject(Long(_loc7_[_loc9_].data));
            _loc9_++;
            _loc3_ = _loc9_;
            while(_loc3_ < _loc7_.length && !(_loc7_[_loc3_].data is Long))
            {
               _loc3_++;
            }
            while(_loc9_ < _loc3_)
            {
               _loc4_ = _loc7_[_loc9_];
               _loc5_ = this.modelRegister.getModel(_loc4_.id);
               if(_loc5_ == null)
               {
                  logError(new ModelNotFoundError(_loc8_.id,_loc2_.id,_loc4_.id));
               }
               else
               {
                  _loc6_ = _loc4_.data;
                  if(_loc6_ != null)
                  {
                     Model.object = _loc2_;
                     _loc5_.putInitParams(_loc6_);
                     Model.popObject();
                  }
               }
               _loc9_++;
            }
         }
      }
      
      private function notifyLoadListeners(param1:Vector.<IGameObject>) : void
      {
         var object:IGameObject = null;
         object = null;
         var objects:Vector.<IGameObject> = param1;
         for each(object in objects)
         {
            try
            {
               this.notifyObjectLoadListeners(object);
            }
            catch(e:Error)
            {
               logError(new ObjectLoadListenerError(spaceRegistry.currentSpace.id,object.id,e));
            }
         }
      }
      
      private function notifyObjectLoadListeners(param1:IGameObject) : void
      {
         var _loc2_:IObjectLoadListener = IObjectLoadListener(param1.event(IObjectLoadListener));
         _loc2_.objectLoaded();
         ObjectLoadListener(param1.event(ObjectLoadListener)).objectLoaded();
         _loc2_.objectLoadedPost();
         ObjectLoadPostListener(param1.event(ObjectLoadPostListener)).objectLoadedPost();
         Space(this.spaceRegistry.currentSpace).modelsDataReady(param1);
      }
      
      public function unloadObjects(param1:Vector.<IGameObject>) : void
      {
         var _loc2_:IGameObject = null;
         var _loc3_:ISpace = Model.object.space;
         for each(_loc2_ in param1)
         {
            _loc3_.destroyObject(_loc2_.id);
         }
      }
      
      public function onBatchLoadingComplete() : void
      {
         var _loc1_:ObjectsDependencies = ObjectsDependencies(clearData(ObjectsDependencies));
         server.dependeciesLoaded(_loc1_.callbackId);
         clearData(BatchResourceLoader);
      }
   }
}

