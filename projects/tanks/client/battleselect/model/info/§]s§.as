package projects.tanks.client.battleselect.model.info
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §]s§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§["c§;
      
      private var client:§?!N§ = §?!N§(this);
      
      private var modelId:Long = Long.getLong(0,300090007);
      
      private var §1!§:Long = Long.getLong(0,300090014);
      
      private var §%M§:Long = Long.getLong(0,300090015);
      
      private var §6S§:Long = Long.getLong(0,300090016);
      
      private var §catch var switch§:ICodec;
      
      private var § K§:Long = Long.getLong(0,300090017);
      
      private var §7U§:Long = Long.getLong(0,300090018);
      
      private var _updateNameId:Long = Long.getLong(0,300090019);
      
      private var §#"H§:ICodec;
      
      private var §2!x§:Long = Long.getLong(0,300090020);
      
      private var §["P§:ICodec;
      
      private var §-"P§:ICodec;
      
      public function §]s§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §["c§(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : §"!;§
      {
         return §"!;§(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§1!§:
               this.client.battleStop();
               break;
            case this.§%M§:
               this.client.fightFailedServerIsHalting();
               break;
            case this.§6S§:
               break;
            case this.§ K§:
               this.client.roundFinish();
               break;
            case this.§7U§:
               this.client.roundStart();
               break;
            case this._updateNameId:
               this.client.updateName(String(this.§#"H§.decode(param2)));
               break;
            case this.§2!x§:
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

