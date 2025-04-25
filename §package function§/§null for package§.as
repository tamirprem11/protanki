package §package function§
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
   
   public class §null for package§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §override for false§:Long = Long.getLong(1356868511,460931703);
      
      private var §["e§:ICodec;
      
      private var §const var case§:ICodec;
      
      private var §import set break§:ICodec;
      
      private var §extends for null§:ICodec;
      
      private var §with const do§:ICodec;
      
      private var §extends super§:Long = Long.getLong(1432853658,-446317051);
      
      private var §extends for do§:ICodec;
      
      private var §include var break§:Long = Long.getLong(1659660949,-434756778);
      
      private var §continue for static§:ICodec;
      
      private var §'!W§:ICodec;
      
      private var §switch use§:ICodec;
      
      private var §#"c§:Long = Long.getLong(1733814889,1388397267);
      
      private var §'b§:ICodec;
      
      private var §static else§:ICodec;
      
      private var §4" §:ICodec;
      
      private var §["=§:ICodec;
      
      private var §with set function§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §null for package§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.network = Network(OSGi.getInstance().getService(INetworker));
      }
      
      public function §if const set§(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:Object = new Object();
         _loc6_.physTime = param1;
         _loc6_.shotId = param2;
         _loc6_.shotDirectionX = param3;
         _loc6_.shotDirectionY = param4;
         _loc6_.shotDirectionZ = param5;
         this.network.send("battle;fire;" + JSON.stringify(_loc6_));
      }
      
      public function §if implements§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;fire_dummy;" + JSON.stringify(_loc2_));
      }
      
      public function §[!F§(param1:int, param2:int, param3:Vector.<§finally for false§>) : void
      {
         var _loc4_:Object = new Object();
         _loc4_.physTime = param1;
         _loc4_.shotId = param2;
         _loc4_.impactPoints = param3;
         this.network.send("battle;fire_static;" + JSON.stringify(_loc4_));
      }
      
      public function §continue const const§(param1:int, param2:ClientObject, param3:int, param4:§finally for false§, param5:Vector.<§finally for false§>) : void
      {
         var _loc6_:Object = new Object();
         _loc6_.physTime = param1;
         _loc6_.target = param2.id;
         _loc6_.shotId = param3;
         _loc6_.hitPosition = param4;
         _loc6_.impactPoints = param5;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc6_));
      }
   }
}

