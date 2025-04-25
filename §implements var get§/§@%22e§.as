package §implements var get§
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
   
   public class §@"e§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §var const var§:Long = Long.getLong(2095583187,-547646417);
      
      private var §case for each§:ICodec;
      
      private var model:IModel;
      
      public function §@"e§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§case for each§ = this.protocol.getCodec(new TypeCodecInfo(Boolean,false));
      }
      
      public function enable(param1:Boolean) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;updateBattleInviteEnabled;" + param1);
      }
   }
}

