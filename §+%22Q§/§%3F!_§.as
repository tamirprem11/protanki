package §+"Q§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.models.commons.types.ValidationStatus;
   
   public class §?!_§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§catch throw§;
      
      private var client:§import for var§ = §import for var§(this);
      
      private var modelId:Long = Long.getLong(1543089237,611543143);
      
      private var §<"J§:Long = Long.getLong(317069682,-1647554367);
      
      private var §try set break§:ICodec;
      
      public function §?!_§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §catch throw§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §!!O§
      {
         return §!!O§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§<"J§:
               this.client.validateResult(ValidationStatus(this.§try set break§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

