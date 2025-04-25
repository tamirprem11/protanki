package §super for switch§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class §switch for finally§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§package const catch§;
      
      private var client:§<" § = §<" §(this);
      
      private var modelId:Long = Long.getLong(0,300090003);
      
      private var §null set false§:Long = Long.getLong(0,300090008);
      
      private var §include var catch§:ICodec;
      
      private var §`"0§:Long = Long.getLong(0,300090009);
      
      private var §var const class§:Long = Long.getLong(0,300090010);
      
      private var §continue for var§:ICodec;
      
      private var §if var const§:ICodec;
      
      public function §switch for finally§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §package const catch§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §implements const package§
      {
         return §implements const package§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§null set false§:
               this.client.addUser(BattleInfoUser(this.§include var catch§.decode(param2)));
               break;
            case this.§`"0§:
               this.client.§?a§();
               break;
            case this.§var const class§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

