package §<h§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.tanks.model.item.present.PresentItem;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.type.IGameObject;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §-!0§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §6"c§:Long = Long.getLong(1053633131,-938990018);
      
      private var §get for for§:ICodec;
      
      private var model:IModel;
      
      public function §-!0§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§get for for§ = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
      }
      
      public function removePresent(param1:IGameObject) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;removePresent;" + PresentItem(param1.adapt(PresentItem)).getConstructor().id);
      }
   }
}

