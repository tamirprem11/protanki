package §do var dynamic§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.network.command.SpaceCommand;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import §super const dynamic§.§-"&§;
   import §super const dynamic§.§if import§;
   
   public class §class const dynamic§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §super var native§:Long = Long.getLong(674088239,-466180297);
      
      private var §const for with§:Long = Long.getLong(1469435049,418614378);
      
      private var §if for throw§:ICodec;
      
      private var §in for extends§:ICodec;
      
      private var §%!L§:ICodec;
      
      private var §do const each§:ICodec;
      
      private var §throw const static§:Long = Long.getLong(27305946,689085087);
      
      private var §[X§:ICodec;
      
      private var §[!U§:Long = Long.getLong(2114337908,577714981);
      
      private var §each var var§:ICodec;
      
      private var §dynamic var var§:ICodec;
      
      private var §each for§:ICodec;
      
      private var §>"C§:Long = Long.getLong(1028282615,1943158798);
      
      private var §include set for§:ICodec;
      
      private var §;"F§:ICodec;
      
      private var §static for while§:ICodec;
      
      private var §2!O§:Long = Long.getLong(785096439,-1657218933);
      
      private var §implements for implements§:ICodec;
      
      private var §?!=§:ICodec;
      
      private var §const for try§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §class const dynamic§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.network = Network(OSGi.getInstance().getService(INetworker));
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §#!h§() : void
      {
         ByteArray(this.protocolBuffer.writer).position = 0;
         ByteArray(this.protocolBuffer.writer).length = 0;
         ByteArray(this.protocolBuffer.writer).position = 0;
         if(Model.object == null)
         {
            throw new Error("Execute method without model context.");
         }
         var _loc1_:SpaceCommand = new SpaceCommand(Model.object.id,this.§super var native§,this.protocolBuffer);
         var _loc2_:IGameObject = Model.object;
         var _loc3_:ISpace = _loc2_.space;
         _loc3_.commandSender.sendCommand(_loc1_);
         this.protocolBuffer.optionalMap.clear();
      }
      
      public function §static for get§(param1:int, param2:int, param3:§if import§, param4:Number) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.physTime = param1;
         _loc5_.specificationID = param2;
         _loc5_.position = param3.position;
         _loc5_.orientation = param3.orientation;
         _loc5_.linearVelocity = param3.linearVelocity;
         _loc5_.angularVelocity = param3.angularVelocity;
         _loc5_.control = param3.control;
         _loc5_.turretDirection = param4;
         this.network.send("battle;fullMove;" + JSON.stringify(_loc5_));
      }
      
      public function §import const true§(param1:Number) : void
      {
         ByteArray(this.protocolBuffer.writer).position = 0;
         ByteArray(this.protocolBuffer.writer).length = 0;
         this.§[X§.encode(this.protocolBuffer,param1);
         ByteArray(this.protocolBuffer.writer).position = 0;
         if(Model.object == null)
         {
            throw new Error("Execute method without model context.");
         }
         var _loc2_:SpaceCommand = new SpaceCommand(Model.object.id,this.§throw const static§,this.protocolBuffer);
         var _loc3_:IGameObject = Model.object;
         var _loc4_:ISpace = _loc3_.space;
         _loc4_.commandSender.sendCommand(_loc2_);
         this.protocolBuffer.optionalMap.clear();
      }
      
      public function §continue for if§(param1:int, param2:int, param3:§if import§) : void
      {
         var _loc4_:Object = new Object();
         _loc4_.physTime = param1;
         _loc4_.specificationID = param2;
         _loc4_.position = param3.position;
         _loc4_.orientation = param3.orientation;
         _loc4_.linearVelocity = param3.linearVelocity;
         _loc4_.angularVelocity = param3.angularVelocity;
         _loc4_.control = param3.control;
         this.network.send("battle;move;" + JSON.stringify(_loc4_));
      }
      
      public function §function implements§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = new Object();
         _loc4_.physTime = param1;
         _loc4_.specificationID = param2;
         _loc4_.control = param3;
         this.network.send("battle;movementControl;" + JSON.stringify(_loc4_));
      }
      
      public function §`4§(param1:int, param2:§-"&§, param3:int) : void
      {
         var _loc4_:Object = new Object();
         _loc4_.physTime = param1;
         _loc4_.angle = param2.angle;
         _loc4_.control = param2.control;
         _loc4_.incarnation = param3;
         this.network.send("battle;rotateTurret;" + JSON.stringify(_loc4_));
      }
      
      public function setReadyToPlace() : void
      {
         this.network.send("battle;readyToPlace");
      }
   }
}

