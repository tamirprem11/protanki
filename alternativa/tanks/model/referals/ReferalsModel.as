package alternativa.tanks.model.referals
{
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.model.panel.IPanel;
   import projects.tanks.client.panel.model.referals.IReferalsModelBase;
   import projects.tanks.client.panel.model.referals.ReferalsModelBase;
   import projects.tanks.client.panel.model.referals.RefererIncomeData;
   
   public class ReferalsModel extends ReferalsModelBase implements IReferalsModelBase, IObjectLoadListener, IReferals
   {
      private var clientObject:ClientObject;
      
      private var referals:Array;
      
      private var modelRegister:IModelService;
      
      public function ReferalsModel()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(IReferalsModelBase);
         _interfaces.push(IObjectLoadListener);
         _interfaces.push(IReferals);
         this.modelRegister = OSGi.getInstance().getService(IModelService) as IModelService;
      }
      
      public function initObject(param1:ClientObject, param2:String) : void
      {
         this.clientObject = param1;
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         this.clientObject = param1;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.clientObject = null;
      }
      
      public function inviteSentSuccessfuly(param1:ClientObject, param2:Boolean, param3:String) : void
      {
         var _loc4_:IPanel = (this.modelRegister.getModelsByInterface(IPanel) as Vector.<IModel>)[0] as IPanel;
         _loc4_.setInviteSendResult(param2,param3);
      }
      
      public function setRefererIncomeData(param1:ClientObject, param2:Array) : void
      {
         var _loc3_:RefererIncomeData = null;
         var _loc4_:Vector.<IModel> = null;
         var _loc5_:int = 0;
         this.referals = param2;
         for each(_loc3_ in param2)
         {
         }
         _loc4_ = this.modelRegister.getModelsByInterface(IReferalsListener) as Vector.<IModel>;
         if(_loc4_ != null)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               (_loc4_[_loc5_] as IReferalsListener).updateReferalsData(param2);
               _loc5_++;
            }
         }
      }
      
      public function getReferalsData() : void
      {
      }
   }
}

