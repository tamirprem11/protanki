package §return set if§
{
   import alternativa.osgi.OSGi;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   
   public class §get const switch§ extends Model
   {
      private var _protocol:IProtocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      
      protected var server:§const set with§;
      
      private var client:§set final§ = §set final§(this);
      
      private var modelId:Long = Long.getLong(1044301282,-2025301046);
      
      private var §1>§:Long = Long.getLong(182699568,659372466);
      
      private var §implements for each§:Long = Long.getLong(182698837,-1030515090);
      
      public function §get const switch§()
      {
         super();
         this.initCodecs();
      }
      
      protected function initCodecs() : void
      {
         this.server = new §const set with§(IModel(this));
      }
      
      override public function invoke(param1:Long, param2:ProtocolBuffer) : void
      {
         switch(param1)
         {
            case this.§1>§:
               this.client.notifyDailyQuestCompleted();
               break;
            case this.§implements for each§:
               this.client.notifyDailyQuestGenerated();
         }
      }
      
      override public function get id() : Long
      {
         return this.modelId;
      }
   }
}

