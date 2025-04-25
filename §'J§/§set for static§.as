package §'J§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §set for static§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§do super§;
      
      private var client:§do const in§ = §do const in§(this);
      
      private var modelId:Long = Long.getLong(0,300090004);
      
      private var §,C§:Long = Long.getLong(0,300090011);
      
      private var §"[§:ICodec;
      
      private var §<3§:Long = Long.getLong(0,300090012);
      
      private var §var set with§:ICodec;
      
      public function §set for static§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §do super§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §true include§
      {
         return §true include§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§,C§:
               break;
            case this.§<3§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

