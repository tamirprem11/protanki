package §else set if§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.OptionalMap;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §import var if§
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var §package const false§:Long = Long.getLong(1031114541,134796764);
      
      private var model:IModel;
      
      public function §import var if§(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
         this.protocolBuffer = new ProtocolBuffer(_loc2_,_loc2_,new OptionalMap());
      }
      
      public function fit() : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("garage;fit;" + Model.object.name);
      }
   }
}

