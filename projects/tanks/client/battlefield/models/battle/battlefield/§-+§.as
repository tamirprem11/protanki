package projects.tanks.client.battlefield.models.battle.battlefield
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.CollectionCodecInfo;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Float;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.network.command.SpaceCommand;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §-+§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §while set switch§:Long = Long.getLong(312624829,1518890877);
      
      private var §else finally§:ICodec;
      
      private var §while var catch§:Long = Long.getLong(312624829,1518890663);
      
      private var §native for extends§:ICodec;
      
      private var §?!H§:Long = Long.getLong(1789749753,1049490765);
      
      private var §%R§:ICodec;
      
      private var §!B§:ICodec;
      
      private var §final for implements§:Long = Long.getLong(312624829,1518890261);
      
      private var model:IModel;
      
      public function §-+§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this.§else finally§ = this.protocol.getCodec(new CollectionCodecInfo(new TypeCodecInfo(int,false),false,1));
         this.§native for extends§ = this.protocol.getCodec(new TypeCodecInfo(int,false));
         this.§!B§ = this.protocol.getCodec(new TypeCodecInfo(Float,false));
      }
      
      public function §>M§(param1:Vector.<int>) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;dg");
      }
      
      public function §'!M§(param1:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;data_error;" + param1);
      }
      
      public function §break final§() : void
      {
         ByteArray(this.protocolBuffer.writer).position = 0;
         ByteArray(this.protocolBuffer.writer).length = 0;
         ByteArray(this.protocolBuffer.writer).position = 0;
         if(Model.object == null)
         {
            throw new Error("Execute method without model context.");
         }
         var _loc1_:SpaceCommand = new SpaceCommand(Model.object.id,this.§final for implements§,this.protocolBuffer);
         var _loc2_:IGameObject = Model.object;
         var _loc3_:ISpace = _loc2_.space;
         _loc3_.commandSender.sendCommand(_loc1_);
         this.protocolBuffer.optionalMap.clear();
      }
   }
}

