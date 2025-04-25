package alternativa.tanks.model.user
{
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import flash.utils.Dictionary;
   import projects.tanks.client.panel.model.IUserDataModelBase;
   import projects.tanks.client.panel.model.UserDataModelBase;
   
   public class UserDataModel extends UserDataModelBase implements IUserDataModelBase, IObjectLoadListener, IUserData
   {
      private var clientObject:ClientObject;
      
      private var data:Dictionary;
      
      private var _userId:String;
      
      private var _userName:String;
      
      public function UserDataModel()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(IUserData);
         _interfaces.push(IObjectLoadListener);
         _interfaces.push(IUserDataModelBase);
         this.data = new Dictionary(false);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         this.clientObject = param1;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.clientObject = null;
      }
      
      public function initObject(param1:ClientObject, param2:String, param3:String) : void
      {
         this._userId = param3;
         this._userName = param2;
      }
      
      public function setUserData(param1:ClientObject, param2:String, param3:String, param4:int) : void
      {
         var _loc7_:int = 0;
         this.data[param2] = new UserData(param2,param3,param4);
         var _loc5_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc6_:Vector.<IModel> = _loc5_.getModelsByInterface(IUserDataListener);
         if(_loc6_ != null)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc7_++;
            }
         }
      }
      
      public function getData(param1:String) : UserData
      {
         var _loc2_:UserData = null;
         if(this.data[param1] != null)
         {
            _loc2_ = this.data[param1];
         }
         return _loc2_;
      }
      
      public function get userId() : String
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}

