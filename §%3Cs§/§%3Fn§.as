package §<s§
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
   
   public class §?n§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §override for include§:Long = Long.getLong(1226168606,1892142748);
      
      private var §1$§:ICodec;
      
      private var §"t§:ICodec;
      
      private var §;!O§:ICodec;
      
      private var §var for continue§:ICodec;
      
      private var §for for each§:ICodec;
      
      private var §else const break§:Long = Long.getLong(36271653,-1590968991);
      
      private var §try finally§:ICodec;
      
      private var §"!x§:Long = Long.getLong(744810110,-807135961);
      
      private var §]!H§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §?n§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.network = Network(OSGi.getInstance().getService(INetworker));
      }
      
      public function §implements for continue§(param1:int, param2:Vector.<ClientObject>, param3:Vector.<int>, param4:Vector.<§finally for false§>, param5:Vector.<§finally for false§>) : void
      {
         var _loc8_:ClientObject = null;
         var _loc9_:§finally for false§ = null;
         var _loc10_:Object = null;
         var _loc6_:Array = new Array();
         var _loc7_:Array = new Array();
         for each(_loc8_ in param2)
         {
            _loc6_.push(_loc8_.id);
         }
         for each(_loc9_ in param5)
         {
            _loc7_.push(_loc9_);
         }
         _loc10_ = new Object();
         _loc10_.physTime = param1;
         _loc10_.targets = _loc6_;
         _loc10_.targetIncarnations = param3;
         _loc10_.targetPositions = param4;
         _loc10_.hitPositions = _loc7_;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc10_));
      }
      
      public function §use var var§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;start_fire;" + JSON.stringify(_loc2_));
      }
      
      public function §else const implements§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;stop_fire;" + JSON.stringify(_loc2_));
      }
   }
}

