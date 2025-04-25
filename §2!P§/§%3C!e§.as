package §2!P§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §<!e§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§with final§;
      
      private var client:§native set throw§ = §native set throw§(this);
      
      private var modelId:Long = Long.getLong(923418047,-17313881);
      
      public function §<!e§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §with final§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §`"7§
      {
         return §`"7§(initParams[Model.object]);
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

