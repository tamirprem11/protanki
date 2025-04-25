package §finally for else§
{
   import §@"A§.§else var try§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §43§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§1!7§;
      
      private var client:§continue const default§ = §continue const default§(this);
      
      private var modelId:Long = Long.getLong(1726782619,1524609945);
      
      private var §'"'§:Long = Long.getLong(205404481,2036669945);
      
      private var §,]§:ICodec;
      
      private var §dynamic final§:ICodec;
      
      private var §return const finally§:Long = Long.getLong(1555095151,929348553);
      
      private var §"d§:ICodec;
      
      private var §catch var in§:Long = Long.getLong(1017385554,-1412933910);
      
      private var §override do§:ICodec;
      
      private var § !m§:ICodec;
      
      private var §while const static§:Long = Long.getLong(1483129213,1398282388);
      
      private var §import const final§:ICodec;
      
      public function §43§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §1!7§(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§'"'§:
               this.client.showQuestWindow(this.§,]§.decode(param2) as Vector.<§case include§>,§else var try§(this.§dynamic final§.decode(param2)));
               break;
            case this.§return const finally§:
               this.client.showQuestWindowWithoutDailyQuests(§else var try§(this.§"d§.decode(param2)));
               break;
            case this.§catch var in§:
               this.client.skipDailyQuest(Long(this.§override do§.decode(param2)),§case include§(this.§ !m§.decode(param2)));
               break;
            case this.§while const static§:
               this.client.takeDailyQuestPrize(Long(this.§import const final§.decode(param2)));
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

