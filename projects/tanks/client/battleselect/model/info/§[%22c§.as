package projects.tanks.client.battleselect.model.info
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §["c§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §=e§:Long = Long.getLong(0,300090013);
      
      private var model:IModel;
      
      public function §["c§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function §+!M§() : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle_select;joinAsSpectator");
      }
   }
}

