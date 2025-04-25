package scpacker.utils
{
   import alternativa.osgi.OSGi;
   import alternativa.types.Long;
   import platform.client.core.general.spaces.loading.dispatcher.types.ObjectsDependencies;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.Resource;
   import platform.client.fp10.core.resource.ResourceInfo;
   import platform.client.fp10.core.type.impl.GameObject;
   import platform.core.general.resource.types.image.ResourceImageParams;
   import platform.core.general.resource.types.imageframe.ResourceImageFrameParams;
   
   public class ResourcesLoader
   {
      private var resourceRegistry:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
      
      public function ResourcesLoader()
      {
         super();
      }
      
      public function makeDependencies(param1:String, param2:int) : ObjectsDependencies
      {
         Model.object = new GameObject(Long.getLong(1,1),null,"ResourceObject",null);
         return new ObjectsDependencies(param2,this.readResources(param1));
      }
      
      private function readResources(param1:String) : Vector.<Resource>
      {
         var _loc11_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Resource = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Long = null;
         var _loc8_:Resource = null;
         var _loc9_:Vector.<Resource> = new Vector.<Resource>();
         var _loc10_:int = 0;
         for each(_loc11_ in _loc2_.resources)
         {
            _loc3_ = this.getResource(this.readResourceInfo(_loc11_));
            _loc4_ = !_loc3_.isLazy && _loc3_.status == null;
            if(_loc4_)
            {
               _loc9_.push(_loc3_);
            }
         }
         return _loc9_;
      }
      
      private function getResource(param1:ResourceInfo) : Resource
      {
         var _loc2_:Long = param1.id;
         if(this.resourceRegistry.isRegistered(_loc2_))
         {
            return this.resourceRegistry.getResource(_loc2_);
         }
         if(!this.resourceRegistry.isTypeClassRegistered(param1.type))
         {
            throw new Error("Unknown resource type");
         }
         var _loc3_:Class = this.resourceRegistry.getResourceClass(param1.type);
         var _loc4_:Resource = null;
         if(param1.resourceParams == null)
         {
            _loc4_ = Resource(new _loc3_(param1));
         }
         else
         {
            _loc4_ = Resource(new _loc3_(param1,param1.resourceParams));
         }
         this.resourceRegistry.registerResource(_loc4_);
         return _loc4_;
      }
      
      private function readResourceInfo(param1:*) : ResourceInfo
      {
         var _loc2_:Long = new Long(param1.idhigh,param1.idlow);
         var _loc3_:int = int(param1.type);
         var _loc4_:Long = new Long(param1.versionhigh,param1.versionlow);
         var _loc5_:Boolean = Boolean(param1.lazy);
         var _loc6_:Object = null;
         if(_loc3_ == 10)
         {
            _loc6_ = new ResourceImageParams(param1.alpha);
         }
         else if(_loc3_ == 11)
         {
            _loc6_ = new ResourceImageFrameParams(param1.fps,param1.height,param1.weight,param1.numFrames);
         }
         return new ResourceInfo(_loc3_,_loc2_,_loc4_,_loc5_,_loc6_);
      }
   }
}

