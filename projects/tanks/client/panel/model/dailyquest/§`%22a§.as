package projects.tanks.client.panel.model.dailyquest
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
   
   public class §`"a§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §function var native§:Long = Long.getLong(721193585,-108838556);
      
      private var §8M§:ICodec;
      
      private var §throw const var§:ICodec;
      
      private var §+!>§:Long = Long.getLong(898481927,1112991605);
      
      private var §1H§:ICodec;
      
      private var §`r§:Long = Long.getLong(663591737,-831307794);
      
      private var §use for use§:ICodec;
      
      private var model:IModel;
      
      public function §`"a§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§8M§ = this.protocol.getCodec(new TypeCodecInfo(Long,false));
         this.§throw const var§ = this.protocol.getCodec(new TypeCodecInfo(int,false));
         this.§1H§ = this.protocol.getCodec(new TypeCodecInfo(Long,false));
         this.§use for use§ = this.protocol.getCodec(new TypeCodecInfo(Long,false));
      }
      
      public function §extends for throw§(param1:Long, param2:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;skipQuestForCrystals;" + param1.low + ";" + param2);
      }
      
      public function §import var const§(param1:Long) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;skipQuestForFree;" + param1.low);
      }
      
      public function takePrize(param1:Long) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;takePrize;" + param1.low);
      }
   }
}

