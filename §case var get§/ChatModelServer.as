package §case var get§
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
   
   public class ChatModelServer
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var _sendMessageId:Long = Long.getLong(339805286,174227780);
      
      private var §false for false§:ICodec;
      
      private var §5"§:ICodec;
      
      private var model:IModel;
      
      public function ChatModelServer(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§false for false§ = this.protocol.getCodec(new TypeCodecInfo(String,false));
         this.§5"§ = this.protocol.getCodec(new TypeCodecInfo(Boolean,false));
      }
      
      public function sendMessage(param1:String, param2:Boolean) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;chat;" + param1 + ";" + param2);
      }
   }
}

