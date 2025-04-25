package §7"O§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §^!z§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§catch for in§;
      
      private var client:§ d§ = § d§(this);
      
      private var modelId:Long = Long.getLong(118876660,-1267889929);
      
      private var §&!G§:Long = Long.getLong(2126351838,-2114277847);
      
      private var §<2§:ICodec;
      
      public function §^!z§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §catch for in§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §6"Y§
      {
         return §6"Y§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§&!G§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

