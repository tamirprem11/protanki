package §`!D§
{
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class §7#§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§?!0§;
      
      private var client:§finally var catch§ = §finally var catch§(this);
      
      private var modelId:Long = Long.getLong(0,300090027);
      
      private var §null set false§:Long = Long.getLong(0,300090029);
      
      private var §include var catch§:ICodec;
      
      private var §each package§:ICodec;
      
      private var §`"0§:Long = Long.getLong(0,300090030);
      
      private var §&!Q§:Long = Long.getLong(0,300090031);
      
      private var §]"I§:Long = Long.getLong(0,300090032);
      
      private var §,"`§:ICodec;
      
      private var §break get§:ICodec;
      
      private var §package var default§:Long = Long.getLong(0,300090033);
      
      private var §extends var each§:ICodec;
      
      private var §switch const static§:ICodec;
      
      public function §7#§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §?!0§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §set each§
      {
         return §set each§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§null set false§:
               this.client.addUser(BattleInfoUser(this.§include var catch§.decode(param2)),§while var const§(this.§each package§.decode(param2)));
               break;
            case this.§`"0§:
               this.client.§?a§();
               break;
            case this.§&!Q§:
               this.client.swapTeams();
               break;
            case this.§]"I§:
               this.client.updateTeamScore(§while var const§(this.§,"`§.decode(param2)),int(this.§break get§.decode(param2)));
               break;
            case this.§package var default§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

