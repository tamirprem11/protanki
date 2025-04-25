package §0!v§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §return for include§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §override for false§:Long = Long.getLong(158866586,759986797);
      
      private var §["e§:ICodec;
      
      private var §2"W§:Long = Long.getLong(1766359006,1664614075);
      
      private var §@!Y§:ICodec;
      
      private var §return each§:ICodec;
      
      private var §in set const§:Long = Long.getLong(1692205066,-158539970);
      
      private var §static catch§:ICodec;
      
      private var §switch const function§:ICodec;
      
      private var §package const class§:ICodec;
      
      private var §]"4§:ICodec;
      
      private var §]P§:ICodec;
      
      private var §const var import§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §return for include§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.network = Network(OSGi.getInstance().getService(INetworker));
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §if const set§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;fire;" + JSON.stringify(_loc2_));
      }
      
      public function §8[§(param1:int, param2:§finally for false§) : void
      {
         var _loc3_:Object = new Object();
         _loc3_.physTime = param1;
         _loc3_.hitPosition = param2;
         this.network.send("battle;fire_static;" + JSON.stringify(_loc3_));
      }
      
      public function §["!§(param1:int, param2:ClientObject, param3:int, param4:§finally for false§, param5:§finally for false§, param6:§finally for false§) : void
      {
         var _loc7_:Object = new Object();
         _loc7_.physTime = param1;
         _loc7_.target = param2.id;
         _loc7_.incration = param3;
         _loc7_.targetPosition = param4;
         _loc7_.hitPosition = param5;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc7_));
      }
   }
}

