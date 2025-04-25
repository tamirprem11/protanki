package §extends get§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class § _§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§ s§;
      
      private var client:§each const if§ = §each const if§(this);
      
      private var modelId:Long = Long.getLong(387277533,1853292335);
      
      private var §each const§:Long = Long.getLong(87545380,-265767482);
      
      private var §case for else§:ICodec;
      
      private var §else for with§:ICodec;
      
      private var §break set catch§:ICodec;
      
      private var §-J§:ICodec;
      
      private var §4!>§:Long = Long.getLong(289812713,334160242);
      
      private var §static static§:ICodec;
      
      private var §for var default§:Long = Long.getLong(498560719,475399825);
      
      private var §]!E§:ICodec;
      
      public function § _§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new § s§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §,!U§
      {
         return §,!U§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§each const§:
            case this.§4!>§:
               break;
            case this.§for var default§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

