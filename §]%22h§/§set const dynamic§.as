package §]"h§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §set const dynamic§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§final var for§;
      
      private var client:§1I§ = §1I§(this);
      
      private var modelId:Long = Long.getLong(170467452,-1685189911);
      
      private var §default const switch§:Long = Long.getLong(741262612,-1895966548);
      
      private var §dynamic set do§:ICodec;
      
      private var §each const§:Long = Long.getLong(1921998262,-1791534114);
      
      private var §case for else§:ICodec;
      
      private var §else for with§:ICodec;
      
      private var §if try§:ICodec;
      
      private var §[!g§:ICodec;
      
      private var §<!7§:ICodec;
      
      private var §package import§:Long = Long.getLong(247034803,-90734157);
      
      private var §switch const class§:ICodec;
      
      public function §set const dynamic§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §final var for§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §function var class§
      {
         return §function var class§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§default const switch§:
            case this.§each const§:
               break;
            case this.§package import§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

