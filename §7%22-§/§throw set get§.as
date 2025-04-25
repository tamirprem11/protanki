package §7"-§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §throw set get§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§static var with§;
      
      private var client:§const var extends§ = §const var extends§(this);
      
      private var modelId:Long = Long.getLong(1791035142,-1712503825);
      
      public function §throw set get§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §static var with§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §=!T§
      {
         return §=!T§(initParams[Model.object]);
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

