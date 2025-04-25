package §false const return§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §native break§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§continue set null§;
      
      private var client:§case for default§ = §case for default§(this);
      
      private var modelId:Long = Long.getLong(1099120188,-904226430);
      
      public function §native break§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §continue set null§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §use for class§
      {
         return §use for class§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         if(Boolean(0))
         {
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

