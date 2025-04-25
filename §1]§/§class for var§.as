package §1]§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.achievements.model.achievements.§continue super§;
   
   public class §class for var§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§="Y§;
      
      private var client:§finally true§ = §finally true§(this);
      
      private var modelId:Long = Long.getLong(0,300110001);
      
      private var §!!%§:Long = Long.getLong(0,300110000);
      
      private var §get var function§:ICodec;
      
      private var §"!j§:Long = Long.getLong(0,300110001);
      
      private var §1"d§:ICodec;
      
      private var §%!^§:ICodec;
      
      private var §native for include§:ICodec;
      
      public function §class for var§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §="Y§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §%!j§
      {
         return §%!j§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§!!%§:
               this.client.activateAchievement(§continue super§(this.§get var function§.decode(param2)));
               break;
            case this.§"!j§:
               this.client.completeAchievement(§continue super§(this.§1"d§.decode(param2)),String(this.§%!^§.decode(param2)),int(this.§native for include§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

