package §with const else§
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
   
   public class §9!B§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §override for false§:Long = Long.getLong(1277019392,-355104349);
      
      private var §["e§:ICodec;
      
      private var § P§:ICodec;
      
      private var §const var case§:ICodec;
      
      private var §else for false§:ICodec;
      
      private var §extends super§:Long = Long.getLong(357444731,388730325);
      
      private var §extends for do§:ICodec;
      
      private var §static const set§:ICodec;
      
      private var §include var break§:Long = Long.getLong(130637440,377170052);
      
      private var §continue for static§:ICodec;
      
      private var §'!W§:ICodec;
      
      private var §get else§:ICodec;
      
      private var §#"c§:Long = Long.getLong(56483500,-1445983993);
      
      private var §'b§:ICodec;
      
      private var §4" §:ICodec;
      
      private var §static else§:ICodec;
      
      private var §["=§:ICodec;
      
      private var §override var final§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §9!B§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.network = Network(OSGi.getInstance().getService(INetworker));
      }
      
      public function §if const set§(param1:int, param2:int, param3:int, param4:§finally for false§) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.physTime = param1;
         _loc5_.currentBarrel = param2;
         _loc5_.shotId = param3;
         _loc5_.shotDirection = param4;
         this.network.send("battle;fire;" + JSON.stringify(_loc5_));
      }
      
      public function §if implements§(param1:int, param2:int) : void
      {
         var _loc3_:Object = new Object();
         _loc3_.physTime = param1;
         _loc3_.currentBarrel = param2;
         this.network.send("battle;fire_dummy;" + JSON.stringify(_loc3_));
      }
      
      public function §[!F§(param1:int, param2:int, param3:§finally for false§) : void
      {
         var _loc4_:Object = new Object();
         _loc4_.physTime = param1;
         _loc4_.currentBarrel = param2;
         _loc4_.hitPoint = param3;
         this.network.send("battle;fire_static;" + JSON.stringify(_loc4_));
      }
      
      public function §continue const const§(param1:int, param2:int, param3:ClientObject, param4:§finally for false§, param5:§finally for false§) : void
      {
         var _loc6_:Object = new Object();
         _loc6_.physTime = param1;
         _loc6_.shotId = param2;
         _loc6_.target = param3.id;
         _loc6_.targetPosition = param4;
         _loc6_.hitPoint = param5;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc6_));
      }
   }
}

