package §package function§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §case set do§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§null for package§;
      
      private var client:§9z§ = §9z§(this);
      
      private var modelId:Long = Long.getLong(592429654,1339096271);
      
      private var §each const§:Long = Long.getLong(1979897371,-1124194266);
      
      private var §case for else§:ICodec;
      
      private var §5!R§:ICodec;
      
      private var §default null§:ICodec;
      
      private var §^!l§:ICodec;
      
      private var §4!>§:Long = Long.getLong(1470645133,813558546);
      
      private var §static static§:ICodec;
      
      public function §case set do§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §null for package§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §case const while§
      {
         return §case const while§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§each const§:
               break;
            case this.§4!>§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

