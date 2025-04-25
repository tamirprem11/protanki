package alternativa.tanks.model.payment
{
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import flash.net.SharedObject;
   import projects.tanks.client.panel.model.payment.IPaymentModelBase;
   import projects.tanks.client.panel.model.payment.PaymentModelBase;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class PaymentModel extends PaymentModelBase implements IPaymentModelBase, IObjectLoadListener, IPayment
   {
      private var clientObject:ClientObject;
      
      private var _accountId:String;
      
      private var _projectId:int;
      
      private var _formId:String;
      
      private var _currentLocaleCurrency:String;
      
      public function PaymentModel()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(IPayment);
         _interfaces.push(IPaymentModelBase);
         _interfaces.push(IObjectLoadListener);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         this.clientObject = param1;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.clientObject = null;
      }
      
      public function setInitData(param1:ClientObject, param2:Array, param3:Array, param4:String, param5:int, param6:String, param7:String) : void
      {
         var _loc10_:int = 0;
         this._accountId = param4;
         this._projectId = param5;
         this._formId = param6;
         this._currentLocaleCurrency = param7;
         var _loc8_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc9_:Vector.<IModel> = _loc8_.getModelsByInterface(IPaymentListener);
         if(_loc9_ != null)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc9_.length)
            {
               (_loc9_[_loc10_] as IPaymentListener).setInitData(param2,param3,param4,param5,param6);
               _loc10_++;
            }
         }
      }
      
      public function setOperators(param1:ClientObject, param2:String, param3:Array) : void
      {
         var _loc6_:int = 0;
         var _loc4_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc5_:Vector.<IModel> = _loc4_.getModelsByInterface(IPaymentListener);
         if(_loc5_ != null)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               (_loc5_[_loc6_] as IPaymentListener).setOperators(param2,param3);
               _loc6_++;
            }
         }
      }
      
      public function setNumbers(param1:ClientObject, param2:int, param3:Array) : void
      {
         var _loc6_:int = 0;
         var _loc4_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc5_:Vector.<IModel> = _loc4_.getModelsByInterface(IPaymentListener);
         if(_loc5_ != null)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               (_loc5_[_loc6_] as IPaymentListener).setNumbers(param2,param3);
               _loc6_++;
            }
         }
      }
      
      public function getData() : void
      {
      }
      
      public function getOperatorsList(param1:String) : void
      {
      }
      
      public function getNumbersList(param1:int) : void
      {
         var _loc2_:SharedObject = IStorageService(OSGi.getInstance().getService(IStorageService)).getStorage();
         _loc2_.data.userOperator = param1;
      }
      
      public function get currentLocaleCurrency() : String
      {
         return this._currentLocaleCurrency;
      }
      
      public function get accountId() : String
      {
         return this._accountId;
      }
      
      public function get projectId() : int
      {
         return this._projectId;
      }
      
      public function get formId() : String
      {
         return this._formId;
      }
   }
}

