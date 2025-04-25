package §]l§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §4"7§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §&7§:Long = Long.getLong(315477850,74416950);
      
      private var §final var null§:ICodec;
      
      private var §each var native§:Long = Long.getLong(724350021,-1874612855);
      
      private var §>"H§:ICodec;
      
      private var §dynamic finally§:ICodec;
      
      private var §^&§:ICodec;
      
      private var §with set package§:ICodec;
      
      private var §catch if§:Long = Long.getLong(2132283949,89958307);
      
      private var §throw set do§:ICodec;
      
      private var §6'§:Long = Long.getLong(315880994,956762724);
      
      private var §5^§:ICodec;
      
      private var §with set dynamic§:ICodec;
      
      private var §<F§:ICodec;
      
      private var §!!-§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §4"7§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.network = Network(OSGi.getInstance().getService(INetworker));
      }
      
      public function §#"M§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;reset_target;" + JSON.stringify(_loc2_));
      }
      
      public function § !F§(param1:int, param2:ClientObject, param3:int, param4:§finally for false§) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.physTime = param1;
         _loc5_.target = param2.id;
         _loc5_.incarnation = param3;
         _loc5_.localHitPoint = param4;
         this.network.send("battle;start_fire;" + JSON.stringify(_loc5_));
      }
      
      public function §?!Y§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;stop_fire;" + JSON.stringify(_loc2_));
      }
      
      public function §finally for default§(param1:int, param2:int, param3:§finally for false§, param4:§finally for false§) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.physTime = param1;
         _loc5_.incarnation = param2;
         _loc5_.targetPosition = param3;
         _loc5_.localHitPoint = param4;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc5_));
      }
   }
}

