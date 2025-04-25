package projects.tanks.client.entrance.model.entrance.registration
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class RegistrationModelServer
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var _checkUidId:Long = Long.getLong(0,300020067);
      
      private var _checkUid_uidCodec:ICodec;
      
      private var _registerId:Long = Long.getLong(0,300020068);
      
      private var _register_userUidCodec:ICodec;
      
      private var _register_passwordCodec:ICodec;
      
      private var _register_registeredUrlCodec:ICodec;
      
      private var _register_rememberMeCodec:ICodec;
      
      private var _register_referralHashCodec:ICodec;
      
      private var _register_realNameCodec:ICodec;
      
      private var _register_idNumberCodec:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function RegistrationModelServer(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function checkUid(param1:String) : void
      {
         this.network = Network(OSGi.getInstance().getService(INetworker));
         this.network.send("registration;check_name;" + param1);
      }
      
      public function register(param1:String, param2:String, param3:String, param4:Boolean, param5:String, param6:String, param7:String, param8:String) : void
      {
         this.network.send("registration;registration;" + param1 + ";" + param2 + ";" + param8);
      }
   }
}

