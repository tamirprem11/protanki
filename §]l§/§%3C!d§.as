package §]l§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §<!d§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§4"7§;
      
      private var client:§return const with§ = §return const with§(this);
      
      private var modelId:Long = Long.getLong(1645686167,1474428435);
      
      private var §&7§:Long = Long.getLong(1426613749,-669664322);
      
      private var §each var native§:Long = Long.getLong(387341675,1817286639);
      
      private var §switch const do§:ICodec;
      
      private var §9"J§:ICodec;
      
      private var §`6§:Long = Long.getLong(877312902,1109359872);
      
      public function §<!d§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §4"7§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §with set static§
      {
         return §with set static§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§&7§:
            case this.§each var native§:
               break;
            case this.§`6§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

