package projects.tanks.client.entrance.model.entrance.registration
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class RegistrationModelBase extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:RegistrationModelServer;
      
      private var client:IRegistrationModelBase = IRegistrationModelBase(this);
      
      private var modelId:Long = Long.getLong(0,300020025);
      
      private var _anchorRegistrationId:Long = Long.getLong(0,300020069);
      
      private var _enteredUidIsBusyId:Long = Long.getLong(0,300020070);
      
      private var _enteredUidIsFreeId:Long = Long.getLong(0,300020071);
      
      private var _enteredUidIsIncorrectId:Long = Long.getLong(0,300020072);
      
      private var _passwordIsIncorrectId:Long = Long.getLong(0,300020073);
      
      private var _registrationFailedId:Long = Long.getLong(0,300020074);
      
      public function RegistrationModelBase()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new RegistrationModelServer(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : RegistrationModelCC
      {
         return RegistrationModelCC(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this._anchorRegistrationId:
               this.client.anchorRegistration();
               break;
            case this._enteredUidIsBusyId:
               break;
            case this._enteredUidIsFreeId:
               this.client.enteredUidIsFree();
               break;
            case this._enteredUidIsIncorrectId:
               this.client.enteredUidIsIncorrect();
               break;
            case this._passwordIsIncorrectId:
               this.client.passwordIsIncorrect();
               break;
            case this._registrationFailedId:
               this.client.registrationFailed();
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

