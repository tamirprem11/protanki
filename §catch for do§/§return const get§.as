package §catch for do§
{
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §return const get§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§dynamic static§;
      
      private var client:§-!8§ = §-!8§(this);
      
      private var modelId:Long = Long.getLong(1965338956,1417730743);
      
      private var §%!_§:Long = Long.getLong(1487412361,8128743);
      
      private var §super set dynamic§:ICodec;
      
      private var §&Y§:ICodec;
      
      private var §set var null§:Long = Long.getLong(1849471524,-639146266);
      
      private var §%"4§:ICodec;
      
      private var §finally var var§:ICodec;
      
      private var §=1§:Long = Long.getLong(1134857420,-1224060835);
      
      private var §19§:ICodec;
      
      private var §]"-§:ICodec;
      
      private var §class set final§:Long = Long.getLong(794624341,25869850);
      
      private var §>!I§:ICodec;
      
      private var §continue for§:ICodec;
      
      public function §return const get§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §dynamic static§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §]!V§
      {
         return §]!V§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§%!_§:
               this.client.dropFlag(§finally for false§(this.§super set dynamic§.decode(param2)),§while var const§(this.§&Y§.decode(param2)));
               break;
            case this.§set var null§:
               this.client.flagDelivered(§while var const§(this.§%"4§.decode(param2)),String(this.§finally var var§.decode(param2)));
               break;
            case this.§=1§:
               this.client.flagTaken(String(this.§19§.decode(param2)),§while var const§(this.§]"-§.decode(param2)));
               break;
            case this.§class set final§:
               this.client.returnFlagToBase(§while var const§(this.§>!I§.decode(param2)),String(this.§continue for§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

