package §;"h§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §'=§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§,!=§;
      
      private var client:§if set if§ = §if set if§(this);
      
      private var modelId:Long = Long.getLong(0,300020028);
      
      private var §;w§:Long = Long.getLong(0,300020068);
      
      public function §'=§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §,!=§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §%!r§
      {
         return §%!r§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§;w§:
               this.client.serverHalt();
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

