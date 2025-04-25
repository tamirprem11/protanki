package §<h§
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
   import platform.client.fp10.core.type.IGameObject;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §8B§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §false if§:Long = Long.getLong(169296918,-2003348677);
      
      private var §6!e§:ICodec;
      
      private var §98§:ICodec;
      
      private var §3e§:ICodec;
      
      private var §'s§:ICodec;
      
      private var model:IModel;
      
      public function §8B§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§6!e§ = this.protocol.getCodec(new TypeCodecInfo(String,false));
         this.§98§ = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
         this.§3e§ = this.protocol.getCodec(new TypeCodecInfo(String,false));
         this.§'s§ = this.protocol.getCodec(new TypeCodecInfo(int,false));
      }
      
      public function §]"9§(param1:String, param2:IGameObject, param3:String, param4:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;purchasePresent;" + param1 + ";" + param2.name + ";" + param3);
      }
   }
}

