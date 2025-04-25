package projects.tanks.client.battleselect.model.item
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class BattleItemModelBase extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:BattleItemModelServer;
      
      private var client:IBattleItemModelBase = IBattleItemModelBase(this);
      
      private var modelId:Long = Long.getLong(0,300090008);
      
      private var _madePrivateId:Long = Long.getLong(0,300090021);
      
      private var _updateNameId:Long = Long.getLong(0,300090022);
      
      private var _updateName_newNameCodec:ICodec;
      
      private var _updateSuspiciousId:Long = Long.getLong(0,300090023);
      
      private var _updateSuspicious_suspiciousCodec:ICodec;
      
      public function BattleItemModelBase()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new BattleItemModelServer(IModel(this));
         var _loc1_:ModelRegistry = ModelRegistry(OSGi.getInstance().getService(ModelRegistry));
      }
      
      protected function getInitParam() : BattleItemCC
      {
         return BattleItemCC(initParams[Model.object]);
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this._madePrivateId:
               this.client.madePrivate();
               break;
            case this._updateNameId:
               this.client.updateName(String(this._updateName_newNameCodec.decode(param2)));
               break;
            case this._updateSuspiciousId:
               this.client.updateSuspicious(Boolean(this._updateSuspicious_suspiciousCodec.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

