package §super break§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §else var static§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§#!-§;
      
      private var client:§6!F§ = §6!F§(this);
      
      private var modelId:Long = Long.getLong(0,300090028);
      
      private var §,C§:Long = Long.getLong(0,300090034);
      
      private var §"[§:ICodec;
      
      private var §<3§:Long = Long.getLong(0,300090035);
      
      private var §var set with§:ICodec;
      
      private var §do const default§:ICodec;
      
      private var §&!Q§:Long = Long.getLong(0,300090036);
      
      public function §else var static§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §#!-§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §get set with§
      {
         return §get set with§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§,C§:
            case this.§<3§:
               break;
            case this.§&!Q§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

