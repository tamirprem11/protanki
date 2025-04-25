package §static include§
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
   
   public class §continue const if§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §null switch§:Long = Long.getLong(304771021,-505618508);
      
      private var §>!+§:ICodec;
      
      private var §?!?§:Long = Long.getLong(119662358,318565694);
      
      private var §override for var§:ICodec;
      
      private var §null var var§:ICodec;
      
      private var §[d§:Long = Long.getLong(193816297,2141719739);
      
      private var §'"8§:ICodec;
      
      private var §6U§:ICodec;
      
      private var § "M§:ICodec;
      
      private var §%"H§:ICodec;
      
      private var §%"2§:ICodec;
      
      private var §try for implements§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function §continue const if§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.network = Network(OSGi.getInstance().getService(INetworker));
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §9"i§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;fire;" + JSON.stringify(_loc2_));
      }
      
      public function §class const var§(param1:int, param2:§finally for false§, param3:Vector.<String>, param4:Vector.<Number>) : void
      {
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc5_:Array = new Array();
         var _loc6_:Array = new Array();
         for each(_loc7_ in param3)
         {
            _loc5_.push(_loc7_);
         }
         for each(_loc8_ in param4)
         {
            _loc6_.push(_loc8_);
         }
         _loc9_ = new Object();
         _loc9_.physTime = param1;
         _loc9_.hitPoint = param2;
         _loc9_.splashTargetIds = _loc5_;
         _loc9_.splashTargetDistances = _loc6_;
         this.network.send("battle;fire_static;" + JSON.stringify(_loc9_));
      }
      
      public function §get var var§(param1:int, param2:§finally for false§, param3:ClientObject, param4:int, param5:§finally for false§, param6:§finally for false§, param7:Vector.<String>, param8:Vector.<Number>) : void
      {
         var _loc11_:String = null;
         var _loc12_:Number = NaN;
         var _loc13_:Object = null;
         var _loc9_:Array = new Array();
         var _loc10_:Array = new Array();
         for each(_loc11_ in param7)
         {
            _loc9_.push(_loc11_);
         }
         for each(_loc12_ in param8)
         {
            _loc10_.push(_loc12_);
         }
         _loc13_ = new Object();
         _loc13_.physTime = param1;
         _loc13_.relativeHitPoint = param2;
         _loc13_.target = param3.id;
         _loc13_.targetIncarnation = param4;
         _loc13_.targetPosition = param5;
         _loc13_.hitPointWorld = param6;
         _loc13_.splashTargetIds = _loc9_;
         _loc13_.splashTargetDistances = _loc10_;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc13_));
      }
   }
}

