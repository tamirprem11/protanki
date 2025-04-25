package §catch for do§
{
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.types.Long;
   import §dynamic package§.§]"P§;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §dynamic static§
   {
      private static const §native for function§:RayHit = new RayHit();
      
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §8!p§:Long = Long.getLong(896493825,-1828539754);
      
      private var model:IModel;
      
      private var network:Network = OSGi.getInstance().getService(INetworker) as Network;
      
      public function §dynamic static§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §include var throw§(param1:Tank) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.x = param1.§<J§().state.position.x;
         _loc2_.y = param1.§<J§().state.position.y;
         _loc2_.z = param1.§<J§().state.position.z;
         var _loc3_:Boolean = false;
         if((OSGi.getInstance().getService(BattleService) as BattleService).§try var final§().§`"N§().raycastStatic(param1.§<J§().state.position,new Vector3(0,0,-20000),§]"P§.§return set for§,1,null,§native for function§))
         {
            _loc3_ = true;
         }
         this.network.send("battle;flag_drop;" + JSON.stringify(_loc2_) + ";" + _loc3_.toString());
      }
      
      public function §5"c§(param1:Tank, param2:String) : void
      {
         this.network.send("battle;attempt_to_take_flag;" + param2.toUpperCase());
      }
   }
}

