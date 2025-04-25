package §extends get§
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
   
   public class § s§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §override for false§:Long = Long.getLong(448278927,-679337769);
      
      private var §["e§:ICodec;
      
      private var §1a§:ICodec;
      
      private var §!T§:ICodec;
      
      private var §-" §:ICodec;
      
      private var §throw set false§:ICodec;
      
      private var §1c§:ICodec;
      
      private var §if var final§:ICodec;
      
      private var §extends super§:Long = Long.getLong(1791455660,457007003);
      
      private var §extends for do§:ICodec;
      
      private var §1!9§:Long = Long.getLong(747256245,1216344676);
      
      private var §6"`§:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function § s§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.network = Network(OSGi.getInstance().getService(INetworker));
      }
      
      public function §if const set§(param1:int, param2:§finally for false§, param3:Vector.<ClientObject>, param4:Vector.<§finally for false§>, param5:Vector.<int>, param6:Vector.<§finally for false§>, param7:Vector.<§finally for false§>) : void
      {
         var _loc10_:ClientObject = null;
         var _loc11_:§finally for false§ = null;
         var _loc12_:Object = null;
         var _loc8_:Array = new Array();
         var _loc9_:Array = new Array();
         for each(_loc10_ in param3)
         {
            _loc8_.push(_loc10_.id);
         }
         for each(_loc11_ in param4)
         {
            _loc9_.push(_loc11_);
         }
         _loc12_ = new Object();
         _loc12_.physTime = param1;
         _loc12_.staticHitPosition = param2;
         _loc12_.targets = _loc8_;
         _loc12_.hitPositions = _loc9_;
         _loc12_.incarnations = param5;
         _loc12_.targetPositions = param6;
         this.network.send("battle;fire_target;" + JSON.stringify(_loc12_));
      }
      
      public function §if implements§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;fire_dummy;" + JSON.stringify(_loc2_));
      }
      
      public function §?!B§(param1:int) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.physTime = param1;
         this.network.send("battle;start_fire;" + JSON.stringify(_loc2_));
      }
   }
}

