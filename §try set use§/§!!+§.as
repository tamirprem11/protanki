package §try set use§
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
   
   public class §!!+§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §switch const native§:Long = Long.getLong(1669375812,-973745790);
      
      private var §+H§:ICodec;
      
      private var model:IModel;
      
      public function §!!+§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§+H§ = this.protocol.getCodec(new TypeCodecInfo(Long,false));
      }
      
      public function §extends var include§(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;attempt_to_take_bonus;" + param1);
      }
   }
}

