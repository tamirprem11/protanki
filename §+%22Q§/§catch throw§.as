package §+"Q§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §catch throw§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §@g§:Long = Long.getLong(668941246,-1113168476);
      
      private var §3!g§:ICodec;
      
      private var model:IModel;
      
      public function §catch throw§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§3!g§ = this.protocol.getCodec(new TypeCodecInfo(String,false));
      }
      
      public function §6^§(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;validateUid;" + param1);
      }
   }
}

