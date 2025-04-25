package §try include§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §extends const class§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§>"f§;
      
      private var client:§4!<§ = §4!<§(this);
      
      private var modelId:Long = Long.getLong(2120141642,699496177);
      
      private var §try for each§:Long = Long.getLong(1609604139,228512172);
      
      private var §"T§:ICodec;
      
      private var §<"3§:Long = Long.getLong(1853038031,-1082989884);
      
      private var §6"0§:ICodec;
      
      public function §extends const class§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §>"f§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §]"G§
      {
         return §]"G§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§try for each§:
               break;
            case this.§<"3§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

