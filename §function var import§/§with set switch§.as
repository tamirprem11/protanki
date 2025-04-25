package §function var import§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.protocol.info.TypeCodecInfo;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §with set switch§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§0!g§;
      
      private var client:§const do§ = §const do§(this);
      
      private var modelId:Long = Long.getLong(0,300020016);
      
      private var §5_§:Long = Long.getLong(0,300020047);
      
      private var §,!+§:ICodec;
      
      private var §const var while§:Long = Long.getLong(0,300020048);
      
      private var §4!w§:Long = Long.getLong(0,300020049);
      
      public function §with set switch§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §0!g§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
         this.§,!+§ = this._protocol.getCodec(new TypeCodecInfo(String,false));
      }
      
      protected function getInitParam() : §#!$§
      {
         return §#!$§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§5_§:
               this.client.inviteAlreadyActivated(String(this.§,!+§.decode(param2)));
               break;
            case this.§const var while§:
               this.client.inviteFree();
               break;
            case this.§4!w§:
               this.client.inviteNotFound();
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

