package projects.tanks.client.garage.models.garage
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
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.network.command.SpaceCommand;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class GarageModelServer
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var _itemBoughtId:Long = Long.getLong(0,300040000);
      
      private var _itemBought_lightItemCodec:ICodec;
      
      private var _itemBought_countCodec:ICodec;
      
      private var _itemBought_expectedPriceCodec:ICodec;
      
      private var _itemMountedId:Long = Long.getLong(0,300040001);
      
      private var _itemMounted_lightItemCodec:ICodec;
      
      private var _kitBoughtId:Long = Long.getLong(0,300040002);
      
      private var _kitBought_lightItemCodec:ICodec;
      
      private var _kitBought_expectedPriceCodec:ICodec;
      
      private var _nextModificationBoughtId:Long = Long.getLong(0,300040003);
      
      private var _nextModificationBought_oldLightItemCodec:ICodec;
      
      private var _nextModificationBought_expectedPriceCodec:ICodec;
      
      private var _readyToReloadId:Long = Long.getLong(0,300040004);
      
      private var model:IModel;
      
      public function GarageModelServer(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
         this._itemBought_lightItemCodec = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
         this._itemBought_countCodec = this.protocol.getCodec(new TypeCodecInfo(int,false));
         this._itemBought_expectedPriceCodec = this.protocol.getCodec(new TypeCodecInfo(int,false));
         this._itemMounted_lightItemCodec = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
         this._kitBought_lightItemCodec = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
         this._kitBought_expectedPriceCodec = this.protocol.getCodec(new TypeCodecInfo(int,false));
         this._nextModificationBought_oldLightItemCodec = this.protocol.getCodec(new TypeCodecInfo(IGameObject,false));
         this._nextModificationBought_expectedPriceCodec = this.protocol.getCodec(new TypeCodecInfo(int,false));
      }
      
      public function itemBought(param1:IGameObject, param2:int, param3:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;try_buy_item;" + param1.name + ";" + param2);
      }
      
      public function itemMounted(param1:IGameObject) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;try_mount_item;" + param1.name);
      }
      
      public function kitBought(param1:IGameObject, param2:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;kitBought;" + param1.name);
      }
      
      public function nextModificationBought(param1:IGameObject, param2:int) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;try_buy_item;" + param1.name + ";" + 1);
      }
      
      public function readyToReload() : void
      {
         ByteArray(this.protocolBuffer.writer).position = 0;
         ByteArray(this.protocolBuffer.writer).length = 0;
         ByteArray(this.protocolBuffer.writer).position = 0;
         if(Model.object == null)
         {
            throw new Error("Execute method without model context.");
         }
         var _loc1_:SpaceCommand = new SpaceCommand(Model.object.id,this._readyToReloadId,this.protocolBuffer);
         var _loc2_:IGameObject = Model.object;
         var _loc3_:ISpace = _loc2_.space;
         _loc3_.commandSender.sendCommand(_loc1_);
         this.protocolBuffer.optionalMap.clear();
      }
   }
}

