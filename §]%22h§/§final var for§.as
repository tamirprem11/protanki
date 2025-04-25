package §]"h§
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
   
   public class §final var for§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §<"h§:Long = Long.getLong(1850967873,1410393465);
      
      private var §]!w§:Long = Long.getLong(665718601,863056095);
      
      private var §package static§:ICodec;
      
      private var §7m§:ICodec;
      
      private var §static in§:ICodec;
      
      private var §use set for§:ICodec;
      
      private var §3!c§:ICodec;
      
      private var §false switch§:ICodec;
      
      private var §include for true§:ICodec;
      
      private var §+"]§:Long = Long.getLong(384666897,-1041026192);
      
      private var §break include§:ICodec;
      
      private var §[!]§:Long = Long.getLong(1060379432,313263560);
      
      private var §catch each§:ICodec;
      
      private var §catch get§:ICodec;
      
      private var §9!?§:ICodec;
      
      private var §var include§:ICodec;
      
      private var §=!^§:ICodec;
      
      private var §finally var with§:ICodec;
      
      private var §null for return§:ICodec;
      
      private var §1!A§:Long = Long.getLong(717480200,-1898093994);
      
      private var model:IModel;
      
      private var network:Network = OSGi.getInstance().getService(INetworker) as Network;
      
      public function §final var for§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
      }
      
      public function §`m§() : void
      {
         this.network.send("battle;activate_manual_targeting");
      }
      
      public function §""8§(param1:int, param2:§finally for false§, param3:ClientObject, param4:§finally for false§, param5:int, param6:§finally for false§, param7:§finally for false§) : void
      {
         var _loc8_:Object = new Object();
         _loc8_.physTime = param1;
         _loc8_.staticHitPosition = param2;
         _loc8_.target = param3 != null ? param3.id : null;
         _loc8_.hitPoint = param4;
         _loc8_.incarnation = param5;
         _loc8_.targetPosition = param6;
         _loc8_.targetPositionGlobal = param7;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc8_));
      }
      
      public function §extends const package§(param1:int) : void
      {
         this.network.send("battle;begin_enegry_drain;" + param1);
      }
      
      public function §4!c§(param1:int, param2:§finally for false§, param3:ClientObject, param4:§finally for false§, param5:int, param6:§finally for false§, param7:§finally for false§) : void
      {
         var _loc8_:Object = new Object();
         _loc8_.physTime = param1;
         _loc8_.staticHitPosition = param2;
         _loc8_.target = param3 != null ? param3.id : null;
         _loc8_.hitPoint = param4;
         _loc8_.incarnation = param5;
         _loc8_.targetPosition = param6;
         _loc8_.targetPositionGlobal = param7;
         this.network.send("battle;quick_shot_shaft;" + JSON.stringify(_loc8_));
      }
      
      public function §super for break§() : void
      {
         this.network.send("battle;stop_manual_targeting");
      }
   }
}

