package platform.client.fp10.core.type.impl
{
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.Logger;
   import alternativa.osgi.service.network.INetworkService;
   import alternativa.protocol.IProtocol;
   import alternativa.types.Long;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.model.ObjectUnloadPostListener;
   import platform.client.fp10.core.network.ICommandSender;
   import platform.client.fp10.core.network.connection.ConnectionCloseStatus;
   import platform.client.fp10.core.network.connection.ConnectionConnectParameters;
   import platform.client.fp10.core.network.connection.IConnection;
   import platform.client.fp10.core.network.connection.IProtectionContext;
   import platform.client.fp10.core.network.connection.protection.PrimitiveProtectionContext;
   import platform.client.fp10.core.network.connection.protection.XorBasedProtectionContext;
   import platform.client.fp10.core.network.handler.ISpaceCommandHandler;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.transport.ITransportService;
   import platform.client.fp10.core.type.IGameClass;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import platform.client.fp10.core.type.ISpaceListener;
   
   public class Space implements ISpace
   {
      [Inject]
      public static var logService:LogService;
      
      [Inject]
      public static var messageBoxService:IErrorMessageService;
      
      [Inject]
      public static var networkService:INetworkService;
      
      [Inject]
      public static var transportService:ITransportService;
      
      private static var logger:Logger;
      
      private var _id:Long;
      
      private var objectById:Dictionary = new Dictionary();
      
      private var objectByName:Dictionary = new Dictionary();
      
      private var _objects:Vector.<IGameObject>;
      
      private var connection:IConnection;
      
      private var listeners:Vector.<ISpaceListener>;
      
      public function Space(param1:Long, param2:ISpaceCommandHandler, param3:IProtocol, param4:Boolean)
      {
         super();
         this._id = param1;
         this._objects = new Vector.<IGameObject>();
         logger = logger || logService.getLogger("space");
         this.listeners = new Vector.<ISpaceListener>();
         var _loc5_:IProtectionContext = param4 ? new XorBasedProtectionContext(transportService.hash,param1) : PrimitiveProtectionContext.INSTANCE;
         var _loc6_:GameClass = new GameClass(Long.getLong(0,0),new Vector.<Long>());
         this.createObject(param1,_loc6_,"Space object");
      }
      
      public function getObjectByName(param1:String) : IGameObject
      {
         return this.objectByName[param1];
      }
      
      public function connect(param1:String, param2:Vector.<int>) : void
      {
         this.connection.connect(new ConnectionConnectParameters(param1,param2));
      }
      
      public function close() : void
      {
         this.connection.close(ConnectionCloseStatus.SPACE_CLOSED);
         this.invokeSpaceClosedListeners();
      }
      
      private function invokeSpaceClosedListeners() : void
      {
         var _loc1_:ISpaceListener = null;
         var _loc2_:Vector.<ISpaceListener> = this.listeners.concat();
         for each(_loc1_ in _loc2_)
         {
            _loc1_.spaceClosed();
         }
      }
      
      public function createObject(param1:Long, param2:IGameClass, param3:String) : IGameObject
      {
         var _loc4_:GameObject = null;
         if(this.objectById[param1.low] == null)
         {
            _loc4_ = new GameObject(param1,GameClass(param2),param3,this);
            this.objectById[_loc4_.id.low] = _loc4_;
            this.objectByName[_loc4_.name] = _loc4_;
            this._objects.push(_loc4_);
         }
         return this.objectById[param1.low];
      }
      
      public function destroyObject(param1:Long) : void
      {
         var objectId:Long = param1;
         ;
         var clientObject:GameObject = this.objectById[objectId.low];
         if(clientObject != null)
         {
            try
            {
               this.invokeUnloadListeners(clientObject);
               this.invokeDestructionListeners(clientObject);
               return;
            }
            catch(e:Error)
            {
               processUnloadingError(e,objectId);
               return;
            }
            finally
            {
               this.removeObject(clientObject);
            }
         }
      }
      
      private function invokeUnloadListeners(param1:IGameObject) : void
      {
         var _loc2_:IObjectLoadListener = IObjectLoadListener(param1.event(IObjectLoadListener));
         _loc2_.objectUnloaded();
         ObjectUnloadListener(param1.event(ObjectUnloadListener)).objectUnloaded();
         _loc2_.objectUnloadedPost();
         ObjectUnloadPostListener(param1.event(ObjectUnloadPostListener)).objectUnloadedPost();
      }
      
      private function invokeDestructionListeners(param1:GameObject) : void
      {
         var _loc2_:ISpaceListener = null;
         var _loc3_:Vector.<ISpaceListener> = this.listeners.concat();
         for each(_loc2_ in _loc3_)
         {
            _loc2_.objectDestroyed(param1);
         }
      }
      
      private function processUnloadingError(param1:Error, param2:Long) : void
      {
         throw param1;
      }
      
      private function removeObject(param1:GameObject) : void
      {
         this._objects.splice(this._objects.indexOf(param1),1);
         delete this.objectById[param1.id.low];
         delete this.objectByName[param1.name];
      }
      
      public function getObject(param1:Long) : IGameObject
      {
         return this.objectById[param1.low];
      }
      
      public function get objects() : Vector.<IGameObject>
      {
         return this._objects;
      }
      
      public function get id() : Long
      {
         return this._id;
      }
      
      public function get commandSender() : ICommandSender
      {
         return this.connection;
      }
      
      public function get rootObject() : IGameObject
      {
         return this.getObject(this._id);
      }
      
      public function addEventListener(param1:ISpaceListener) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners.push(param1);
         }
      }
      
      public function removeEventListener(param1:ISpaceListener) : void
      {
         var _loc2_:int = int(this.listeners.indexOf(param1));
         if(_loc2_ != -1)
         {
            this.listeners.splice(_loc2_,1);
         }
      }
      
      public function modelsDataReady(param1:IGameObject) : void
      {
         var _loc2_:ISpaceListener = null;
         var _loc3_:Vector.<ISpaceListener> = this.listeners.concat();
         for each(_loc2_ in _loc3_)
         {
            _loc2_.objectCreated(param1);
         }
      }
      
      public function toString() : String
      {
         return "[Space id=" + this.id + "]";
      }
   }
}

