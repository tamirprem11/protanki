package §?!h§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import §false finally§.§with const§;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.network.command.SpaceCommand;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §8!§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §8g§:Long = Long.getLong(1792558267,422618582);
      
      private var §7!2§:ICodec;
      
      private var §switch set final§:Long = Long.getLong(763612380,736380393);
      
      private var §override var each§:Long = Long.getLong(1605739608,-2116633576);
      
      private var §3! §:ICodec;
      
      private var model:IModel;
      
      public function §8!§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §=#§(param1:§with const§) : void
      {
         ByteArray(this.protocolBuffer.writer).position = 0;
         ByteArray(this.protocolBuffer.writer).length = 0;
         this.§7!2§.encode(this.protocolBuffer,param1);
         ByteArray(this.protocolBuffer.writer).position = 0;
         if(Model.object == null)
         {
            throw new Error("Execute method without model context.");
         }
         var _loc2_:SpaceCommand = new SpaceCommand(Model.object.id,this.§8g§,this.protocolBuffer);
         var _loc3_:IGameObject = Model.object;
         var _loc4_:ISpace = _loc3_.space;
         _loc4_.commandSender.sendCommand(_loc2_);
         this.protocolBuffer.optionalMap.clear();
      }
      
      public function showSettings() : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;showSettings");
      }
      
      public function §0!e§(param1:§throw const catch§) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;showDamageEnabled;" + param1.§switch for package§);
      }
   }
}

